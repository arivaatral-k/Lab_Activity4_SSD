SET SQL_SAFE_UPDATES = 0;
ALTER TABLE Subscribers ADD COLUMN Age INT;

DELIMITER $$

CREATE PROCEDURE UpdateAllSubscribersAge(p_Age INT)
BEGIN
    UPDATE Subscribers
    SET Age = p_Age;
END$$

DELIMITER ;

call UpdateAllSubscribersAge(20);

select * from Subscribers;