<!-- Point of Sale
Make a point of sale (POS) system for an antique store where each product is one of a kind. This will be the app that the cashier uses on their machine to ring up the products a customer is purchasing.

As a store manager, I want to add a new product to the POS, so that I can keep track of our inventory. Note: Do not worry about number formatting of the prices for now. For example, if 3.70 is used, it will come out of the database as 3.7. After the completion of the rest of the user stories, you can come back to formatting the price, if you wish.
As a store manager, I want to edit or delete a product from the POS, so that I can change its description or price, or not list it if someone buys it.
As a cashier, I want to choose which products a customer is purchasing, so that I can see what their total cost is. Hint: Make a Purchase class. A purchase has many unique products. When you create a purchase, give the user a list of the products and checkboxes to choose which the customer is buying. After the purchase has been created, display the list of products and their total cost. Assume that when a customer buys a product, it can't be purchased by a different customer.
As a store manager, I want to see the total amount of sales for a date range of my choosing, so that I can keep track of how much money I am making. Hint: Create one route for generating the report, where the user can input the dates, and another route for viewing the report based on the dates. Use a scope so that you can call something like Purchase.between(start_date, end_date), where start_date and end_date are set from the parameters in the form.
Further Exploration
Here are some additional user stories to explore:

As a customer, I want to be able to return items, so that I can bring back things I don't want.
Now let's change this antique store into a big box store. Many different customers can purchase many different products. Sally can buy butter and eggs and John can also buy butter and eggs.
As a manager, I want to be able to see which items have been returned the most, so I can check on the quality of my stock.
As a manager, I want to be able to see which products are popular, so I can make sure to always have them in stock. -->