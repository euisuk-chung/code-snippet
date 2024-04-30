# Data Check snippets
- Data Profiling >> Basic Data Check
```python3
def check_data(df_name, data_loc = None):
    # Load DataFrame
    if data_loc == None:
        df = pd.read_csv(df_name)
    else:
        df = pd.read_csv(data_loc + df_name)
        
    # Print TOP 5 of the DataFrame
    print(df.head(5))
    
    # Print the shape of the DataFrame
    print(f"SHAPE: {df.shape}\n")
    
    # Print the DataFrame info
    print("INFO:")
    print(df.info())
    
    # Print the summary statistics
    print("\nSUMMARY STATISTICS:")
    print(df.describe())
    
    # Print the count or percentage of missing values
    print("\nMISSING VALUES:")
    missing_values_count = df.isna().sum()
    missing_values_percentage = (missing_values_count / len(df)) * 100
    missing_values_info = pd.DataFrame({
        'Missing Count': missing_values_count,
        'Missing Percentage': missing_values_percentage
    })
    print(missing_values_info)
    
    # Print the number of unique values
    print("\nUNIQUE VALUES:")
    unique_values_count = df.nunique()
    print(unique_values_count)
    
    # Print the data types
    print("\nDATA TYPES:")
    print(df.dtypes)
```

- Data Profiling >> pandas_profiling
```python3
import pandas_profiling

def generate_data_profile(df_name, data_loc = None, save_loc = None, report_name=None):
    # Load DataFrame
    if data_loc == None:
        df = pd.read_csv(df_name)
    else:
        df = pd.read_csv(data_loc + df_name)

    # Select a sample if specified
    if sample is not None:
        if sample <= 0 or sample > 1:
            raise ValueError("Sample size should be between 0 and 1.")
        df = df.sample(frac=sample, random_state=42)
    
    # Generate the data profile and HTML report
    if (report_name == None) and (save_loc == None):
        profile = pandas_profiling.ProfileReport(df, title=f'{df_name}_report')
        profile.to_html(f'./{df_name}_report.html')
    elif (report_name != None) and (save_loc == None):
        profile = pandas_profiling.ProfileReport(df, title=f'{report_name}')
        profile.to_html(f'./{report_name}.html')
    elif (report_name == None) and (save_loc != None):
        profile = pandas_profiling.ProfileReport(df, title=f'{df_name}_report')
        profile.to_html(f'{save_loc}/{df_name}_report.html')
    else:
        profile = pandas_profiling.ProfileReport(df, title=f'{report_name}')
        profile.to_html(f'{save_loc}/{report_name}.html')
```

- Data Profiling >> sweetviz 
```python3
import sweetviz as sv

def generate_data_profile(df_name, data_loc = None, save_loc = None, report_name=None):
    # Load DataFrame
    if data_loc == None:
        df = pd.read_csv(df_name)
    else:
        df = pd.read_csv(data_loc + df_name)

    # Select a sample if specified
    if sample is not None:
        if sample <= 0 or sample > 1:
            raise ValueError("Sample size should be between 0 and 1.")
        df = df.sample(frac=sample, random_state=42)
    
    # Generate the data profile
    report = sv.analyze(df)
    
    # Generate the HTML report
    if (report_name == None) and (save_loc == None):
        report.show_html(f'./{df_name}_report.html')
    elif (report_name != None) and (save_loc == None):
        report.show_html(f'./{report_name}.html')
    elif (report_name == None) and (save_loc != None):
        report.show_html(f'{save_loc}/{df_name}_report.html')
    else:
        report.show_html(f'{save_loc}/{report_name}.html')
```
