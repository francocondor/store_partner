ALTER TABLE `tbl_product` ADD FULLTEXT KEY `indx_srchproduct2` (`product_model`,`product_keywords`,`product_description`, `product_description_postpaid`);