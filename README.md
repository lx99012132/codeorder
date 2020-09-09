hdl-user(用户表)

| 序号 | 列名   | 数据类型 | 长度 | 主键 | 是否为空  |
| ---- | ------ | -------- | ---- | ---- | --------- |
| 1    | uid    | int      | 11   | 是   | not  null |
| 2    | uname  | varchar  | 32   |      | not  null |
| 3    | upwd   | varchar  | 32   |      | not  null |
| 4    | avatar | varchar  | 128  |      | null      |

 

hdl-cart(购物车)

| 序号 | 列名     | 数据类型 | 长度 | 主键 | 是否为空  |
| ---- | -------- | -------- | ---- | ---- | --------- |
| 1    | table_id | int      | 16   | 是   | not  null |
| 2    | menu_id  | int      | 16   |      | not  null |
| 3    | count    | int      | 32   |      | not  null |
| 4    | soup_id  | int      | 11   |      | not  null |

 

hdl_menu(菜单表)

| 序号 | 列名   | 数据类型 | 长度  | 主键 | 是否为空  |
| ---- | ------ | -------- | ----- | ---- | --------- |
| 1    | m_id   | int      | 11    | 是   | not  null |
| 2    | image  | varchar  | 128   |      | null      |
| 3    | detail | varchar  | 128   |      | null      |
| 4    | price  | decimal  | (6,2) |      | not  null |
| 5    | spec   | varchar  | 64    |      | not  null |
| 6    | m_name | varchar  | 32    |      | not  null |

 

hdl_menu_class(菜单分类表)

| 序号 | 列名       | 数据类型 | 长度 | 主键 | 是否为空  |
| ---- | ---------- | -------- | ---- | ---- | --------- |
| 1    | class_id   | int      | 11   | 是   | not  null |
| 2    | class_name | varchar  | 32   |      | null      |

 

hdl_order(点餐单)

| 序号 | 列名                | 数据类型 | 长度   | 主键 | 是否为空     |
| ---- | ------------------- | -------- | ------ | ---- | ------------ |
| 1    | order_id(编号)      | int      | 11     | 是   | not  null    |
| 2    | order_oid（菜号）   | int      | 11     |      | foregin  key |
| 3    | order_total（总价） | decimal  | (10,2) |      | not  null    |
| 4    | time                | date     |        |      | not  null    |
| 5    | order_table（桌号） | int      | 11     |      | foregin  key |
| 6    | count               | varchar  | 32     |      | not null     |

 

hdl_assess(菜桌表)

| 序号 | 列名   | 数据类型 | 长度 | 主键 | 是否为空  |
| ---- | ------ | -------- | ---- | ---- | --------- |
| 1    | t_name | varchar  | 32   |      | not  null |
| 2    | t_id   | int      | 11   | 是   | not  null |

 

hdl-soup（口味表）

| 序号 | 列名      | 数据类型 | 长度 | 主键 | 是否为空  |
| ---- | --------- | -------- | ---- | ---- | --------- |
| 1    | soup_id   | int      | 11   | 是   | not  null |
| 2    | soup_name | varchar  | 32   |      | null      |

 

 

hdl-evaluate(评价表)

| 序号 | 列名     | 数据类型 | 长度 | 主键 | 是否为空  |
| ---- | -------- | -------- | ---- | ---- | --------- |
| 1    | e_id     | int      | 11   | 是   | not  null |
| 2    | evaluate | varchar  | 320  |      | null      |

 