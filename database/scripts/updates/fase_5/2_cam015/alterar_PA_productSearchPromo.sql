DROP PROCEDURE IF EXISTS PA_productSearchPromo;
DELIMITER ;;
CREATE PROCEDURE `PA_productSearchPromo`(
  IN variation_type_id INT,
  IN plan_pre_id INT,
  IN plan_post_id INT,
  IN affiliation_id INT,
  IN contract_id INT,
  IN product_brands VARCHAR(200),
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN pag_total_by_page INT,
  IN pag_actual INT,
  IN sort_by VARCHAR(50),
  IN sort_direction VARCHAR(5)
)
BEGIN

  DECLARE pag_ini INT;
  DECLARE pag_end INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE cad_order TEXT;
  DECLARE cad_order_comma VARCHAR(2);
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;
  DECLARE cond_variations TEXT;

  SET cad_condition = "";
  SET cad_order = " ";
  SET cad_order_comma = " ";

  SET variation_type_id = IFNULL(variation_type_id, -1);
  SET plan_pre_id = IFNULL(plan_pre_id, -1);
  SET plan_post_id = IFNULL(plan_post_id, -1);
  SET affiliation_id = IFNULL(affiliation_id, -1);
  SET contract_id = IFNULL(contract_id, -1);
  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET pag_actual = IFNULL(pag_actual, 0);
  SET pag_total_by_page = IFNULL(pag_total_by_page, 12);
  SET product_string_search = IFNULL(product_string_search, '');
  SET sort_by = IFNULL(sort_by, '');
  SET sort_direction = IFNULL(sort_direction, '');


  IF (variation_type_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` IS NOT NULL');
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` = ', variation_type_id);
  END IF;

  IF (pag_actual < 1) THEN
    SET pag_actual = 1;
  END IF;

  IF (product_price_ini > 0 AND product_price_end > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND (IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) BETWEEN ',(product_price_ini - 0.5),' AND ', (product_price_end + 0.5) , ') ');
  END IF;
  IF (product_price_ini > 0 AND product_price_end < 1) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) >= ',product_price_ini);
  END IF;
  IF (product_price_ini < 1 AND product_price_end > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)) <= ',product_price_end);
  END IF;

  IF (product_brands <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.brand_id IN (', product_brands,')');
  END IF;


  SET pag_ini = (pag_actual - 1) * pag_total_by_page;

  SET pag_end = pag_actual * pag_total_by_page;

  IF (plan_pre_id > 0 AND plan_post_id > 0 AND affiliation_id > 0 AND contract_id > 0) THEN
    SET cond_variations = CONCAT('
      AND PRMsub.`product_variation_id` IS NULL
      AND
      (
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 1
          AND PRD_VAR.`variation_type_id` = 1
          AND PRD_VAR.`plan_id` = ', plan_pre_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 2
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`plan_id` = ', plan_post_id, '
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
          AND PRD_VAR.`contract_id` = ', contract_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 1
          AND PRD_VAR.`plan_id` = ', plan_pre_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`plan_id` = ', plan_post_id, '
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
          AND PRD_VAR.`contract_id` = ', contract_id, '
        )
      )
    ');
  ELSE
    IF (affiliation_id > 0) THEN
      SET cond_variations = CONCAT('
      AND PRMsub.`product_variation_id` IS NULL
      AND
      (
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 1
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 2
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 2
          AND PRD_VAR.`affiliation_id` = ', affiliation_id, '
        )
      )
    ');
    ELSE
      SET cond_variations = '
      AND PRMsub.`product_variation_id` IS NULL
      AND
      (
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 1
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NOT NULL
          AND PRMsub.`allowed_variation_type_id` = 2
          AND PRD_VAR.`variation_type_id` = 2
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 1
        )
        OR
        (
          PRMsub.`allowed_variation_type_id` IS NULL
          AND PRD_VAR.`variation_type_id` = 2
        )
      )
    ';
    END IF;    
  END IF;

  IF (affiliation_id > 0) THEN
      SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          ', cond_variations, '
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
          AND PRD_VAR.`affiliation_id`= ', affiliation_id, '
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  ELSE
      SET select_idpromo_segment = CONCAT('
    SELECT
      PRMsub.promo_id
    FROM
      tbl_promo as PRMsub
    WHERE
      PRMsub.product_id = PRD.product_id
      AND PRMsub.active = 1
      AND
      (
        (
          PRMsub.allow_all_variations = 1
          ', cond_variations, '
        )
        OR
        (
          PRMsub.allow_all_variations = 0
          AND PRMsub.`product_variation_id` IS NOT NULL
          AND PRMsub.`product_variation_id` = PRD_VAR.`product_variation_id`
        )
      )
    ORDER BY PRMsub.product_variation_id desc -- priority for product variation defined
    LIMIT 0,1
  ');
  END IF; 
  

  SET select_segment = 'SELECT
    PRM.*, PRD.*, PRD_VAR.*,
    PRD.`product_image_url` AS picture_url,
    STM.`stock_model_id`,
    PLN.`plan_id`, PLN.`plan_name`,
    PLN.`plan_price`, PLN.`plan_slug`,
    AFF.`affiliation_name`, AFF.`affiliation_slug`,
    CTR.`contract_name`, CTR.`contract_slug`,
    BRN.`brand_name`, BRN.`brand_slug`,
    ROUND(IF(PRM.promo_discount IS NOT NULL, IFNULL(PRM.promo_price,((1-PRM.promo_discount) * PRD_VAR.product_variation_price)), IFNULL(PRM.promo_price,product_variation_price)),2) as promo_price,';

  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    LEFT JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    LEFT JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    -- Check stock models
    LEFT JOIN tbl_stock_model as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');


  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment, '
      MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''') as pscore,
      MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''') as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR PRD.product_model like ''%',product_string_search,'%''
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');

    SET cad_order = ' ORDER BY (mscore + pscore) DESC';
    SET cad_order_comma = ', ';
  ELSE

    SET stored_query = CONCAT(select_segment, '
      1 as pscore, 1 as mscore',
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1');

    SET cad_order = ' ORDER BY ';
    SET cad_order_comma = '';
  END IF;

  SET cad_order = CONCAT(cad_order, cad_order_comma, '
    PRD.`product_priority` DESC,
    PRM.`publish_at` DESC,
    ISNULL(PRD.`product_tag`),
    PRD.`publish_at` DESC');

  SET cad_condition = CONCAT(cad_condition, '
    AND STM.`stock_model_id` IS NOT NULL
    AND PRM.`promo_id` IS NOT NULL
    AND PRM.`publish_at` IS NOT NULL
    GROUP BY PRM.`promo_id`');


  IF (sort_by <> '') THEN
    SET cad_order = CONCAT(cad_order, ',', 'PRM.', sort_by);
    IF(sort_direction IN ('ASC','DESC')) THEN
      SET cad_order = CONCAT(cad_order, " ", sort_direction);
    END IF;
  END IF;


  SET stored_query = CONCAT(stored_query, cad_condition, cad_order);


  IF (pag_ini > 0 AND pag_total_by_page > 0) THEN
    SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_ini,',', pag_total_by_page);
  ELSE
    IF (pag_total_by_page > 0) THEN
      SET stored_query = CONCAT(stored_query, ' LIMIT ',pag_total_by_page);
    END IF;
  END IF;

  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END;;
DELIMITER ;