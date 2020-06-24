

#### 将AnalyticDB for MySQL数据导出到OSS

```mySQL
CREATE TABLE IF NOT EXISTS oss_export_test_external_table
(
uid string,
other string
)
ENGINE='OSS'
TABLE_PROPERTIES='{
"endpoint":"oss-cn-hangzhou-internal.aliyuncs.com",
"url":"oss://bucket-name/adb_data/",
"accessid":"LTAIF****5FsE",
"accesskey":"Ccw****iWjv",
"delimiter":";",
}'
;
```

```mysql
insert into oss_export_test_external_table
select * from adb_oss_import_test
;
```



#### 将AnalyticDB for MySQL数据导出到OSS

```mySQL
CREATE TABLE IF NOT EXISTS oss_import_test_external_table
(
uid string,
other string
)
ENGINE='OSS'
TABLE_PROPERTIES='{
"endpoint":"oss-cn-hangzhou-internal.aliyuncs.com",
"url":"oss://bucket-name/adb/oss_import_test_data.txt",
"accessid":"LTAIF****5FsE",
"accesskey":"Ccw****iWjv",
"delimiter":";",
}'
;
```

```mysql
CREATE TABLE IF NOT EXISTS adb_oss_import_test
(
uid string,
other string
)
DISTRIBUTED BY HASH(uid)
;
```

```mysql
# 
insert into adb_oss_import_test
select * from oss_import_test_external_table
;

# 
insert overwrite into adb_oss_import_test
select * from oss_import_test_external_table
;

# 异步
submit job insert overwrite into adb_oss_import_test
select * from oss_import_test_external_table 
;
+---------------------------------------+
| job_id                                |
+---------------------------------------+
| 2020112122202917203100908203303000715 |
```

