# Time Series Forecasting of Stock Prices using ARMA, GARCH, RNN, and LSTM

This repository contains a comparative analysis of classical and deep learning models for forecasting stock prices. It includes ARMA, ARMA-GARCH, Recurrent Neural Network (RNN), and Long Short-Term Memory (LSTM) models. The focus is on modeling both linear time series behavior and nonlinear volatility clustering, as well as sequence prediction using recurrent architectures.

---

## 📁 Repository Structure

```
project-root/
│
├── final-ARMA.ipynb          # Classical ARMA model implementation
├── final-ARMA+GARCH.ipynb    # ARMA model on GARCH-standardized returns
├── final-LSTM.ipynb          # LSTM-based deep learning forecasting
├── final-RNN.ipynb           # Basic RNN-based forecasting
├── eda&pred.ipynb            # Exploratory analysis of code
├── explore.ipynb             # Exploratory analysis of code
├── ts.ipynb                  # Implementation of Prophet Model
│
├── References/ # Contains research papers and citations
│
├── Rfiles/ # (Optional) R scripts or notebooks
│
├── dataFiles/ # Input datasets (CSV format)
│
└── README.md
```

---

## 🔍 Notebook Descriptions

- **final_ARMA.ipynb**  
  Uses ARMA modeling on log return series to forecast and reconstruct closing prices. Includes ADF test, ACF/PACF, and RMSE/MAE evaluation.

- **final_ARMA-GARCH.ipynb**  
  Models volatility using a GARCH process. The return series is standardized using conditional variance, then ARMA is applied. Predictions are re-scaled and converted to price levels.

- **final_LSTM.ipynb**  
  Implements an LSTM model trained directly on scaled closing prices. Uses a sequence-to-one structure with a look-back window and compares performance on training and test data.

- **final_RNN.ipynb**  
  Implements a simple vanilla RNN model for time series forecasting. Uses similar input preparation as the LSTM notebook and compares forecasting accuracy.

---

## ⚙️ Requirements

To run the notebooks, ensure the following packages are installed:

```bash
pip install numpy pandas matplotlib scikit-learn statsmodels yfinance arch tensorflow
```

---

## 📊 Evaluation Metrics

Models are evaluated using the following metrics:

- **RMSE** (Root Mean Squared Error)
- **MAE** (Mean Absolute Error)
- **R² Score** (Coefficient of Determination)

Each notebook includes both **in-sample** and **out-of-sample** performance evaluation using these metrics to ensure fair comparison.

---

## 📂 Data

The dataset used in this project includes historical stock prices (i.e. IBM and Hindustan Uniliver dataset over 28 years) downloaded from **Yahoo Finance**.  
Please ensure your CSV files are placed in the `dataFiles/` directory for proper loading by the notebooks.

---

## 📚 References

The `References/` folder includes supporting literature, academic papers, and documentation used to support the development of the models and evaluation strategies in this project.
