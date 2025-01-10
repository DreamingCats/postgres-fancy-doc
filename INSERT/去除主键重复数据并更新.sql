-- 去除主键重复数据并更新

/*
我有A、B两张表,表结构完全相同,根据cust_id,dt判断,如果B表有和A表相同的数据,则删除B表中对应的部分,否则不删除
处理后，插入A表数据到B表，确保B表不重复
*/

DELETE FROM B
WHERE EXISTS(
    SELECT 1
    FROM A
    WHERE A.cust_id = B.cust_id
    AND A.dt = B.dt
)
;

INSERT INTO B
SELECT * FROM A;