SET SQL_SAFE_UPDATES = 0;


DELIMITER $$

CREATE PROCEDURE UpdateAllSubscribersAgeWithCursor(p_Age INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sub_id INT;
    DECLARE cur CURSOR FOR SELECT SubscriberID FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO sub_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE Subscribers
        SET Age = p_Age
        WHERE SubscriberID = sub_id;
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;




call UpdateAllSubscribersAgeWithCursor(40);

select * from Subscribers;