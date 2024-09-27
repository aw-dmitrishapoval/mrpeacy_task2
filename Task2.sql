SELECT
    m1.id, m1.version, m1.content
FROM mrp m1
JOIN
     (SELECT
          id, MAX(version) AS version
      FROM mrp
      GROUP BY id) m2
ON m1.id = m2.id AND m1.version = m2.version;