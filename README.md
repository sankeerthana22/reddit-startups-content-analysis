# Reddit Startups Content Analysis

A real-world data analytics project analyzing 545,000+ Reddit posts to identify content performance patterns, optimal posting times, and engagement drivers across data and technology communities.

This project demonstrates end-to-end analytics skills using Python, SQL, SQLite, and Power BI on real publicly available data.

---

## Business Problem

Content teams and community managers need to understand what drives engagement on Reddit. Posting at the wrong time, using the wrong title length, or targeting the wrong community can significantly reduce reach and impact.

This project answers the following business questions:

- Which subreddits drive the highest user engagement?
- What days and times generate the most post engagement?
- Does title length affect engagement performance?

---

## Key Findings

- **MachineLearning** is the highest-engagement subreddit with an average engagement score of 11.87
- **Sunday and Saturday** are the best days to post for maximum engagement
- **5PM (Hour 17)** is the peak posting hour across all communities
- **Longer titles (100+ characters)** generate 55% more engagement than short titles

---

## Dashboard Previews

### Top Subreddits by Engagement
![Top Subreddits](images/top_subreddits_dashboard.png)

### Best Days to Post
![Best Days](images/best_days_dashboard.png)

### Best Hours to Post
![Best Hours](images/best_hours_dashboard.png)

### Title Length Impact on Engagement
![Title Length](images/title_length_dashboard.png)

---

## Dataset

- **Source:** Publicly available Reddit dataset sourced from Kaggle
- **Subreddits covered:** Data science, machine learning, analytics, statistics and related technology communities
- **Raw records:** 545,427 posts
- **Clean records:** 479,156 posts after cleaning
- **Fields:** post title, author, subreddit, score, number of comments, timestamp, post body, subreddit subscribers

---

## Data Cleaning Highlights

Real-world data is messy. This project involved significant cleaning before any analysis could be performed:

- Removed 45,294 duplicate posts
- Removed 20,976 deleted and bot author records
- Fixed impossible negative comment count values
- Converted Unix timestamps to readable datetime format
- Extracted time features — hour, day of week, month, year
- Created engagement score combining upvotes and comments
- Filled and standardized missing values across all columns

---

## Project Workflow

1. Load raw Reddit dataset into Pandas
2. Perform data cleaning and feature engineering
3. Load cleaned data into SQLite database
4. Run SQL queries to analyze engagement patterns
5. Export results to CSV for Power BI
6. Build interactive dashboards in Power BI

---

## Tools and Technologies

- **Python** — data cleaning and pipeline automation
- **Pandas** — data manipulation and feature engineering
- **SQL / SQLite** — structured engagement analysis
- **Power BI** — dashboard design and visualization
- **Jupyter Notebook** — interactive analysis environment

---

## Project Structure
```
reddit-startups-content-analysis/
│
├── data/
│   ├── raw/
│   │   └── reddit_database.csv
│   └── cleaned/
│       ├── reddit_posts_cleaned.csv
│       ├── top_subreddits_engagement.csv
│       ├── best_days_to_post.csv
│       ├── best_hours_to_post.csv
│       └── title_length_engagement.csv
│
├── notebooks/
│   └── reddit_startups_analysis.ipynb
│
├── sql/
│   └── engagement_analysis.sql
│
├── images/
│   ├── top_subreddits_dashboard.png
│   ├── best_days_dashboard.png
│   ├── best_hours_dashboard.png
│   └── title_length_dashboard.png
│
├── requirements.txt
└── README.md
```

---

## Author

Satya Seetha Sankeerthana Mulukutla