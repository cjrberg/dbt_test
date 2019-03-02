
-- Welcome to your first dbt model!
-- Did you know that you can also configure models directly within
-- the SQL file? This will override configurations stated in dbt_project.yml

-- Try changing 'view' to 'table', then re-running dbt
{{ config(materialized='table') }}


select c.*,city.city from public.customer c INNER JOIN public.address a ON c.address_id=a.address_id INNER JOIN city ON city.city_id=a.city_id
