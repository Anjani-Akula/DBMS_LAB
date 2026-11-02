select A.appname,D.developername from apps A inner join developers D on A.developerid=D.DeveloperID;
select A.appname,P.publishername from apps A inner join publishers P on A.publisherid=p.publisherid;
select A.appname,C.categoryname from apps A inner join categories C on A.categoryid=C.categoryid;
select A.Appname,D.developername,P.publishername from Apps A inner join developers D 
on A.developerid=D.developerid inner join publishers P on A.publisherid=P.publisherid;
select A.AppName,D.developername,C.categoryname from Apps A inner join developers D on
A.developerid=D.developerid inner join categories C on A.CategoryID=C.CategoryID;
select P.publishername,A.appname from publishers P left join apps A on A.PublisherID=P.PublisherID;
select C.categoryname,A.appname from categories C left join apps A on A.categoryid=C.CategoryID;

-- Level 1
select P.publishername,A.appname from publishers P left join apps A on A.PublisherID=P.publisherID;
select A.appname,P.publishername from publishers P right join apps A on A.PublisherID=P.publisherID;
select C.Categoryname,A.appname from Categories C left join apps A on A.CategoryID=C.categoryID;
select A.appname,D.developername,D.Country from Apps A left join Developers D on A.developerID=D.developerID;

select A.appname,C.categoryname,P.publishername,D.developername from Apps A join categories C on 
A.CategoryID=C.CategoryID join Publishers P on P.publisherid=A.publisherid join Developers D
on D.DeveloperID=A.DeveloperID;
select A.appname,D.developername,D.Country from Apps A join developers D on 
A.developerid=D.developerID where D.country='USA';
select A.appname,C.categoryname,P.publishername from Apps A join categories C on A.categoryid=C.CategoryID
join Publishers P on A.publisherid=P.publisherid where C.CategoryName='gaming';
select A.appname,D.developername,A.rating from Apps A join developers D where A.rating>4.5;

-- LEVEL 2
select P.publishername,A.appname from Apps A right join publishers P on A.publisherid=P.publisherid;
select P.publishername,A.appname from publishers P left join Apps A on A.publisherid=P.publisherid 
where A.Appname is null;
select A.AppName,C.CategoryName from Apps A join categories C on A.CategoryiD=C.categoryid order by(C.categoryname);
select A.AppName,D.DeveloperName,C.categoryname,P.publishername,A.rating from apps A left join developers D on 
A.DeveloperID=D.DeveloperID left join categories C on A.CategoryID=C.CategoryID left join  Publishers P on A.PublisherID=
P.PublisherID ;
select * from Apps A join publishers P on A.PublisheriD=P.PublisheriD join
developers D on A.DeveloperID=D.DeveloperID where D.Country='USA' and P.PublisherName='Google Play';
select D.developername,A.appname from Developers D left join Apps A on A.DeveloperID=D.DeveloperID;
select A.Developername,B.developername,A.Country,B.Country from Developers A join Developers B on 
A.Developerid=B.developerid where A.Country=B.Country;
select P.PUblisherName,C.CategoryName from Publishers P cross join Categories C;
(select P.Publishername,A.Appname from Publishers P left join Apps A on A.Publisherid=P.Publisherid) union(select
 P.Publishername,A.Appname from Publishers P right join Apps A on A.Publisherid=P.Publisherid);
 select A.appname,C.categoryname,D.developername,P.PublisherName from Apps A join Categories C on A.CategoryID=
 C.CategoryID join Publishers P on A.PublisherID=P.PublisherID join developers D on D.DeveloperID=A.DeveloperID
 where C.CategoryName='Gaming' or C.CategoryName='Social';
select A.appname,C.categoryname,D.developername,A.rating from Apps A join Categories C on A.CategoryID=C.CategoryID 
join developers D on D.DeveloperID=A.DeveloperID where A.Rating between 4.3 and 4.7;
select D.developername,A.appname,D.Country from Apps A join Developers D on A.DeveloperID=D.DeveloperID 
where not D.Country='India';

-- Optional Practice Queries 
select D.developername,D.Country,count(A.Appid) as total_apps,avg(A.rating) as avg_rating from Apps A 
join developers D on A.Developerid=D.developerid group by(A.developerid) having count(A.appid)>1;
select upper(A.appname) as Appname,upper(D.developername) as DeveloperName,upper(D.country) as Country from apps A 
join Developers D on A.DeveloperID=D.developerID where D.Country='USA';
select P.publishername,count(A.appid) as Total_apps,sum(A.downloads) as total_downloads from apps A right join
Publishers P on A.publisherid=P.publisherid group by(P.publisherid) order by total_downloads desc;
select A.appname,D.developername,C.categoryname,round(A.rating) as round_rating from apps A join Developers D on 
A.DeveloperID=D.DeveloperID join categories C on C.CategoryID=A.CategoryID;
select D.developername,A.appname,P.publishername,convert(D.FoundedYear,char) as founded_year from Developers D join
Apps A on A.developerID=D.developerID join Publishers P on P.PublisherID=A.PublisherID;
select C.categoryname,count(A.appid) as total_apps,avg(A.rating) as avg_rating from categories C join Apps A on
A.categoryid=C.CategoryID group by(C.categoryid) having avg(A.rating)>4.3 order by avg_rating desc;