# measures

1. Total Orders = DISTINCTCOUNT(cleaned_orders[order_id])

2. Total Revenue = sum(cleaned_items[price])

3. Total Freight Charges = sum(cleaned_items[freight_value])

4. Total Customers = DISTINCTCOUNT(cleaned_orders[customer_id])

5. Average Delivery Days = AVERAGEX(cleaned_orders,DATEDIFF(cleaned_orders[order_approved_at],cleaned_orders[order_delivered_customer_date],DAY))

6. Average Order Value = DIVIDE([Total Revenue],[Total Orders],0)

7. Late Deliveries = CALCULATE([Total Orders],cleaned_orders[order_delivered_customer_date]>cleaned_orders[order_estimated_delivery_date])

8. On-Time% = DIVIDE([Total Orders]-[Late Deliveries],[Total Orders],0)

# new column

1. Order Year = YEAR(cleaned_orders[order_purchase_timestamp])

2. Order Month = FORMAT(cleaned_orders[order_purchase_timestamp],"MMM")

3. Month Number = MONTH(cleaned_orders[order_purchase_timestamp])
