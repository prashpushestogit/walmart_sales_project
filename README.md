
## 📄 Overview

This project explores Walmart’s transactional sales data using a combination of **SQL** and **Python** to uncover key business insights, analyze customer behavior, and visualize trends across branches, payment methods, and time-based activity.

The analysis includes SQL querying through a MySQL database, along with data preprocessing and visualization using Python libraries like `pandas`, `matplotlib`, and `seaborn`.

---

## 🧠 Key Objectives

- Clean and preprocess transactional sales data using Python
- Query structured data using MySQL to extract insights
- Securely connect Python to MySQL using SQLAlchemy and environment variables
- Visualize trends in customer behavior, product ratings, profit distribution, and more

---

## 🔍 Insights Generated

### ✅ SQL-Based Analysis
- **Payment method distribution** across all branches
- **Busiest day** for each branch using `DAYNAME()` function
- **Average rating** of products by branch and category
- **Sales categorization** by time of day (morning, afternoon, evening)
- **Total quantity sold** per payment method
- **Maximum, minimum, and average ratings** per city
- **Total profit** computed from `unit_price * quantity * profit_margin`
- **Most common payment method per branch** using CTEs and `RANK()`

### 🐍 Python-Based Analysis
- Cleaning and formatting of raw data
- Conversion of date/time strings to datetime objects
- Visualizations of:
  - Payment method frequency
  - Ratings distribution
  - Quantity sold per method
  - Sales shifts over time

---

## 🛠️ Tools & Technologies

- **SQL**: MySQL for querying
- **Python**: pandas, matplotlib, seaborn, sqlalchemy, dotenv
- **Database Connection**: SQLAlchemy with credentials hidden via `.env`
- **Jupyter Notebook**: for combining code, visualizations, and analysis
