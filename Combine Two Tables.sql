SELECT p.firstname, p.lastname, a.city, a.state 
FROM Address AS a
RIGHT JOIN Person AS p
ON a.personId = p.personID 