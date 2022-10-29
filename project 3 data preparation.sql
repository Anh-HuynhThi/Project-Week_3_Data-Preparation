SELECT * FROM primary_education.`primary output`;
select `Countries and areas`, lower(`Income Group`) from `primary output`;
-- CREATE A TABLE
create table Countries(
Countries_areas varchar(32), 
income varchar(32), 
region varchar(32), 
subRegion varchar(32)) as 
select `Countries and areas` as Countries_areas,
lower(`Income Group`) as income,
Region as region,
`Sub-region` as subRegion from `primary output`;
select * from countries;
-- USING GROUP BY
select Region, avg(Total), sum(`Wealth quintile Poorest`) from `primary output` group by Region;

-- USING MAX AND MIN
select `Income Group`,max(`Wealth quintile Poorest`), min(`Wealth quintile Richest`) from `primary output` group by `Income Group`;
