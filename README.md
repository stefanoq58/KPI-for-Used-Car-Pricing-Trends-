# KPI-for-Used-Car-Pricing-Trends

## Overview
The objective of this project was to analyze key factors influencing the pricing of used cars in the secondhand vehicle market. Using a Kaggle dataset of car listings (https://www.kaggle.com/datasets/therohithanand/used-car-price-prediction/data) and leveraging SQL Server Management Studio (SSMS) and Power BI, the project investigates how various variables—such as car age, mileage, brand, fuel type, ownership history, and accident reports—affect resale value.

Data preprocessing and querying were conducted in SSMS to compute critical indicators like average price by category, followed by the development of an interactive Power BI dashboard that visualizes patterns, comparisons, and outliers across different car attributes.

---

## Objectives
- Explore price variations across car brands and models
-  Analyze the impact of car age and mileage on resale price
-  Investigate how ownership count and accident history influence price
-  Compare fuel types and transmission effects on average prices
-  Build a Power BI dashboard to visualize pricing KPIs and category-based trends

---

## Tools & Technologies
- **Kaggle** — sourced the used car price dataset (raw CSV files containing variables such as price, mileage, brand, owner count, fuel type, etc.)
- **Excel** - utilized for initial observation and data cleaning (correction of NULL values, and incorrect data types)
- **SQL Server Management Studio (SSMS)**:
   - Imported and cleaned raw data
   - Created CTEs to categorize mileage and car age
   - Calculated average prices based on categorical groupings (e.g., by brand, owner count, accidents)
   - Applied aggregation, filtering, and ranking queries for analytical segmentation
- **Power BI:**
   - Developed KPIs to showcase average and median prices
   - Built visuals such as bar charts, scatter plots, and donut charts to illustrate relationships between features and pricing
   - Applied filters and slicers for interactive exploration of vehicle categories (e.g., low vs. high mileage)

 ---

 ## Key Insights
- Brand Influence: Certain brands consistently command higher average prices, suggesting stronger resale value and market demand.
- Car Age and Mileage: Older cars and those with higher mileage exhibit predictable price depreciation trends.
- Ownership and Accidents: Listings with multiple owners or reported accidents generally result in lower average prices, signaling reduced buyer confidence.
- Transmission and Fuel Type: Automatic vehicles and petrol-based cars show noticeable pricing differences, with variations based on consumer preference and fuel economy.
- Multi-Factor Analysis: Combined influence of ownership, accident history, transmission type, and fuel type reveals nuanced pricing clusters valuable for dealerships and buyers alike.

---

## Visual Dashboard Preview
![kpi used car pricing trends](https://github.com/user-attachments/assets/8264eeaa-beca-4d90-b596-9bb822600b98)


 
