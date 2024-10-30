SELECT COUNT(user_id) AS purchases,
  utm_campaign
FROM page_visits
WHERE page_name = '4 - purchase'
GROUP BY utm_campaign
ORDER BY purchases DESC;