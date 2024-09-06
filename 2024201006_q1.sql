DELIMITER $$

CREATE PROCEDURE AddShow(
	IN ShowID INT,
    IN p_Title VARCHAR(100),
    IN p_Genre VARCHAR(50),
    IN p_ReleaseYear INT
)
BEGIN
    INSERT INTO Shows (ShowID,Title, Genre, ReleaseYear)
    VALUES (ShowID,p_Title, p_Genre, p_ReleaseYear);
END$$

DELIMITER ;

CALL AddShow(4,'The GOAT','Action',2024);

SELECT * from Shows;