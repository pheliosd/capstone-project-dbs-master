# capstone-project-dbs-master
 



# Frontend 

| **Client ID**       | Drop Down ( RDB1)                                    |
| ------------------- | ---------------------------------------------------- |
| **Client Name**     | Auto Fill In                                         |
| **Instrument ID**   | Drop Down ( RDB2) ID (Name[:10])                     |
| **Instrument Name** | Auto                                                 |
| Face Value          | Auto                                                 |
| Expiry Date         | Auto                                                 |
| Price               | (constrain +-12% of facevalue)                       |
| Quantity            | 20 (constrain on sell should be less than his stock) |
| Direction           | Drop Down (buy/sell)                                 |
| Limit Order         | True/False                                           |





# Backend

## Endpoints

* Endpoint Client details with ID
* Instrument Details with Instruement ID
* Stocks by Client ID

## Tables

1. Client Table ( CID FK) **[ client_id(PK), client_name, custodian_id(FK), transaction_limit ]**
2. Stocks **[ stock_id(PK), client_id(FK), instrument_id(FK),quantity ]**
3. Custodian Table **[ custodian_id,custodian_name]**
4. Instrument Table **[ instrument_id,instrument_name,face_value(nullable), expiry_date(nullable),min_quantity,]**
5. OrderBook ( Buy and Sell Order) **[ order_id(PK), client_id(FK),instrument_id(FK), price,quantity, direction** **,limit_order:boolean, status:{PROCESSING|COMPLETE|CANCELLED}]**

## Tasks

1. Project Setup ( Error Handler, Dependecies) --> Dinakar, Sivateja, Karan, Hemanth

2. Creating Entities - > Sai Varshith, Durga

3. Repositories & Queries --> SAi varshith, Durga

4. Endpoint/ Controllers ( Models) --> Akhilesh

5. Services --> Dinakar, Hemanth

6. Security JWT Auth ---> NaN

   



## Issues 

1. Initial commit  --> Complete code with the combination of Frontend and Backend

2. Update in Mariadbsql   --> update of sql commandss and structure 

3. Update in readme.md  --> a complete structure of Readme
 