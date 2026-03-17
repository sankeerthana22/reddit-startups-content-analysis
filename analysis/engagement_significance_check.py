import pandas as pd
import numpy as np
from pathlib import Path

DATA_PATH = Path("data/cleaned/title_length_engagement.csv")

def main():
    if not DATA_PATH.exists():
        print(f"Missing file: {DATA_PATH}")
        return

    df = pd.read_csv(DATA_PATH)
    print("Loaded:", DATA_PATH)
    print("Columns:", list(df.columns))
    print("Shape:", df.shape)

    # Try to infer useful columns
    numeric_cols = df.select_dtypes(include=[np.number]).columns.tolist()
    print("Numeric columns:", numeric_cols)

    print("\nPreview:")
    print(df.head(10).to_string(index=False))

    print("\nNOTE:")
    print("This file looks like an aggregated summary table, not raw post-level data.")
    print("That means proper statistical testing cannot be done reliably from this file alone.")
    print("To run valid significance tests, we need the cleaned post-level dataset with one row per Reddit post.")
    print("For now, the project should still be described as DESCRIPTIVE and not statistically validated.")

if __name__ == "__main__":
    main()
