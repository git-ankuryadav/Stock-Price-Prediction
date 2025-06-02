import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_csv("Ford.csv")

df = df[['Date','Open','Close']]
df['Date'] = pd.to_datetime(df['Date'], utc = True)

df['Return'] = np.absolute( df['Close'] - df['Open'] )
df['LogClose'] = np.log(df['Close']) 
df['LogReturn'] = np.log(df['Return']) 
df['id'] = range(1, len(df) + 1)

# df.plot.line(x='id', y='Return')
# plt.grid(True)
# plt.show()
# print(df.head())

plt.show()