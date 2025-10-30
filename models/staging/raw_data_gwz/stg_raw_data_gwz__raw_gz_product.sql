with 

source as (

    select * from {{ source('raw_data_gwz', 'raw_gz_product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS FLOAT64) as purchase_price

    from source

)

select * from renamed