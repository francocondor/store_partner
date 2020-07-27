/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP PROCEDURE IF EXISTS `PA_productSearchPostpago`;

DELIMITER ;;
CREATE PROCEDURE `PA_productSearchPostpago`(
  IN product_categories VARCHAR(200),
  IN product_brands VARCHAR(200),
  IN affiliation_id INT,
  IN plan_id INT,
  IN contract_id INT,
  IN product_price_ini DECIMAL(6,2),
  IN product_price_end DECIMAL(6,2),
  IN product_string_search VARCHAR(255),
  IN pag_total_by_page INT,
  IN pag_actual INT,
  IN sort_by VARCHAR(50),
  IN sort_direction VARCHAR(5),
  IN product_tag VARCHAR(255),
  IN product_ignore_ids VARCHAR(50),
  IN only_best_variation INT
)
BEGIN

  DECLARE pag_ini INT;
  DECLARE pag_end INT;
  DECLARE variation_type_id INT;
  DECLARE stored_query TEXT;
  DECLARE cad_condition TEXT;
  DECLARE cad_order TEXT;
  DECLARE cad_order_comma VARCHAR(2);
  DECLARE select_segment TEXT;
  DECLARE select_idpromo_segment TEXT;
  DECLARE join_segment TEXT;

  SET variation_type_id = 2;
  SET cad_condition = "";
  SET cad_order = " ";
  SET cad_order_comma = " ";

  SET product_price_ini = IFNULL(product_price_ini, -1);
  SET product_price_end = IFNULL(product_price_end, -1);
  SET product_brands = IFNULL(product_brands, '');
  SET product_categories = IFNULL(product_categories, '');
  SET plan_id = IFNULL(plan_id, 7);
  SET affiliation_id = IFNULL(affiliation_id, 1);
  SET contract_id = IFNULL(contract_id, 1);
  SET pag_actual = IFNULL(pag_actual, 0);
  SET pag_total_by_page = IFNULL(pag_total_by_page, 8);
  SET product_string_search = IFNULL(product_string_search, '');
  SET sort_by = IFNULL(sort_by, '');
  SET sort_direction = IFNULL(sort_direction, '');
  SET product_tag = IFNULL(product_tag, '');
  SET product_ignore_ids = IFNULL(product_ignore_ids, '');

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

  IF (product_categories <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.category_id IN (', product_categories, ')');
  END IF;

  IF (plan_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.plan_id = ', plan_id);
  END IF;

  IF (affiliation_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.affiliation_id = ', affiliation_id);
  END IF;

  IF (contract_id > 0) THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD_VAR.contract_id = ', contract_id);
  END IF;

  IF (product_tag <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_tag IN (', product_tag, ')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  IF (product_ignore_ids <> '') THEN
    SET cad_condition = CONCAT(cad_condition, ' AND PRD.product_id NOT IN (', product_ignore_ids,')');
    SET cad_condition = CONCAT(cad_condition, ' AND STM.stock_model_id IS NOT NULL');
  END IF;

  SET pag_ini = (pag_actual - 1) * pag_total_by_page;

  SET pag_end = pag_actual * pag_total_by_page;

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
          AND PRMsub.`product_variation_id` IS NULL
          AND
          (
            (
              PRMsub.`allowed_variation_type_id` IS NOT NULL
              AND PRMsub.`allowed_variation_type_id` = ',
                                      variation_type_id, '
            )
            OR
            (
              PRMsub.`allowed_variation_type_id` IS NULL
            )
          )
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
  SET select_segment = 'SELECT
    DISTINCT(PRD.`product_id`), PRD.*, PRD.`product_image_url` AS picture_url, PRD_VAR.`product_variation_id`, PRD_VAR.`product_variation_price` as product_price,
    PRM.promo_id, PRM.promo_price, PRM.promo_discount, PRM.promo_add_product_price, PRM.promo_add_product_discount, PRM.promo_title, PRM.promo_description, PRM.`publish_at`,
    STM.`stock_model_id`,
    PLN.`plan_id`, PLN.`plan_name`,
    PLN.`plan_price`, PLN.`plan_slug`,
    AFF.`affiliation_name`, AFF.`affiliation_slug`,
    CTR.`contract_name`, CTR.`contract_slug`, CTR.`contract_id`,
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
    -- Filter by affiliation
    INNER JOIN tbl_affiliation as AFF
      ON AFF.`affiliation_id` = PRD_VAR.`affiliation_id`
    -- Filter by plan
    INNER JOIN tbl_plan as PLN
      ON PLN.`plan_id` = PRD_VAR.`plan_id`
    -- Filter by contract
    INNER JOIN tbl_contract as CTR
      ON CTR.`contract_id` = PRD_VAR.`contract_id`
    -- Check stock models
    LEFT JOIN (
      SELECT stock_model_id, product_id
      FROM tbl_stock_model
      WHERE active = 1
    ) as STM
      ON PRD.`product_id` = STM.`product_id`
    -- Check promos
    LEFT JOIN tbl_promo as PRM
      ON (PRD.`product_id` = PRM.`product_id`
          AND IF((', select_idpromo_segment, ') IS NOT NULL, PRM.promo_id = (', select_idpromo_segment, '), PRM.promo_id = 0)
      )');

  IF product_string_search <> ''  THEN

    SET stored_query = CONCAT(select_segment, '
      MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`, PRD.`product_description_postpaid`) AGAINST(''',product_string_search,''') as pscore,
      MATCH(BRN.`brand_name`) AGAINST(''',product_string_search,''') as mscore',
                              join_segment, '
      -- Filter by search words
      WHERE PRD.`active` = 1
        AND PRD_VAR.`active` = 1
        AND PLN.`active` = 1
        AND (MATCH(PRD.`product_model`, PRD.`product_keywords`, PRD.`product_description`, PRD.`product_description_postpaid`) AGAINST(''',product_string_search,''')
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
      WHERE PRD.`active` = 1
	AND PLN.`active` = 1
        AND PRD_VAR.`active` = 1');

    IF only_best_variation > 0 THEN
      SET stored_query = CONCAT(stored_query, ' AND PRD_VAR.`best_variation` = 1');
    END IF;

    SET cad_order = ' ORDER BY ';
    SET cad_order_comma = '';
  END IF;

  SET cad_order = CONCAT(cad_order, cad_order_comma, '
  ISNULL(STM.`stock_model_id`),
  PRD.`product_priority` DESC,
  PRD_VAR.`product_variation_price` ASC,
  ISNULL(PRM.`publish_at`),
  PRM.`publish_at` DESC,
  ISNULL(PRD.`product_tag`),
  PRD.`publish_at` DESC');

  SET cad_condition = CONCAT(cad_condition, '
    AND PRD_VAR.`variation_type_id` = ',variation_type_id,'
    GROUP BY PRD.product_id
    ');

  IF (sort_by <> '') THEN
    SET cad_order = CONCAT(cad_order, ', PRD.', sort_by);
    IF(sort_direction IN ('ASC','DESC')) THEN
      SET cad_order = CONCAT(cad_order, " ", sort_direction);
    END IF;
  ELSE
    SET cad_order = '';
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
END ;;
DELIMITER ;
