# Machine Learning Projects
This repository contains multiple Machine Learning and Data Science projects implemented using **Python** and **R**.

---

## 1️⃣ Image Classification using CNN
This project implements an image classification model using **Convolutional Neural Networks (CNN)** with TensorFlow and Keras.
### Technologies
- Python
- TensorFlow
- Keras
- NumPy
- Matplotlib
- Google Colab
### File
`CNN_Image_Classification.ipynb`
Contains the CNN model implementation and training process.

---

## 2️⃣ Student Performance Prediction (Regression)

This project predicts student performance using multiple regression models.
### Models Tested
- Linear Regression
- Random Forest
- Gradient Boosting
### Result
After evaluating the models using **R², MAE, and RMSE**, the results showed that:
**Linear Regression was the best-performing model on this dataset.**
### File
`Student_Performance_Prediction.ipynb`

---

## 3️⃣ Student Productivity Analysis using DBSCAN

This project analyzes student productivity patterns using the **DBSCAN clustering algorithm**.
### Technologies
- Python
- Pandas
- NumPy
- Scikit-learn
- Matplotlib
- Google Colab
### Methodology
1. Data preprocessing  
2. Feature scaling  
3. DBSCAN clustering  
4. Cluster analysis  
5. Data visualization  
### Result
The DBSCAN algorithm identified clusters representing different productivity behaviors among students.

---

## 4️⃣ Boston Housing Price Prediction

This project analyzes the **Boston Housing dataset** and builds a regression model to predict the median value of homes (MEDV).
### Techniques Used
- Data exploration
- Outlier detection (IQR)
- Correlation analysis
- Linear regression modeling
- Feature selection using stepAIC
- Multicollinearity check (VIF)
- Heteroscedasticity test (Breusch-Pagan)
- Robust standard errors
### Tools
- R
- car
- MASS
- lmtest
- sandwich
### Result
The final regression model explained approximately **74% of the variance in housing prices (R² ≈ 0.74)**.
### Model Visualization

![Model Plot](model_plot.png)

---

## 5️⃣ World Population Clustering using KMeans

This project applies **KMeans clustering** to group countries based on:
- Area
- Population
- Population Density
### Goal
Identify patterns and similarities between countries based on geographic and demographic characteristics.
### Techniques Used
- Data Cleaning
- Label Encoding
- One-Hot Encoding
- Data Visualization (Seaborn, Matplotlib)
- Elbow Method
- KMeans Clustering
- Hyperparameter Tuning using GridSearchCV
### Technologies
- Python
- Pandas
- Scikit-learn
- Seaborn
- Matplotlib
- Google Colab
### Result
Countries were grouped into clusters based on similarities in area, population size, and population density.  
The clustering results reveal meaningful patterns among countries and help understand global population distribution.

## 6️⃣ Time Series Forecasting using LSTM Neural Network

This project applies a deep learning model using Long Short-Term Memory (LSTM) to predict values in a time series dataset.
A synthetic sine wave dataset was generated and transformed using a sliding window approach to create sequences for supervised learning.

### Technologies
* Python
* TensorFlow / Keras
* NumPy
* Matplotlib
* Google Colab
### Methodology
* Data generation using sine function
* Data preprocessing (sliding window technique)
* Reshaping data for LSTM input
* Building LSTM neural network
* Training and validation
* Model evaluation
### Model Architecture
* LSTM layer
* Dropout layer
* Dense layers

### Results
* Mean Absolute Error (MAE): ~0.012
* Loss (MSE): ~0.00020
* The model achieved high accuracy in predicting the time series pattern.
* Predictions closely matched the true values with minimal error.
* No significant overfitting observed

### File
LSTM_Time_Series_Forecasting.ipynb
Contains the full implementation of the LSTM model, training process, and prediction visualization.
![LSTM Result 1](1-lstm_plot.png)

![LSTM Result 2](2-lstm_plot.png)
