--交换两列(column1和column2)
--你的sql并不需要增加辅助变量temp，只需要使用update语句即可完成交换两列的操作。

UPDATE T
SET column1 = column2,
    column2 = column1
;