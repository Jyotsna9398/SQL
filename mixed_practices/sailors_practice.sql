select * from sailors;
select * from boats;
select * from reserves;


--. Find all information of sailors who have reserved boat number 101

select s.* from sailors s  join reserves r 
on s.sid=r.sid
where r.bid=101;

--Find the names of sailors who have reserved a red boat, and list in the order of age.

select s.sname,s.age,b.color from sailors s join reserves r 
on s.sid=r.sid 
join boats b
on r.bid=b.bid
where b.color='red'
order by 2;

--Find the names of sailors who have reserved at least one boat.
select s.sname from sailors s ,reserves r 
where s.sid=r.sid having count(r.bid)>=1 group by s.sname;

--Find the ids and names of sailors who have reserved two different boats on the same day

SELECT DISTINCT S.sid, S.sname
FROM Sailors S, Reserves R1, Reserves R2
WHERE S.sid = R1.sid AND S.sid = R2.sid
AND R1.day = R2.day AND R1.bid <> R2.bid;


SELECT sname, age, rating + 1 sth,rating,(2*rating) as sth2
FROM Sailors
WHERE ((2* rating -1) > 10) AND sname = 'Bob;';


