import pandas as pd
import openpyxl
df = pd.read_csv("Serve.csv")
print(df.head())
#In the above section of code we have imported the csv file and named it "df".
print(df.isnull().sum())
print(df.mode())
print(len(df))
#With this code we get to know how many null values exist in each column.
df["Smoker"].fillna("No",inplace=True)
#We fill null values in "Smoker" with NO (Reasoning given in document)
df["Day"].fillna("Saturday",inplace=True)
#We fill null values in "Day" with Saturday (Reasoning given in document) 
median = df['Partysize'].median()
df['Partysize'].fillna(median, inplace=True)
##We fill null values in "Partysize" with Median (Reasoning given in document)
df['Amount'] = df['Amount'].str.replace('-','.')
df['Amount'] = df['Amount'].str.replace(',','.')
df['Time'] = df['Time'].str.replace('LD','L,D')
df = df.assign(Time=df.Time.astype(str).str.split(',')).explode('Time').reset_index(drop=True)
df.to_excel("ServeNEWPROJECT.xlsx", sheet_name="1", index=False)
replacement_pair={"M":"Male","Mal":"Male","F":"Female","N":"No","Y":"Yes","D":"Dinner","L":"Lunch","Fri":"Friday","Sat":"Saturday","Sun":"Sunday","Thur":"Thursday","Thurs":"Thursday","S":"Saturday","San":"Saturday","LD":"L,D"}
wb=openpyxl.load_workbook("ServeNEWPROJECT.xlsx")
for ws in wb.worksheets:
    for row in ws.iter_rows():
        for cell in row:
            if cell.value in replacement_pair.keys():
                cell.value=replacement_pair.get(cell.value)
wb.save("DOM207NEWSERVECLEAN.xlsx")