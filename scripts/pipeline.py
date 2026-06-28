import pandas as pd
import os

# initialize base directory and define the path to the raw data folder
base_path = os.path.dirname(os.path.abspath(__file__))
raw_data_path = os.path.join(base_path, '../data/raw/')


# set the absolute path for the target e_commerce ordres dataset 
orders_file = os.path.join(raw_data_path,'olist_orders_dataset.csv')


print("file path:",os.path.abspath(orders_file))

try:

    # load the csv file into a pandas dataframe
    df_orders = pd.read_csv(orders_file)

    print("\n succes!")
    print(f"total row (records):{df_orders.shape[0]}")
    print(f"total column(features):{df_orders.shape[1]}")


    #preview the first three rows of the dataset to verify structure
    print("\n--- data preview (first 3 rows)---")
    print(df_orders.head(3))

except FileNotFoundError:
    
    # handel exceptions if the source file is missing or the path is incorrect 
    print("\n error: 'olist_orders_datset.csv' not found")
