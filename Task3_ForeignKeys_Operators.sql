--  Level 0
ALTER TABLE Apps ADD CONSTRAINT fk_developer FOREIGN KEY(DeveloperID) REFERENCES developers(DeveloperID);
ALTER TABLE Apps ADD CONSTRAINT fk_publisher FOREIGN KEY(PublisherID) REFERENCES publishers(PublisherID);
ALTER TABLE Apps ADD CONSTRAINT fk_category FOREIGN KEY(CategoryID) REFERENCES categories(CategoryID);
SELECT * FROM Apps WHERE(Rating>4.5);
SELECT * FROM Apps WHERE(price=0);
SELECT * FROM apps WHERE(CategoryID=305);
-- Level 1
SELECT * FROM Apps WHERE(Downloads>500000000);
SELECT * FROM Apps WHERE(Rating BETWEEN 4.4 AND 4.6);
SELECT * FROM Apps WHERE Price IN (0,299);
SELECT * FROM Apps WHERE AppName LIKE 'G%';
SELECT * FROM Apps WHERE AppName LIKE '%Google%';
SELECT * FROM Apps WHERE(Rating>4.0 AND Downloads>500000000);
SELECT * FROM Apps WHERE(CategoryID=301 or CategoryID=305);
-- Level 2 --
SELECT * FROM Apps WHERE NOT AppName LIKE 'G%';
SELECT * FROM Apps WHERE(Rating<4.5 or Downloads>1000000000);
SELECT * FROM Developers WHERE(DeveloperName LIKE '%a%');
SELECT * FROM Apps WHERE PublisherID IN(201,204);
SELECT * FROM Apps;
INSERT INTO Apps(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
VALUES(1012,'Ninja',105,202,306,4.3,500000000,0.00);
SELECT * FROM Apps;
SELECT * FROM Apps WHERE(CategoryID=305);