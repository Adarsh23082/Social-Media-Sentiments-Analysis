CREATE TABLE df_sentiments (
    "Text" varchar(500),
    "Sentiment" varchar(100),
    "Timestamp" date,
    "User" varchar(100),
    "Platform" varchar(50),
    "Hashtags" varchar(100),
    "Retweets" int,
    "Likes" int,
    "Country" varchar(100),
    "Year" int,
    "Month" int,
    "Day" int,
    "Hour" int
);

select * from df_sentiments

--Platform-Based Analysis

--1.Most Popular Platform:
--Which social media platform has the highest number of posts?

select "Platform", count(*)
from df_sentiments
group by "Platform";

--2.Most Engaging Posts:
--Which posts have received the highest number of likes and retweets?

SELECT "User", "Text", "Likes", "Retweets"
FROM df_sentiments
ORDER BY "Likes" DESC, "Retweets" DESC
LIMIT 1;

--3.Top Influencers:
--Which users have the highest average engagement (likes and retweets per post)?

SELECT "User", AVG("Likes") AS "AvgLikes", AVG("Retweets") AS "AvgRetweets"
FROM df_sentiments
GROUP BY "User"
ORDER BY (AVG("Likes") + AVG("Retweets")) DESC
LIMIT 1;


--Sentiments Analysis
--4. Engagement by Sentiments and Platform:
--How do engagement levels vary by Sentiments and platform?

SELECT "Platform", "Sentiment", COUNT(*) AS "Count"
FROM df_sentiments
GROUP BY "Platform", "Sentiment"
ORDER BY "Count" DESC;

select * from df_sentiments


--Time-Based Analysis
--5. Daily Post Volume:
--What is the daily volume of posts?

SELECT "Year", "Month", "Day", COUNT(*) AS "PostCount"
FROM df_sentiments
GROUP BY "Year", "Month", "Day"
ORDER BY "PostCount" DESC;

--6. Peak Posting Times:
--What are the peak times of day for posting on social media?

SELECT "Hour", COUNT(*) AS "PostCount"
FROM df_sentiments
GROUP BY "Hour"
ORDER BY "PostCount" DESC;

--Geographical Analysis
--7. Most Active Countries:
--Which countries have the highest number of social media posts?

SELECT "Country", COUNT(*) AS "PostCount"
FROM df_sentiments
GROUP BY "Country"
ORDER BY "PostCount" DESC;

--8. Sentiment by Country:
--What is the distribution of sentiments by country?

SELECT "Country", "Sentiment", COUNT(*) AS "Count"
FROM df_sentiments
GROUP BY "Country", "Sentiment"
ORDER BY "Count" DESC;

--Combined Analysis
--9. Sentiment by Platform and Country:
--How does sentiment distribution vary by platform and country?

SELECT "Platform", "Country", "Sentiment", COUNT(*) AS "Count"
FROM df_sentiments
GROUP BY "Platform", "Country", "Sentiment"
ORDER BY "Platform", "Country", "Sentiment";

--10. Engagement by Hashtag and Platform:
--How do engagement levels (likes and retweets) vary by hashtag and platform?

SELECT "Hashtags", "Platform", AVG("Likes") AS "AvgLikes", AVG("Retweets") AS "AvgRetweets"
FROM df_sentiments
GROUP BY "Hashtags", "Platform"
ORDER BY "AvgLikes" DESC, "AvgRetweets" DESC;




