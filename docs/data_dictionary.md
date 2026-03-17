# Data Dictionary

## Core Fields

- **upvotes** — numeric — number of upvotes received by a post
- **comments** — numeric — number of comments received by a post
- **timestamp** — datetime/string — original post creation timestamp
- **subreddit** — text — subreddit where the post was published
- **title** — text — post title

## Derived Fields

- **posting_hour** — integer — hour extracted from the post timestamp
- **day_of_week** — text — weekday extracted from the timestamp
- **title_length** — integer — number of characters in the post title
- **engagement_score** — numeric — defined as `upvotes + (2 × comments)`

## Output Summary Tables

- **subreddit_engagement.csv** — subreddit-level engagement summary
- **hourly_engagement.csv** — hourly engagement summary
- **daily_engagement.csv** — day-of-week engagement summary
- **title_length_engagement.csv** — title-length-category engagement summary
