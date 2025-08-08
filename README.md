# 📊 Vehicle Sales Data Analysis

Exploring sales transactions of classic and specialty vehicles to uncover trends in customer behavior, product performance, and geographical sales distribution.

---

## 📂 Dataset Description

- **Dataset Source:** [Kaggle – Sample Sales Data](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data)
- **Size:** 2,823 rows × 25 columns  
- **Key variables:**
  - `ORDERNUMBER`, `ORDERDATE`, `QTR_ID`, `MONTH_ID`
  - `PRODUCTLINE`, `MSRP`, `SALES`
  - `COUNTRY`, `CITY`, `CUSTOMERNAME`
  - `DEALSIZE`, `STATUS`
- **Notable quirks:**
  - Missing or unusual values in `STATE` and `POSTALCODE`
  - `SALES` column represents total order amount, not unit price
  - Dates stored in mixed formats

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
   - Aggregated and filtered data by sales thresholds, time, and region

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
- Libraries: `pandas`, `matplotlib`, `seaborn`, `numpy`, `sqlite3`

**Run Instructions:**
1. **Clone this repository**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git

2. **Navigate to the project folder**
   ```bash
    cd your-repo-name

3. **Open the Jupyter Notebook**
- If you use Jupyter Notebook:
   ```bash
   jupyter notebook "Project 2 EDA and SQL FINAL.ipynb"
- Or, open it in VSCode by double-clicking the file or using:
   ```bash
- code "Project 2 EDA and SQL FINAL.ipynb"
  
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

├── Project 2 EDA and SQL FINAL.ipynb # Main analysis notebook
├── sales_data_sample.csv # Dataset used in the analysis
├── README.md # Project documentation
