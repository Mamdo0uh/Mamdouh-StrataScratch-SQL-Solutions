select FORMAT(shipment_date, 'yyyy-MM') ,count(shipment_id) as count
from amazon_shipment
group by FORMAT(shipment_date, 'yyyy-MM')
 
