The project involves creating a pizza inventory management system using a PostgreSQL database. The client has provided the following requirements:

1. Stock control requirements:
   - Determine when it's time to order new stock
   - Gather information about:
     - Ingredients that go into each pizza
     - Quantity of ingredients based on pizza size
     - Existing stock levels
   - Assume the same lead time for delivery by suppliers for all ingredients

2. Staff data requirements:
   - Identify which staff members are working when
   - Calculate the cost of each pizza based on ingredients, chef salaries, and delivery costs

3. Project dataset:
   - The database consists of 10 tables: address, customers, Ingredients, Inventory, Item, orders, Recipe, rota, shift, and staff

4. Dashboard 1 - Order activity:
   - Display total orders, total sales, total items, average order value
   - Show sales by category and top-selling items
   - Provide insights into orders by hour, address, delivery, and pickup

5. Dashboard 2 - Inventory Management:
   - Calculate the total quantity and cost of ingredients used
   - Determine the cost of making each pizza based on ingredient costs
   - Monitor the percentage of stock remaining for each ingredient

To fulfill these requirements, the project involves:

1. Creating the PostgreSQL database with the specified tables
2. Inserting data into the tables using SQL INSERT statements
3. Querying the data to generate the required information for the dashboards
4. Developing the dashboards based on the queried data

The project aims to provide the client with a comprehensive pizza inventory management system that helps control stock levels, track orders, and manage costs effectively.
