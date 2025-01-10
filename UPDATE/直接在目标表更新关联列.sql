--直接在目标表更新关联列

/*
我有表table_t的机构号,需要根据机构码表直接更新机构名称
*/

UPDATE table_t AS T
SET inst_nme = ORG.inst_name
FROM ORG_CODE_TABLE AS ORG
WHERE T.inst_cd = ORG.inst_cd
;
