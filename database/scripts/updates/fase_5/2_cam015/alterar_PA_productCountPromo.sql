DROP PROCEDURE IF EXISTS PA_productCountPromo;
DELIMITER ;;
CREATE PROCEDURE `PA_productCountPromo`(
  IN variation_type_id INT,
  IN plan_pre_id INT,
  IN plan_post_id INT,
  IN affiliation_id INT,
  IN contract_id INT,
  IN product_brands VARCHAR(200),
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255)
)
BEGIN

  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;
  DECLARE cond_variations TEXT;

  SET cad_condition = "";

  SET variation_type_id = IFNULL(variation_type_id, -1);
  SET plan_pre_id = IFNULL(plan_pre_id, -1);
  SET plan_post_id = IFNULL(plan_post_id, -1);
  SET affiliation_id = IFNULL(affiliation_id, -1);
  SET contract_id = IFNULL(contract_id, -1);
  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET product_string_search = IFNULL(product_string_search, '');


  IF (variation_type_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` IS NOT NULL');
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.`variation_type_id` = ', variation_type_id);
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

  SET select_segment = 'SELECT COUNT(PRM.promo_id) as total_promos';

  SET join_segment = CONCAT('
    FROM tbl_product as PRD
    -- Filter by brand
    INNER JOIN tbl_brand as BRN
      ON PRD.`brand_id` = BRN.`brand_id`
    -- Get product variations
    LEFT JOIN tbl_product_variation as PRD_VAR
      ON PRD.`product_id` = PRD_VAR.`product_id`
    INNER JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    INNER JOIN tbl_contract as CTR
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

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`) AGAINST(''',product_string_search,''')
        OR MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''')
        OR BRN.`brand_name` like ''%',product_string_search,'%''  )
    ');
  ELSE

    SET stored_query = CONCAT(select_segment,
      join_segment, '
      -- Filter by search words
      WHERE PRM.`active` = 1
        AND PRD.`active` = 1
        AND PRD_VAR.`active` = 1');
  END IF;

  IF (plan_pre_id > 0 AND plan_post_id > 0 AND affiliation_id > 0 AND contract_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, '
      AND STM.`stock_model_id` IS NOT NULL
      AND PRM.`promo_id` IS NOT NULL
      AND PRM.`publish_at` IS NOT NULL

      GROUP BY PRM.`promo_id`');
  ELSE
    SET cad_condition = CONCAT(cad_condition, '
      AND STM.`stock_model_id` IS NOT NULL
      AND PRM.`promo_id` IS NOT NULL
      AND PRM.`publish_at` IS NOT NULL

      GROUP BY PRM.`promo_id`');
  END IF;


  SET stored_query = CONCAT('select count(*) as total_promos from (',stored_query, cad_condition, ') as t');


  SET @consulta = stored_query;

  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;

END;;
DELIMITER ; 