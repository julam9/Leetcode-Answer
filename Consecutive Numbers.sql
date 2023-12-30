With cte_num AS (
Select distinct Num AS V1, LEAD(num,1) Over (order by id) AS V2, LEAD(num,2) Over (order by id) AS V3 From Logs
)
Select V1 AS ConsecutiveNums from cte_num
where V1=V2
And V2=V3