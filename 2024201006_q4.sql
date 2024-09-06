DELIMITER $$

CREATE PROCEDURE GetAllSubscribersWithCursor()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sub_id INT;
    DECLARE sub_name VARCHAR(100);
    DECLARE cur CURSOR FOR SELECT SubscriberID, SubscriberName FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO sub_id, sub_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('Subscriber ID: ', sub_id, ', Subscriber Name: ', sub_name) AS SubscriberInfo;
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;
 call GetAllSubscribersWithCursor();