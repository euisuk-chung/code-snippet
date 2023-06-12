# Data Check snippets
- Data Profiling >> Basic Data Check
```python3
def check_data(df):
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

def generate_data_profile(dataframe, sample=None):
    # Select a sample if specified
    if sample is not None:
        if sample <= 0 or sample > 1:
            raise ValueError("Sample size should be between 0 and 1.")
        dataframe = dataframe.sample(frac=sample, random_state=42)
    
    # Generate the data profile
    profile = pandas_profiling.ProfileReport(dataframe)
    
    # Get the HTML report as a string
    html_report = profile.to_html()
    
    return html_report
```

- Data Profiling >> sweetviz 
```python3
import sweetviz as sv

def generate_data_profile(dataframe, sample=None):
    # Select a sample if specified
    if sample is not None:
        if sample <= 0 or sample > 1:
            raise ValueError("Sample size should be between 0 and 1.")
        dataframe = dataframe.sample(frac=sample, random_state=42)
    
    # Generate the data profile
    report = sv.analyze(dataframe)
    
    # Generate the HTML report
    html_report = report.to_html()
    
    return html_report
```
