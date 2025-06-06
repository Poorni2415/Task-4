SELECT * FROM sale_report;
select SKU_Code, Stock,Category,Color from sale_report  where Stock>10;
select SKU_Code, Stock,Category,Color from sale_report order by Color;
select Color,sum(Stock) as stock_sum from sale_report group by color order by stock_sum desc;

select * from sale_report where Category  NOT IN
(select Category from sale_report where Category = "AN:LEGGINGS") and
 Size NOT IN(select Size from sale_report where Size = "XXL");
 
 select * from sale_report where Category  <> "AN:LEGGINGS" and Stock <10;

 select s.Category,s.Size,s.Color,
 a.Date,a.Status,a.Fulfilment,a.Qty,a.Amount,a.ship_City,a.ship_State,a.ship_postal_code,a.ship_Country
 from sale_report s join amazon a on s.SKU_Code = a.SKU;

 select s.Category,s.Size,s.Color,
 a.Date,a.Status,a.Fulfilment,a.Qty,a.Amount,a.ship_City,a.ship_State,a.ship_postal_code,a.ship_Country
 from sale_report s left join amazon a on s.SKU_Code = a.SKU;
 
  select s.Category,s.Size,s.Color,
 a.Date,a.Status,a.Fulfilment,a.Qty,a.Amount,a.ship_City,a.ship_State,a.ship_postal_code,a.ship_Country
 from sale_report s right join amazon a on s.SKU_Code = a.SKU;
 
 create view size as select * from sale_report where Color = "red";
 
 select * from size;
 
 create INDEX indsize on sale_report(Size(4));
 select * from sale_report where Size="XL";
 
 EXPLAIN SELECT * FROM sale_report WHERE Size = 'XL';
 
 
