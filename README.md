# KPI for Used Car Pricing Trends

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
Based on 8,994 used‑car listings, the analysis reveals several meaningful pricing and market behavior patterns:
1. Average used‑car prices vary significantly by fuel type
   - Electric vehicles command the highest average price at 9,849, well above diesel and petrol cars.
   - Diesel and petrol vehicles show similar pricing levels, both averaging around 6,900–7,000, indicating a more competitive and saturated market.
2. Owner count strongly influences resale value
   - Cars with fewer previous owners consistently sell for more.
   - Average price drops steadily from ~8K for 1‑owner cars to ~6K for 5‑owner cars, showing a clear depreciation trend tied to ownership history.
3. Newer vehicles predictably achieve higher prices
   - Average price increases sharply for cars manufactured after 2010, peaking around 2015–2020.
   - Older models (1995–2005) show significantly lower average prices, reflecting age‑based depreciation.
4. Brand pricing is relatively balanced across major manufacturers
   - Brands such as BMW, Volkswagen, Honda, Toyota, Hyundai, Kia, and Ford all cluster around 7.1K–7.3K average price.
   - This suggests a competitive market with no extreme outliers among mainstream brands.
5. Mileage is a major driver of price differences
   - Cars with more than 30k miles average around 8K, while low‑mileage vehicles (<10k miles) average closer to 5.5K.
   - This confirms mileage as one of the strongest predictors of resale value.
6. Engine size correlates with higher pricing
   - Larger engines (e.g., 4000cc) reach average prices above 11K, while smaller engines (1000–1500cc) fall between 4.9K–6K.
   - This reflects consumer preference for performance‑oriented vehicles and the higher cost of larger‑engine models.


---

## Visual Dashboard Preview
![kpi used car pricing trends](https://github.com/user-attachments/assets/8264eeaa-beca-4d90-b596-9bb822600b98)


 
