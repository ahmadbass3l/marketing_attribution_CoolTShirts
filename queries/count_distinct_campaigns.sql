SELECT
  ROW_NUMBER() OVER (
    ORDER BY utm_campaign
  ) AS '#',
  utm_campaign
FROM page_visits
GROUP BY utm_campaign;

/*
SELECT COUNT(DISTINCT utm_campaign)
FROM page_visits;
*/