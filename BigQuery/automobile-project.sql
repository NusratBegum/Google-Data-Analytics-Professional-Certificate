--identify unique fuel type--
select distinct fuel_type
from `auto_mobile_data.auto_mobile_dummy`
limit 1000;
--inspect the length column--

Select Min(length) as min_length,
max(length) as max_length
from `auto_mobile_data.auto_mobile_dummy`;

--fill the missing data--
select *
from `auto_mobile_data.auto_mobile_dummy`
where num_of_doors is null;

--identify potential errors--
select distinct num_of_cylinders
from `auto_mobile_data.auto_mobile_dummy`;

--to correct the misspelling rows--
update `auto_mobile_data.auto_mobile_dummy`
set num_of_cylinders = "two"
where num_of_cylinders ="tow";

--to check the queries--
select distinct num_of_cylinders
from `auto_mobile_data.auto_mobile_dummy`;

--to correct and check the compression ratio--
select min(compression_ratio) as min_c,
max(compression_ratio) as max_c
from `auto_mobile_data.auto_mobile_dummy`
where compression_ratio<>70;

select count(*) as num_of_rows_to_delete
from `auto_mobile_data.auto_mobile_dummy`
where compression_ratio =70;

--to remove extraa space and check the queries:--
select distinct drive_wheels,
length(drive_wheels) as string_length
from `auto_mobile_data.auto_mobile_dummy`;

update `auto_mobile_data.auto_mobile_dummy`
set drive_wheels =trim(drive_wheels)
where true;



