-- 查询连接数
SELECT * FROM system.metrics WHERE metric LIKE '%Connection';


-- 当前正在执行的查询
SELECT query_id, user, address, query  FROM system.processes ORDER BY query_id;

-- 存储空间统计
SELECT name,path,formatReadableSize(free_space) AS free,formatReadableSize(total_space) AS total,formatReadableSize(keep_free_space) AS reserved FROM system.disks;

-- 慢查询
SELECT
    user,
    client_hostname AS host,
    client_name AS client,
    formatDateTime(query_start_time, '%T') AS started,
    query_duration_ms / 1000 AS sec,
    round(memory_usage / 1048576) AS MEM_MB,
    result_rows AS RES_CNT,
    result_bytes / 1048576 AS RES_MB,
    read_rows AS R_CNT,
    round(read_bytes / 1048576) AS R_MB,
    written_rows AS W_CNT,
    round(written_bytes / 1048576) AS W_MB,
    query
FROM system.query_log
WHERE type = 2
ORDER BY query_duration_ms DESC
    LIMIT 10;

-- 查看库表资源占用情况
select
    sum(rows) as row,--总行数
    formatReadableSize(sum(data_uncompressed_bytes)) as ysq,--原始大小
    formatReadableSize(sum(data_compressed_bytes)) as ysh,--压缩大小
    round(sum(data_compressed_bytes) / sum(data_uncompressed_bytes) * 100, 0) ys_rate--压缩率
from system.parts
where database='datacenter';

-- 查看库中表行数统计
select database,table,sum(rows) as rows
from system.parts
where database='datacenter'
group by database, table
order by rows desc;


select distinct table from system.parts where database='datacenter';


-- drop  database datacenter;

select * from datacenter.`3cdb162688e14cc6a1bc65befca5347c_YC150`;