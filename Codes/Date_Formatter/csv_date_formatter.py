import pandas as pd
df = pd.read_csv("Metallica_Data_Clean.csv", index_col="Date", parse_dates=["Date"])
# print(df)
df.to_csv("Metallica_Data_Clean_Modified.csv")
