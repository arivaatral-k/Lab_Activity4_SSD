DELIMITER $$

CREATE PROCEDURE GetAllSubscribers()
BEGIN
    SELECT * FROM Subscribers;
END$$

DELIMITER ;

CALL GetAllSubscribers();
