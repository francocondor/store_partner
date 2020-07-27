DELIMITER $$

USE `bitel_ecommerce`$$

DROP PROCEDURE IF EXISTS `PA_INS_storeOrder`$$

CREATE PROCEDURE `PA_INS_storeOrder`(
  IN order_id INT,
  IN idtype_id INT,
  IN payment_method_id INT,
  IN branch_id INT,
  IN tracking_code VARCHAR(50),
  IN first_name VARCHAR(150),
  IN last_name VARCHAR(100),
  IN id_number VARCHAR(20),
  IN billing_district INT,
  IN billing_phone VARCHAR(20),
  IN source_operator VARCHAR(45),
  IN porting_phone VARCHAR(45),
  IN delivery_address VARCHAR(150),
  IN delivery_district INT,
  IN contact_email VARCHAR(150),
  IN contact_phone VARCHAR(20),
  IN service_type VARCHAR(150),
  IN affiliation_type VARCHAR(150),
  IN type_number_carry VARCHAR(8),
  IN porting_request_id VARCHAR(20),
  IN credit_status VARCHAR(100),
  IN total DECIMAL(6,2),
  IN total_igv DECIMAL(6,2),
  IN terminos_condiciones TINYINT(1),
  IN idschedule_id INT(11)
)
BEGIN
  DECLARE stored_query TEXT;
  SET last_name = IFNULL(last_name, '');
  SET billing_district = IFNULL(billing_district, 0); 
  SET billing_phone = IFNULL(billing_phone, ''); 
  SET source_operator = IFNULL(source_operator, '');
  SET porting_phone = IFNULL(porting_phone, '');
  SET affiliation_type = IFNULL(affiliation_type, '');
  SET service_type = IFNULL(service_type, '');
  SET porting_request_id = IFNULL(porting_request_id, ''); 
  SET stored_query = CONCAT(" 
      INSERT INTO tbl_order
      (
        order_id,
        idtype_id,
        payment_method_id,
        branch_id,
        tracking_code,
        first_name,
        last_name,
        id_number,
        billing_district,
        billing_phone,
        source_operator,
        porting_phone,
        delivery_address,
        delivery_district,
        contact_email,
        contact_phone,
        service_type,
        affiliation_type,
        type_number_carry,
        porting_request_id,
        credit_status,
        total,
        total_igv,
        terminos_condiciones,
        idschedule_id
      ) values 
      ( ",
        order_id, " , " ,
        idtype_id, " , " ,
        payment_method_id, " , " ,
        branch_id, " , " ,
        "'", tracking_code, "' , " ,
        "'", first_name, "' , " ,
        "'", last_name, "' , " ,
        "'", id_number, "' , " ,
        billing_district, " , " ,
        "'", billing_phone, "' , " ,
        "'", source_operator, "' , " ,
        "'", porting_phone, "' , " ,
        "'", delivery_address, "' , " ,
        delivery_district, " , " ,
        "'", contact_email, "' , " ,
        "'", contact_phone, "' , " ,
        "'", service_type, "' , " ,
        "'", affiliation_type, "' , " ,
        "'", type_number_carry, "' , " ,
        "'", porting_request_id, "' , " ,
        "'", credit_status, "' , " ,
        total, " , " ,
        total_igv, " , " ,
        terminos_condiciones, " , " ,
        idschedule_id, " ) ");
  -- Executing query
  SET @consulta = stored_query;
  -- select @consulta;
  PREPARE exec_strquery FROM @consulta;
  EXECUTE exec_strquery;
END$$

DELIMITER ;