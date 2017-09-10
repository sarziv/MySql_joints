## MySql UNION
This is mySql union query

## Code
```
SELECT * 
FROM Customer AS a
LEFT OUTER JOIN Supplier AS o ON a.city = o.city
UNION 
SELECT * 
FROM Customer AS a
RIGHT OUTER JOIN Supplier AS o ON a.city = o.city
```
## Data tables
![Screenshot](datamodel.png)

## Phpmyadmin
![Screenshot](phpmyadmin.png)
This still have repeating information at id -> 3.

## Output
![Screenshot](conPrinted.png)

-firstname-lastname-city-companyname-
