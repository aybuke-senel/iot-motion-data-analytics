# IoT Motion Data Analytics

## Project Overview
This project analyzes motion sensor data collected from a wearable device using accelerometer and gyroscope signals.  
The goal is to explore how motion patterns differ between walking and running activities using SQL-based data analysis.

---

## Dataset

This project uses the **Kinematics Motion Dataset**, which contains motion sensor data collected from a wearable device.

- Source: [Kaggle - Kinematics Motion Dataset](https://www.kaggle.com/datasets/yasserh/kinematics-motion-data)  
- Total Records: 88,588  

### Features:
- Acceleration (X, Y, Z)
- Gyroscope (X, Y, Z)
- Activity (0 = Walking, 1 = Running)
- Timestamp (Date & Time)
- User
- Wrist

---

## SQL Analysis

All SQL queries used in this project can be found here:
[SQL Analysis File](sql/sql_analysis.sql)


### Analyses performed:
- Activity distribution analysis
- Sensor data aggregation (average acceleration)
- Feature engineering (acceleration magnitude)
- Motion variability analysis (min-max range)

---

## SQL Results

### 1. Activity Distribution
![Activity Distribution](images/activity_distribution.png)

The dataset is balanced between walking and running activities.

---

### 2. Acceleration Magnitude
![Acceleration Magnitude](images/acceleration_magnitude.png)

Running shows higher acceleration magnitude, indicating more intense and dynamic movement compared to walking.

---

### 3. Magnitude Range
![Magnitude Range](images/magnitude_range.png)

Running exhibits a wider range of acceleration values, suggesting higher variability in motion patterns.

---

## Python Analysis (EDA)

The dataset was further analyzed using Python (Pandas & Matplotlib) after being queried from PostgreSQL.

---

### Activity Distribution
![Activity Distribution](images/iot_activity_distribution.png)

This visualization confirms that the dataset is balanced between walking and running activities.

---

### Acceleration Magnitude Distribution
![Magnitude Distribution](images/iot_magnitude_distribution.png)

Running shows higher and more widely distributed acceleration magnitude values, indicating more dynamic movement patterns.

---

## Key Insights

- Running involves higher motion intensity than walking  
- Acceleration magnitude is an effective feature for activity classification  
- Running has more dynamic and variable motion patterns
- SQL and Python analyses are consistent and support each other  

---

## Tools Used

- PostgreSQL  
- DBeaver  
- SQL
- Python (Pandas, Matplotlib)  

---

## Future Improvements

- Correlation analysis and deeper EDA (Python)  
- Machine Learning model for activity classification (Logistic Regression, Random Forest)  
- Model evaluation (confusion matrix, feature importance)  
- Interactive dashboard using Tableau or Power BI  
- Real-time data processing (optional extension)  
