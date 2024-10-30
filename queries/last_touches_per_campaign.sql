WITH last_touch AS (
  SELECT user_id,
    MAX(timestamp) AS last_touch_at
  FROM page_visits
  GROUP BY user_id
)
SELECT COUNT(pv.user_id) AS total_last_touches,
  pv.utm_campaign
FROM page_visits AS pv
JOIN last_touch AS lt
ON lt.user_id = pv.user_id
AND lt.last_touch_at = pv.timestamp
GROUP BY pv.utm_campaign
ORDER BY total_last_touches DESC;