-- ============================================================
-- Reddit Startups Content Analysis
-- SQL Engagement Analysis Queries
-- ============================================================

-- Query 1: Top 10 subreddits by average engagement
SELECT 
    subreddit,
    COUNT(*) AS total_posts,
    ROUND(AVG(score), 2) AS avg_score,
    ROUND(AVG(num_comments), 2) AS avg_comments,
    ROUND(AVG(engagement_score), 2) AS avg_engagement
FROM reddit_posts
GROUP BY subreddit
HAVING total_posts > 100
ORDER BY avg_engagement DESC
LIMIT 10;

-- Query 2: Best day of week to post
SELECT 
    day_of_week,
    COUNT(*) AS total_posts,
    ROUND(AVG(engagement_score), 2) AS avg_engagement
FROM reddit_posts
GROUP BY day_of_week
ORDER BY avg_engagement DESC;

-- Query 3: Best hour of day to post
SELECT 
    hour,
    COUNT(*) AS total_posts,
    ROUND(AVG(engagement_score), 2) AS avg_engagement
FROM reddit_posts
GROUP BY hour
ORDER BY avg_engagement DESC
LIMIT 10;

-- Query 4: Title length vs engagement
SELECT 
    CASE 
        WHEN title_length < 30 THEN 'Short (< 30 chars)'
        WHEN title_length BETWEEN 30 AND 60 THEN 'Medium (30-60 chars)'
        WHEN title_length BETWEEN 61 AND 100 THEN 'Long (61-100 chars)'
        ELSE 'Very Long (> 100 chars)'
    END AS title_category,
    COUNT(*) AS total_posts,
    ROUND(AVG(engagement_score), 2) AS avg_engagement
FROM reddit_posts
GROUP BY title_category
ORDER BY avg_engagement DESC;
