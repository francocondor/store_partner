<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductApi extends Model
{
    protected $table = 'tbl_product';

    protected $primaryKey = 'product_id';

    protected $visible = [
        'product_id',
        'product_category',
        'brand_id',
        'product_model',
        'product_image_url',
        'product_keywords',        
        'product_price',
        'product_description',
        'product_general_specifications',
        'product_data_sheet',
        'product_external_memory',
        'product_internal_memory',
        'product_screen_size',
        'product_camera_1',
        'product_camera_2',
        'product_camera_3',
        'product_camera_4',
        'product_processor_name',
        'product_processor_power',
        'product_processor_cores',
        'product_band',
        'product_radio',
        'product_wlan',
        'product_bluetooth',
        'product_os',
        'product_gps',
        'product_battery',
        'product_slug',
        'product_tag',
        'product_priority',
        'product_sentinel',
        'created_at',
        'updated_at',
        'deleted_at',
        'publish_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'publish_by',
        'active',
        'product_description_postpaid'    
    ];
}
