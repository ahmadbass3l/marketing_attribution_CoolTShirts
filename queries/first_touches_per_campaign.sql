WITH first_touch AS (
  SELECT user_id,
    MIN(timestamp) AS first_touch_at
  FROM page_visits
  GROUP BY user_id
)
SELECT COUNT(pv.user_id) AS total_first_touches,
      pv.utm_campaign
FROM page_visits AS pv
JOIN first_touch AS ft
ON pv.user_id = ft.user_id
AND pv.timestamp = ft.first_touch_at
GROUP By pv.utm_campaign
ORDER BY total_first_touches DESC;