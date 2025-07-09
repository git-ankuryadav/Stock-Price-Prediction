# Time Series Forecasting of Stock Prices using ARMA, GARCH, RNN, and LSTM

This repository contains a comparative analysis of classical and deep learning models for forecasting stock prices. It includes ARMA, ARMA-GARCH, Recurrent Neural Network (RNN), and Long Short-Term Memory (LSTM) models. The focus is on modeling both linear time series behavior and nonlinear volatility clustering, as well as sequence prediction using recurrent architectures.

---

## 📁 Repository Structure

project-root/
│
├── final_ARMA.ipynb # Classical ARMA model implementation
├── final_ARMA-GARCH.ipynb # ARMA model on GARCH-standardized returns
├── final_LSTM.ipynb # LSTM-based deep learning forecasting
├── final_RNN.ipynb # Basic RNN-based forecasting
│
├── References/ # Contains research papers and citations
│
├── Rfiles/ # (Optional) R scripts or notebooks
│
├── dataFiles/ # Input datasets (CSV format)
│
└── README.md


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
