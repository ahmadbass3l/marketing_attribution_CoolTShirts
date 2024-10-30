SELECT
  ROW_NUMBER() OVER (
    ORDER BY utm_source
  ) AS '#',
  utm_source
FROM page_visits
GROUP BY utm_source;

/*
SELECT COUNT(DISTINCT utm_source)
FROM page_visits;
*/