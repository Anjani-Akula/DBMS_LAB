-- Level 0
select count(*) from apps;
select avg(rating) from apps;
select max(rating) from apps;
select min(rating) from apps;
select sum(downloads) from apps;
select * from apps order by rating desc;
-- Level 1
select CategoryID,count(CategoryID) from apps group by CategoryID;
select CategoryID,avg(Rating) from apps group by CategoryID;
select max(price),min(price) from apps;
select * from apps order by downloads desc;
select DeveloperID,count(DeveloperID) from apps group by DeveloperID;
select categoryName,CategoryID from categories where CategoryID in(select CategoryID from apps group by CategoryID having count(CategoryID)>1);
-- Level 2
select developerID,sum(downloads) from apps group by developerID;
select PublisherID,avg(rating) from apps group by PublisherID;
select developername from developers where DeveloperID in(select developerID from apps group by developerID having count(developerID)>1);
select categoryname from categories where categoryID in (select categoryID from apps group by CategoryID having avg(rating)>4.3);
select categoryID,count(categoryID) from apps group by categoryID order by (count(categoryID)) desc; 
select appID from apps where rating in (select max(rating) from apps);
select developerID,sum(price) as total from apps group by DeveloperID;