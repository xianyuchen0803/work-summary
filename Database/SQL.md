[toc]

## 1、`sql`查询之分页查询

```sql
select *
	from 数据源
		where 过滤条件
			group by 分组字段
				having 对统计字段进行过滤
					order by 排序字段 排序的方式
						limit m,n
```

- **--m的含义表示从数据的第m条开始查询（`mysql`中第一条数据m=0）**
- **--n的含义是从第m条数据开始往后查询n条数据**

通过以上的查询总结出公式：

- **--m=（`currentPage`-1）\*`linesize`**
- **--n=`linesize`**