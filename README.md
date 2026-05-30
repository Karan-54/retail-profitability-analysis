# 🛒 Retail Profitability & Cost Optimization Analysis

![Project Level](https://img.shields.io/badge/Level-Intermediate-blue)
![Tools](https://img.shields.io/badge/Tools-SQL%20%7C%20Python%20%7C%20Excel%20%7C%20Power%20BI-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 📌 Project Overview

This end-to-end retail business analytics project analyzes **sales performance, profitability, discount impact, customer behavior, shipping operations, and regional performance** using a real-world retail dataset of 10,194 transactions across 804 unique customers.

The project demonstrates a complete data analyst workflow — from raw data cleaning in Excel, through SQL-based business querying in PostgreSQL, Python EDA with visualizations, to an interactive Power BI dashboard — producing actionable business insights for stakeholders.

---

## 🎯 Business Objectives

- Identify top-performing and loss-making products to guide SKU rationalization
- Analyze category and regional profitability to optimize resource allocation
- Quantify the impact of discounting on profit margins
- Uncover seasonal sales trends to improve demand forecasting
- Evaluate shipping mode efficiency and operational cost distribution
- Build a stakeholder-ready Power BI dashboard for executive reporting

---

## 📁 Project Structure

```
Retail-Profitability Analysis/
│
├── dataset/
│   ├── retail_cleaned_data.csv       # Cleaned dataset (10,194 records)
│   └── samplesuperstore.csv          # Original raw source data
│
├── sql/
│   └── queries.sql                   # All business analysis SQL queries
│
├── python/
│   └── retail_analysis.ipynb         # EDA, visualizations & insights notebook
│
├── powerbi/
│   ├── Retail Profitability & Cost Optimization Dashboard.pbix
│   ├── Retail Profitability & Cost Optimization Analysis.pdf
│   ├── Cost Optimization Dashboard.pdf
│   └── Retail Sales Performance Analytics Dashboard.pdf
│
├── images/                           # All chart exports from Python
│   ├── sales_by_category.png
│   ├── profit_by_category.png
│   ├── monthly_sales_trend.png
│   ├── discount_vs_profit.png
│   ├── correlation_heatmap.png
│   ├── top_10_products.png
│   ├── top_loss_making_products.png
│   ├── profit_by_region.png
│   ├── shipping_mode_distribution.png
│   ├── profit_margin_distribution.png
│   ├── Executive_overview.png
│   └── cost_optimization.png
│
└── README.md
```

---

## 🗄️ Dataset Details

| Field | Description |
|---|---|
| **Source** | Sample Superstore Retail Dataset |
| **Records** | 10,194 transactions |
| **Customers** | 804 unique customers |
| **Period** | Multi-year order history |
| **Categories** | Technology, Furniture, Office Supplies |
| **Regions** | West, East, South, Central |

**Key Columns:** `order_id`, `order_date`, `ship_date`, `shipping_days`, `ship_mode`, `customer_id`, `segment`, `region`, `category`, `sub_category`, `product_name`, `sales`, `quantity`, `discount`, `profit`, `profit_margin`

---

## 🧹 Data Cleaning (Excel)

The raw dataset was cleaned in Excel before importing into PostgreSQL:

- Removed duplicate records and blank/null values
- Fixed date formatting to `YYYY-MM-DD` standard
- Converted percentage columns to numeric values
- Standardized all column names for SQL compatibility
- Created calculated columns: **Shipping Days**, **Profit Margin**, **Order Month**, **Order Year**

---

## 🗃️ SQL Analysis (PostgreSQL)

All business questions were answered using structured SQL queries. Key analyses include:

| Query | Business Question |
|---|---|
| Unique Customers | How large is the active customer base? |
| Sales by Category | Which categories drive the most revenue? |
| Total Sales & Profit | What is the overall financial performance? |
| Top 5 Best-Selling Products | Which products lead in revenue? |
| Loss-Making Products | Which SKUs are destroying profit? |
| Most Profitable Products | Which products deliver the highest margins? |
| Regional Performance | Which regions are most and least profitable? |
| Shipping Mode Analysis | How are orders distributed across fulfillment tiers? |

---

## 🐍 Python EDA (Jupyter Notebook)

Exploratory Data Analysis was conducted using **Pandas, Matplotlib, and Seaborn**, producing 11 key analytical outputs:

### 📊 Analysis Summary & Insights

**Total Sales & Profit**
The business generated $2.33M in revenue with $292K net profit (12.6% margin). Loss-making products and excessive discounting are suppressing what should be a stronger profitability position.

**Sales by Category**
Technology, Furniture, and Office Supplies each contribute roughly equal revenue (~$730K–$840K), creating a misleading picture of balanced performance — profitability varies dramatically beneath the surface.

**Profit by Category**
Technology and Office Supplies deliver ~17% net margins, while Furniture earns a critically thin 2.4% margin despite generating $755K in revenue — the business's largest profitability liability.

**Monthly Sales Trend**
Sales follow a clear seasonal pattern with Q4 peaks and Q1 troughs, consistent with corporate budget-driven B2B purchasing cycles — creating cash flow and inventory planning challenges.

**Discount vs Profit Analysis**
Discounts above 30% consistently push transactions into negative profit territory. Aggressive discounting is the primary driver of margin leakage, with many transactions completed at a net loss purely due to discount depth.

**Correlation Heatmap**
Discount shows the strongest negative correlation with profit — the single most controllable variable impacting profitability. Selling more volume does not automatically translate into higher profit.

**Top 10 Products by Revenue**
All top 10 revenue products are high-ticket Technology items, with the Canon imageCLASS 2200 Copier alone contributing $61.6K. This concentration creates meaningful dependency risk.

**Loss-Making Products**
The top 10 loss-making products collectively destroy significant profit, with the Cubify 3D Printer lines alone accounting for -$12.7K — recurring structural profit drains, not anomalies.

**Region Analysis**
The West leads with a ~15% profit margin while the Central region generates $503K in revenue but only a 7.9% margin — consuming resources without delivering proportional returns.

**Shipping Mode Distribution**
Standard Class handles 60% of all orders; Same Day shipping covers only 5.4%, making it an underutilized premium service with disproportionate operational overhead.

**Profit Margin Distribution**
A healthy core business is being dragged down by a tail of deeply negative-margin transactions — a small subset of discounted orders is materially suppressing overall company profitability.

---

## 📈 Power BI Dashboard

An interactive Power BI dashboard was built for executive and stakeholder reporting, covering:

- **Executive Overview** — KPI cards for total sales, profit, margin, and customer count
- **Sales & Profit Trends** — Monthly and yearly trend lines
- **Category Performance** — Revenue vs. profit comparison by category
- **Regional Analysis** — Profitability breakdown by geography
- **Discount Impact Analysis** — Discount rate vs. profit margin visualization
- **Product Profitability** — Top performers and loss-making SKU identification
- **Shipping Analysis** — Order volume and cost by shipping mode
- **Cost Optimization View** — Targeted view for operational efficiency improvements

---

## 📊 Key Findings

- 💰 Total revenue of **$2.33M** with a **12.6% net profit margin**
- 🏆 **Technology** is the most profitable category at ~17% margin
- ⚠️ **Furniture** generates $755K in revenue but only a **2.4% margin**
- 📍 **West region** leads profitability at ~15%; **Central** trails at 7.9%
- 🔴 **302 SKUs** are loss-making, actively eroding company-wide margins
- 🎯 **Canon imageCLASS Copier** is the #1 product by both revenue ($61.6K) and profit
- 🚚 **60% of orders** use Standard Class; Same Day is significantly underutilized
- 📉 Discounts above **30%** consistently produce negative-profit transactions

---

## ✅ Strategic Business Recommendations

- **Control Discounting Aggressively** — Cap standard discounts at 20% and require management approval beyond that threshold, as discounting above 30% consistently converts profitable transactions into losses.
- **Rationalize the Product Portfolio** — Immediately delist chronic loss-makers like the Cubify 3D Printer line and place all 302 loss-making SKUs on a 90-day repricing or discontinuation review.
- **Fix the Furniture Category** — Despite ranking second in revenue, Furniture's 2.4% margin is a structural liability; audit its pricing, supplier costs, and discount patterns before continuing to invest in this category.
- **Prioritize High-ROI Regions** — Reallocate marketing and sales resources toward the West (15% margin) and East (13.7% margin) while investigating and addressing the Central region's profitability gap (7.9% margin).
- **Shift KPIs from Revenue to Profit Margin** — Replace volume-based sales targets with margin-weighted performance metrics across all categories, regions, and sales teams to align business growth with sustainable profitability.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Excel** | Data cleaning, preprocessing, calculated columns |
| **PostgreSQL** | Database creation, SQL business analysis queries |
| **Python** | EDA, statistical analysis, data visualizations |
| **Pandas & NumPy** | Data manipulation and aggregation |
| **Matplotlib & Seaborn** | Charts and visual analysis |
| **Power BI** | Interactive business intelligence dashboard |

---

## 🚀 How to Run This Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/Karan-54/retail-profitability-analysis
   ```

2. **Set up the PostgreSQL database**
   ```sql
   CREATE DATABASE retail_profitability_analysis;
   ```

3. **Import the dataset**
   - Import `dataset/retail_cleaned_data.csv` into the `orders` table using pgAdmin or the `COPY` command

4. **Run SQL queries**
   - Execute `sql/queries.sql` in pgAdmin or any PostgreSQL client

5. **Run the Python notebook**
   ```bash
   cd python
   jupyter notebook retail_analysis.ipynb
   ```

6. **Open Power BI Dashboard**
   - Open `powerbi/Retail Profitability & Cost Optimization Dashboard.pbix` in Power BI Desktop

---

## 👤 Author

**Karan Gupta**
Data Analyst | SQL · Python · Power BI · Excel

> This project is part of my data analytics portfolio demonstrating end-to-end business analysis, SQL querying, Python EDA, and Power BI dashboard development skills.

---

*⭐ If you found this project useful, consider starring the repository!*
