# 📊 Vehicle Sales Data Analysis

Exploring sales transactions of classic and specialty vehicles to uncover trends in customer behavior, product performance, and geographical sales distribution.

---

## 📂 Dataset Description

- **Dataset Source:** [Kaggle – Sample Sales Data](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data)
- **Size:** 2,823 rows × 25 columns
  
**Notable Quirks:**
- **No Unique Key:** The dataset does not have a primary key to uniquely identify each row.  
- **Order-to-Product Relationship:** A single `ORDERNUMBER` can be linked to multiple `PRODUCTCODE` entries, meaning each row represents a line item within an order rather than the entire order.  
- **Null Values:** Several columns (`ADDRESSLINE2`, `STATE`, `POSTALCODE`, `TERRITORY`) contain a significant number of missing values.  
- **Sales Column Discrepancy:** The `SALES` column represents `QUANTITYORDERED × PRICEEACH`. However, some rows contained incorrect values (e.g., a flat value of `100`) caused by data entry errors.  
- **Date Format Inconsistencies:** Dates were stored in mixed formats and required standardization.  

---

## 🎯 Research Goal

Identify sales patterns by product line, time period, and geographical region, and uncover key factors influencing sales performance.

---

## 🛠 Steps Taken

1. **Data Cleaning**
   - Handled missing values in key columns
   - Reformatted date columns for consistency
   - Removed duplicates and irrelevant columns

2. **Exploratory Data Analysis (EDA)**
   - Summary statistics for sales and product lines
   - Grouped sales by month, quarter, and product category
   - Visualized trends with boxplots, bar charts, and line plots

3. **SQL Integration**
   - Queried dataset to answer business questions

---

## 📌 Main Findings

- **Seasonality:** Sales peak in Q4, likely due to holiday demand  
- **Top Performers:** Classic Cars consistently generate the highest revenue  
- **Regional Insight:** USA dominates sales volume, but EMEA excels in high-end products  
- **Deal Size:** Large deals cluster in specific product lines and regions  

---

## 💻 How to Reproduce

**Prerequisites:**
- Python **3.10+**
- Libraries: `pandas`, `matplotlib`, `seaborn`, `numpy`

**Run Instructions:**
1. **Clone this repository**
   ```bash
   git clone https://github.com/nataliadominguez99/Vehicles-Sales-Project.git

2. **Navigate to the project folder**
   ```bash
    cd Vehicles-Sales-Project

3. **Open the Jupyter Notebook**
- If you use Jupyter Notebook:
   ```bash
   jupyter notebook "Vehicles Sales Data Analysis.ipynb"
- Or, open it in VSCode by double-clicking the file or using:
   ```bash
    code "Vehicles Sales Data Analysis.ipynb"
  
4. **Ensure the dataset is in the correct location**
- The file sales_data_sample.csv must be in the same directory as the notebook.

5. Run all cells
- Select Cell > Run All in Jupyter Notebook or VSCode to reproduce the analysis.

## 🚀 Next Steps

- Build predictive models to forecast sales by product line  
- Conduct customer segmentation for targeted marketing strategies  
- Integrate external datasets (e.g., economic indicators) for deeper insights  

---

## 📁 Repo Structure
```bash
├── Business Challenge Data Cleaning and EDA.pdf   # PDF report with data cleaning steps and exploratory data analysis
├── Vehicles Sales Business Questions.sql          # SQL script containing business questions and queries
├── Vehicles Sales Data Analysis.ipynb             # Jupyter Notebook with detailed data analysis and visualizations
└── sales_data_sample.csv                          # Dataset used for the analysis
