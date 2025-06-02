import yfinance as yf

# Define the ticker
ticker = yf.Ticker("F")

# Fetch historical data
df = ticker.history(period="max")  # use start="YYYY-MM-DD", end="YYYY-MM-DD"

# Remove dividend rows (we only keep rows with price data)
df_cleaned = df[df['Open'].notnull()]

# Save to CSV
df_cleaned.to_csv("dataFiles/Ford.csv")