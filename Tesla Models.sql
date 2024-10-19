#Tesla just provided their quarterly sales for their major vehicles.

#Determine which Tesla Model has made the most profit.

#Include all columns with the "profit" column at the end.

SELECT tesla_model,car_price,cars_sold,production_cost, ((car_price-production_cost)*cars_sold) AS profit 
FROM tesla_models 
ORDER BY ((car_price-production_cost)*cars_sold) DESC
LIMIT 1;
