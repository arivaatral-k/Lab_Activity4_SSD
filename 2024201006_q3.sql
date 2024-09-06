DELIMITER $$

CREATE PROCEDURE GetCumulativeWatchTime()
BEGIN
    SELECT s.SubscriberID, s.SubscriberName, SUM(w.WatchTime) AS TotalWatchTime
    FROM Subscribers s
    LEFT JOIN WatchHistory w ON s.SubscriberID = w.SubscriberID
    GROUP BY s.SubscriberID, s.SubscriberName;
END$$

DELIMITER ;

CALL GetCumulativeWatchTime();