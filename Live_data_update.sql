https://trello.com/c/CKuDXAbq
update cqc."Establishment" set "MainServiceFKValue"=20 where "EstablishmentID"=340 and "LocationID"='1-5254278626';

--Verify the change reflected in table

\x 

select * from cqc."Establishment" where  "EstablishmentID"=340 and "LocationID"='1-5254278626';



https://trello.com/c/oeYhp3Ui


update cqc."Establishment" set "IsRegulated"=True,"LocationID"='1-5400068426' where "EstablishmentID"=337 ;

--Verify the change reflected in table

select * from cqc."Establishment" where "EstablishmentID"=337 ;


