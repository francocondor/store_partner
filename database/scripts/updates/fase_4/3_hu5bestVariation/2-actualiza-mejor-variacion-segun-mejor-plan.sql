create temporary table  variaciones_candidatas
	select
			tbl.product_variation_id
		from
			tbl_product_variation as tbl
		where active = 1
		and best_plan = 1
		and deleted_by is null
		group by product_id
		order by product_id;

update tbl_product_variation
	set best_variation = 1
	where product_variation_id in (select * from variaciones_candidatas);

DROP TEMPORARY TABLE variaciones_candidatas;