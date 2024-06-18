# Social Media Sentiment Analysis

## Project Overview
This project analyzes social media sentiment data to understand engagement patterns across platforms. It identifies key trends in post volume, user engagement, and sentiment distribution by country, aiming to uncover peak posting times and the impact of hashtags on engagement. Insights gained will help optimize social media strategies and improve audience targeting.

**Tools used:**
- [Jupyter Notebook](https://github.com/Adarsh23082/Social-Media-Sentiments-Analysis/blob/main/Data%20cleaning%20and%20uploading%20to%20SQL%20Server.ipynb)
- [SQL](https://github.com/Adarsh23082/Social-Media-Sentiments-Analysis/blob/main/Sentiment%20Analysis%20Query.sql)

## Dataset Description
- [Dataset](https://www.kaggle.com/datasets/kashishparmar02/social-media-sentiments-analysis-dataset)
The dataset includes social media posts with attributes relevant to sentiment analysis and user engagement:

- **Post ID**: Unique identifier for each post.
- **User ID**: Unique identifier for each user.
- **Platform**: The social media platform (e.g., Twitter, Instagram, Facebook).
- **Post Content**: The text content of the post.
- **Likes**: Number of likes received.
- **Retweets/Shares**: Number of retweets or shares.
- **Sentiment**: Sentiment classification (positive, neutral, negative).
- **Timestamp**: Date and time of the post.
- **Country**: The country from which the post was made.
- **Hashtags**: Hashtags used in the post.
- **Comments**: Number of comments.

## Data Modeling
- **Data Cleaning and Preparation**: Utilized Python libraries (pandas, numpy) for data cleaning and preparation.
- **Data Transformation**: Applied transformations for effective data structuring.
- **Data Upload**: Uploaded the cleaned dataset to an SQL server for efficient querying and manipulation.

## Project Objectives
1. Identify the social media platform with the highest number of posts.
2. Determine the posts with the highest number of likes and retweets.
3. Analyze users with the highest average engagement.
4. Examine engagement levels by sentiment and platform.
5. Measure the daily volume of posts.
6. Identify peak posting times.
7. Determine the countries with the highest number of posts.
8. Analyze sentiment distribution by country.
9. Investigate sentiment distribution by platform and country.
10. Explore engagement levels by hashtag and platform.

## Analysis and Key Insights
- **Social Media Platform with Highest Number of Posts**: Instagram has the highest number of posts.
- **Posts with Highest Engagement**: The post by user 'CultureEnthusiast' received the highest engagement.
- **Users with Highest Average Engagement**: User 'Wanderlust' has the highest average engagement.
- **Engagement by Sentiment and Platform**: Facebook posts with 'Joy' sentiment have the highest engagement.
- **Peak Posting Times**: Peak times for posting are 14:00, 16:00, 18:00, and 19:00.
- **Countries with Highest Number of Posts**: The USA has the highest number of posts.
- **Sentiment Distribution by Country**: The USA and Canada have the highest number of posts with 'Joy' sentiment.

## Conclusion
Instagram leads in post volume, making it the dominant platform. The highest engagement is achieved by 'CultureEnthusiast' with their top-performing post. 'Wanderlust' stands out with the highest average engagement per post. Positive and joyful content performs best on Facebook and Instagram, indicating the importance of sentiment in driving engagement. The most active regions are the USA, UK, Canada, and Australia, with peak posting times identified in the mid-afternoon and early evening.

## Recommendations
To optimize social media strategies, prioritize content on Instagram due to its high post volume and engagement potential. Emulate successful posts that focus on cultural and event-based content to maximize engagement. Collaborate with high-engagement users like 'Wanderlust' to amplify reach and impact. Create positive and joyful content specifically for Facebook and Instagram to tap into higher engagement rates. Schedule posts around peak times to maximize visibility and interaction. Focus efforts on the most active regions, including the USA, UK, Canada, and Australia, and tailor content to match the dominant sentiments in each country.
