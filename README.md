Prereuisite:
    - MySQL Workbench should have been installed.

Assumption:
    - Required tables have been created and records are inserted which is mention in the question.

Question 1:
    - ShowID while inserting should be unique, since it is a primary key.
    - Should call the procedure by:
        - CALL AddShow(4,'The GOAT','Action',2024);

Question 2:
    - Should call the procedure by:
        -CALL GetAllSubscribers();

Question 3:
    - Should call the procedure by:
        -CALL GetCumulativeWatchTime();

Question 4:
    - Should call the procedure by:
        - call GetAllSubscribersWithCursor();

Question 5:
    - Disabled safe update.
    - Should call the procedure by:
        Part (A):
            - call UpdateAllSubscribersAge(20);
        
        Part(B):
            - call UpdateAllSubscribersAgeWithCursor(40);
        
    - Column Age is added in Part(A), So not adding again in Part(B).
    - call Part(A) before Part(B).


