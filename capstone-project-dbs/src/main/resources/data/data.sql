create table  custodian(
    custodian_id varchar(255),
     custodian_name varchar(255) );

create table order_book
(order_id varchar(255) ,
 limit_order bit(1) ,
 order_direction varchar(255),
 order_status varchar(255),
 price double , quantity int ,
 time_stamp datetime,
 client_id varchar(255),
 instrument_id varchar(255));

create table instrument
(instrument_id varchar(255),
 expiry_date datetime,
 face_value double,
 instrument_name varchar(255),
 min_quantity int);

create table stocks
(
    stock_id varchar(255),
    quantity int,
    client_id varchar(255),
    instrument_id varchar(255)
);

create table client
(
    client_id varchar(255),
    client_name varchar(255),
    transaction_limit double,
    custodian_id varchar(255)
);

alter table  instrument ADD  primary key (instrument_id);

alter  table  stocks ADD primary key (stock_id);

alter table  order_book add primary key (order_id);

INSERT into INSTRUMENT VALUES
                           ('I001',NULL,100,'US treasury Bills',25),
                           ('I002',NULL,1000,'RBI-2026 -6.5%',25),
                           ('I003',NULL,1000,'RBI-2045 -8%',25),
                           ('I004',NULL,NULL,'USDINR',25),
                           ('I005','2021-10-28',NULL,'EUR USD-FUT',25);

insert into CUSTODIAN values
                          ('CS002','The Bank of New York Mellon CorporationU.S.'),
                          ('CS006','Northern Trust CorporationU.S.'),
                          ('CS001','BNP Paribas Securities ServicesFrance'),
                          ('CS005','Credit SuisseSwitzerland'),
                          ('CS003','EuroclearBelgium'),
                          ('CS004','HSBC Securities ServicesUnited Kingdom');

insert into CLIENT values
                       ('DBS001','MACQUARIE BANK LIMITED',14000000,'CS001'),
                       ('DBS002','LLOYDS BANK CORPORATE MARKETS PLC',14000000,'CS001'),
                       ('DBS003','KEYBANK NATIONAL ASSOCIATION',18000000,'CS001'),
                       ('DBS004','JP MORGAN SECURITIES LLC',5000000,'CS001'),
                       ('DBS005','JEFFERIES FINANCIAL SERVICES, INC.',21000006,'CS002'),
                       ('DBS006','JB DRAX HONORE UK LTD',21000006,'CS002'),
                       ('DBS007','J ARON & COMPANY SINGAPORE PTE',18000006,'CS002'),
                       ('DBS008','J ARON & COMPANY LLC',7500003,'CS002'),
                       ('DBS009','INTESA SANPAOLO SPA',21000012,'CS002'),
                       ('DBS010','ING CAPITAL MARKETS LLC',21000012,'CS002'),
                       ('DBS011','ICBC STANDARD BANK PLC',18000012,'CS002'),
                       ('DBS012','HSBC BANK USA NA',5000004,'CS002'),
                       ('DBS013','HSBC BANK PLC',17500015,'CS003'),
                       ('DBS014','GOLDMAN SACHS PARIS INC ET CIE',28000024,'CS003'),
                       ('DBS015','GOLDMAN SACHS MEXICO CASA DE BOLSA SA DE CV',12000012,'CS003'),
                       ('DBS016','GAIN GTX LLC',12500015,'CS003'),
                       ('DBS017','FIFTH THIRD BANK NATIONAL ASSOCIATION',7000008,'CS003'),
                       ('DBS018','ED&F MAN DERIVATIVE PRODUCTS INC',28000032,'CS003'),
                       ('DBS019','DEUTSCHE BANK AG',12000016,'CS003'),
                       ('DBS020','DARBY SWAP TRADING LLC',7500012,'CS003'),
                       ('DBS021','DANSKE BANK AS',21000030,'CS003'),
                       ('DBS022','CREDIT SUISSE SECURITIES EUROPE LIMITED',35000050,'CS003'),
                       ('DBS023','COOPERATIEVE RABOBANK UA',12000020,'CS003'),
                       ('DBS024','COMMONWEALTH BANK OF AUSTRALIA',7500015,'CS004'),
                       ('DBS025','CITIGROUP ENERGY INC',21000036,'CS004'),
                       ('DBS026','CITIBANK N A',14000024,'CS004'),
                       ('DBS027','CITADEL SECURITIES SWAP DEALER LLC',36000072,'CS004'),
                       ('DBS028','CARGILL INCORPORATED',10000024,'CS005'),
                       ('DBS029','CAPITAL ONE NATIONAL ASSOCIATION',10500021,'CS005'),
                       ('DBS030','CANTOR FITZGERALD SECURITIES',21000042,'CS005'),
                       ('DBS031','CANADIAN IMPERIAL BANK OF COMMERCE',12000028,'CS005'),
                       ('DBS032','BP ENERGY COMPANY',7500021,'CS006'),
                       ('DBS033','BOFA SECURITIES JAPAN CO LTD',1500000,'CS006');

-- Default Stocks Data
insert into stocks value
    ('98e42d6e-7bdc-4fd4-a15b-e22d0b10a421','25','DBS001','I001'),
    ('36d055cf-d3e8-4765-953b-03d12d8ea296','25','DBS001','I002'),
    ('8e02fcb1-7e29-4d5a-8eff-9d924c6278e6','25','DBS001','I003'),
    ('f8e8a6f5-bb5d-44e0-b6b5-c6ed4869a957','25','DBS001','I004'),
    ('28a6295e-5d82-4ebb-8252-120bec58eed8','25','DBS001','I005'),
    ('cd1e67e3-4fe5-484b-95d4-fe77af23d27d','25','DBS002','I001'),
    ('75eed9f1-69fa-4b7e-980a-2f8983300bed','25','DBS002','I002'),
    ('2c137566-8f92-446a-9e91-6c7446461149','25','DBS002','I003'),
    ('b8897d5f-1f53-4605-a5cd-10d576bf3c2f','25','DBS002','I004'),
    ('0d863c4e-e3a8-4030-952b-5c6cbc736743','25','DBS002','I005'),
    ('9d88ac3e-e7f5-4761-9baf-2557e350e609','25','DBS003','I001'),
    ('27277582-fb55-433b-9d24-8b44f16bf146','25','DBS003','I002'),
    ('8ec3e3b4-e225-4d84-945f-c65588fb5d50','25','DBS003','I003'),
    ('5d22a653-3acc-450d-a998-ac1b33d89ccc','25','DBS003','I004'),
    ('b0db653f-45e6-4616-9e68-cc4270cb1256','25','DBS003','I005'),
    ('ef08dcb0-0049-4886-9980-281793da11c0','25','DBS004','I001'),
    ('8bc538be-6e8f-4635-ae46-9bc0d745dfbd','25','DBS004','I002'),
    ('a8ecdf13-885f-4174-9788-88cf376f5cae','25','DBS004','I003'),
    ('edd1f46c-c924-4183-b7b5-df6dd694a96d','25','DBS004','I004'),
    ('939ae38e-d166-4b22-a77b-5c6ca1e72b92','25','DBS004','I005'),
    ('3006325e-6907-4ba5-b6e8-0a5349cbb5e8','25','DBS005','I001'),
    ('40ad31f8-50b8-443f-b9d4-a6221664982f','25','DBS005','I002'),
    ('4cbcc29c-9243-46df-a60e-d1e9fe8fb518','25','DBS005','I003'),
    ('ec7c3752-e7e5-4b10-83b4-7dc0c27b7664','25','DBS005','I004'),
    ('9b1457eb-c3c7-44b8-b874-b6d482ec82bb','25','DBS005','I005'),
    ('94eca863-952e-4666-bfa4-de96832e12c5','25','DBS006','I001'),
    ('e86dc6c3-8f0b-4dbc-b1d4-159710ea6bc0','25','DBS006','I002'),
    ('a85d92fb-364d-4cf0-afe8-5a6542b74426','25','DBS006','I003'),
    ('83469b84-efd7-4946-afc7-6745df2e9f79','25','DBS006','I004'),
    ('c44c0aac-f044-4167-bfca-c413a9257a68','25','DBS006','I005'),
    ('89039beb-259f-4beb-bdd0-01f7cf33920c','25','DBS007','I001'),
    ('6bf94126-f2e2-49a0-9687-c8b2b3aaca07','25','DBS007','I002'),
    ('c8728bb6-9f8d-4e66-84ff-ecf707b6934d','25','DBS007','I003'),
    ('5bed6e43-29eb-4000-ac2b-bb04657c8113','25','DBS007','I004'),
    ('a1159869-573d-4c3f-b9fb-b5a5bc6cc3cf','25','DBS007','I005'),
    ('1454856b-2342-40ab-b679-86d157e860d9','25','DBS008','I001'),
    ('7a818a78-9609-46d3-a06e-ee52e88e1f07','25','DBS008','I002'),
    ('3414d578-bb75-4ca7-be17-9cf0e0b270de','25','DBS008','I003'),
    ('8180f15e-6e7c-4dec-ad12-c47640bc08c1','25','DBS008','I004'),
    ('d491afb2-c077-4ed4-9836-d4f274a828c6','25','DBS008','I005'),
    ('702cd0f2-f13d-4d05-9716-dd9467d778a0','25','DBS009','I001'),
    ('c9d3ec0f-45fc-43af-918a-f75e1607156e','25','DBS009','I002'),
    ('eaf4d421-fcdc-4668-94a1-6a1ec618ebac','25','DBS009','I003'),
    ('040a76b5-1a16-496e-ac22-3505d1e59878','25','DBS009','I004'),
    ('0f22437d-69d7-4ad3-b9ce-59fa36cbc118','25','DBS009','I005'),
    ('6c0587f0-3537-4b94-ac64-a9b20e0a1cef','25','DBS010','I001'),
    ('f3190607-09b4-4005-af37-6ba5a761bb1d','25','DBS010','I002'),
    ('8568f816-73f6-4d1b-b56a-abd37da3488c','25','DBS010','I003'),
    ('abd0478e-be00-4fb9-8261-c0060bd56071','25','DBS010','I004'),
    ('df63135b-34f5-4daf-9008-d14215084ad2','25','DBS010','I005'),
    ('ca4a424b-417b-4153-91dc-09eb203d6f44','25','DBS011','I001'),
    ('978ff70e-d407-42d7-9e3f-209a1f465410','25','DBS011','I002'),
    ('030d9c43-e726-4b75-be30-20b8b893632d','25','DBS011','I003'),
    ('d426e166-a6cc-4b2c-836c-5c3c57d679ce','25','DBS011','I004'),
    ('63bb9b46-097b-4448-af36-63fae672be38','25','DBS011','I005'),
    ('7843e72d-ca4d-4bb7-a393-bf0d32e852d5','25','DBS012','I001'),
    ('16548461-a989-4c9f-bb73-5ef087a62a01','25','DBS012','I002'),
    ('ade970d5-a948-41b4-996c-94ffc06dbf00','25','DBS012','I003'),
    ('b71e1517-48b0-40a3-931a-0847dd57594e','25','DBS012','I004'),
    ('026d1f50-fdb7-40cb-9412-f9f827af86cd','25','DBS012','I005'),
    ('1b487c05-017d-47da-8c0b-9d1e9713b3a8','25','DBS013','I001'),
    ('5a107261-dfa3-4a98-853f-c8d8fda7e354','25','DBS013','I002'),
    ('c5011455-e2a3-45e1-b090-a9d991dfa1cc','25','DBS013','I003'),
    ('3237a857-3ebe-4f9c-a774-0c6f13ad83b2','25','DBS013','I004'),
    ('a4a64fd4-6d55-4836-9373-87b8abab60ed','25','DBS013','I005'),
    ('3ab836a6-2d5f-46db-addf-56e5954e2fc7','25','DBS014','I001'),
    ('fc5d53a1-ba94-4383-86bb-84a66f8d3579','25','DBS014','I002'),
    ('a8c7422f-2f7c-4c65-abae-19aa330b9e27','25','DBS014','I003'),
    ('53e6a538-9b38-4476-a824-abf45e4e9726','25','DBS014','I004'),
    ('25c068a0-f4d1-4c5c-9ed3-a028114709a0','25','DBS014','I005'),
    ('4991c6a9-df06-44d9-ada8-6d42a3175827','25','DBS015','I001'),
    ('e4ebbf0c-bbc5-4967-b30c-168dd286190b','25','DBS015','I002'),
    ('9318d2fa-d891-41c0-af88-29c6220b10bf','25','DBS015','I003'),
    ('4cfca1a9-a6f5-4cf0-b878-587ec2cc1162','25','DBS015','I004'),
    ('7c7b0b28-3cbd-460f-9c1b-5b19eaf5af48','25','DBS015','I005'),
    ('2dedf30e-37a1-45c4-b600-92029cd4e586','25','DBS016','I001'),
    ('1f27b8e0-b627-46fa-8d46-b86061f459da','25','DBS016','I002'),
    ('3156efaf-7a2e-4b83-8d14-9748a51259f1','25','DBS016','I003'),
    ('3cc70bae-3f01-4aad-8811-a8a98d250c4b','25','DBS016','I004'),
    ('7a6ed814-1e50-4af0-b0db-1b75a2ab1811','25','DBS016','I005'),
    ('9951ff6b-3df5-4967-bba1-63fcc3388c69','25','DBS017','I001'),
    ('da843e51-b36a-4783-a567-c609b9b2c660','25','DBS017','I002'),
    ('743c80ac-3884-4b6a-980e-4e0eb7b8ac4d','25','DBS017','I003'),
    ('67736feb-21bb-478b-bb3b-b940d2a3e170','25','DBS017','I004'),
    ('4ab54102-c8d2-4293-99f4-f30be1a14af5','25','DBS017','I005'),
    ('79a2d245-b69d-4e9a-bddb-c305eb557a83','25','DBS018','I001'),
    ('8d7e3435-986f-478b-a35c-aef07e5635f3','25','DBS018','I002'),
    ('65a043dd-a6e6-4ad4-9e7a-92079f628c64','25','DBS018','I003'),
    ('ff775528-c64a-498c-87ef-2c338dd2de31','25','DBS018','I004'),
    ('74d4057a-31d4-4699-b558-d3179963b7ac','25','DBS018','I005'),
    ('ded836d0-edc9-4b0e-9353-6c6df09eb585','25','DBS019','I001'),
    ('12c12d6d-cc7b-4427-9af1-d804f3249506','25','DBS019','I002'),
    ('6d1b82b1-4f38-4d74-bbae-8cbb98ad7299','25','DBS019','I003'),
    ('6727d1fd-a756-4f2a-9d20-974b2974fff8','25','DBS019','I004'),
    ('ae6bee74-acec-4e08-9a62-081f37a94887','25','DBS019','I005'),
    ('814d1d2b-dde1-4057-82f2-e49d4d761b32','25','DBS020','I001'),
    ('d7dac079-42f1-415d-ae85-851dff71d51c','25','DBS020','I002'),
    ('e77ceb44-959c-4dff-92ef-914df4a8b6cc','25','DBS020','I003'),
    ('ed39a83a-4351-46f1-b269-1d53384e8540','25','DBS020','I004'),
    ('170bf77d-98ce-476b-9921-43e73f1f7d44','25','DBS020','I005'),
    ('fdf638b5-8884-425a-9e33-61dd0b5167df','25','DBS021','I001'),
    ('83b4aadf-38c6-4d94-aa6b-954249fa55a2','25','DBS021','I002'),
    ('77a661e6-3060-4b7e-a2b4-32b87b784b40','25','DBS021','I003'),
    ('ad99a56d-6570-4739-a473-64fa75231175','25','DBS021','I004'),
    ('91f522ce-a464-44e8-9676-df3f37305d00','25','DBS021','I005'),
    ('83f8f669-19a8-427a-9318-75ce0c921630','25','DBS022','I001'),
    ('ed79dbd6-1ab8-42a0-97c5-30cc2c2202e2','25','DBS022','I002'),
    ('e98f30a6-1d40-4fef-94a5-28f59fc1d857','25','DBS022','I003'),
    ('2d80af9d-3a30-41c2-99de-3877865165dc','25','DBS022','I004'),
    ('d8f95f5f-3c33-4452-afd0-59f2110dd358','25','DBS022','I005'),
    ('29b530b8-bb31-4717-8fa3-bb7916879aa7','25','DBS023','I001'),
    ('eec3fa80-14e3-456b-b9e0-2f2f4d4d04e3','25','DBS023','I002'),
    ('1a5fc1e4-30dd-4c5d-a8ac-75a14adbedc0','25','DBS023','I003'),
    ('93e89c7c-a0b7-48f1-8443-aa9cfeda9a78','25','DBS023','I004'),
    ('a6cc3c07-9885-4645-9010-24bd77a780b6','25','DBS023','I005'),
    ('d8a5b759-8c57-4788-9d48-2c8d296a2bd0','25','DBS024','I001'),
    ('ea505431-9f4d-4105-9ffb-08589efea0e4','25','DBS024','I002'),
    ('cfb0df03-8ced-455c-a6ce-b4106658b0fc','25','DBS024','I003'),
    ('a934db68-58e9-41f5-86e9-4a02165c7fb9','25','DBS024','I004'),
    ('e7712cb2-faaa-436e-b602-76d210571776','25','DBS024','I005'),
    ('ba74f6be-aba6-4a76-b9e2-707bd5a534b6','25','DBS025','I001'),
    ('15b3e650-9bae-4ff4-a70b-105e4024f459','25','DBS025','I002'),
    ('6f7b8488-4b1a-42fe-9086-7f54a8e39dbe','25','DBS025','I003'),
    ('62594373-398d-48d0-943e-d101d594a441','25','DBS025','I004'),
    ('9dd102e3-556b-43d8-bfc7-cfe6932f9bd5','25','DBS025','I005'),
    ('e24cd3be-fc89-4fc3-be25-3c8349e59d78','25','DBS026','I001'),
    ('93a4c66b-8dbc-4101-88bd-e2a8d6b890eb','25','DBS026','I002'),
    ('88a749a7-1328-403e-aa6d-093ba0cc2f1c','25','DBS026','I003'),
    ('3cd54c7e-df98-44b5-94ef-ca444e3f5892','25','DBS026','I004'),
    ('4b44cd21-870d-4fad-abb6-b0c7f528685f','25','DBS026','I005'),
    ('b77a2029-4e8d-42a5-8def-10d7e4e5a9fd','25','DBS027','I001'),
    ('284012d1-bca7-41de-9a18-f4b1f153d74a','25','DBS027','I002'),
    ('03300175-dc26-417a-aa6b-3df80c04acc7','25','DBS027','I003'),
    ('f297f1a8-a8c7-40f3-9849-669456a53580','25','DBS027','I004'),
    ('0dbb5f96-2edb-4c3f-8f87-bd32fe71140e','25','DBS027','I005'),
    ('76dbc428-b5f3-4815-a2c9-409e374a1009','25','DBS028','I001'),
    ('43a22f5a-ec64-447a-8dce-4fd84bd00283','25','DBS028','I002'),
    ('b8f3e0fa-97be-4526-b657-f6220325815c','25','DBS028','I003'),
    ('12bb8716-cfb7-4057-80d6-7b1ea72d01b3','25','DBS028','I004'),
    ('a7f17375-8ec8-4814-b3ec-39aca152d702','25','DBS028','I005'),
    ('7a6c5409-f18f-445f-9b9d-2623deed438e','25','DBS029','I001'),
    ('47b284a0-01c2-4528-8fbe-e550523ecd09','25','DBS029','I002'),
    ('95add065-120a-4615-b77a-b19065350d93','25','DBS029','I003'),
    ('021b0594-25bd-47cb-bd5f-9efefe6b3eab','25','DBS029','I004'),
    ('dc618b58-bd09-488a-a521-96f7c99d5c15','25','DBS029','I005'),
    ('ddeff8d4-d35a-4395-841c-a680b88ea1f7','25','DBS030','I001'),
    ('d0e28e6f-9989-4d70-949d-41a8884a0d85','25','DBS030','I002'),
    ('3d6a106e-4e45-4b4d-a72b-bff671abe4e5','25','DBS030','I003'),
    ('17f39beb-a425-4e3f-87de-343b991a82ff','25','DBS030','I004'),
    ('84f21def-ae77-45b9-a5dc-f8dac5adbf9c','25','DBS030','I005'),
    ('74ba0936-c327-4ead-8c46-6fc5d346ed74','25','DBS031','I001'),
    ('6adee717-d498-487d-9bac-9fbad2783e21','25','DBS031','I002'),
    ('c022e5d2-68d1-4722-9ff8-2a0652d230f9','25','DBS031','I003'),
    ('2c443ebc-70aa-484a-bbe4-d7eebf3395b6','25','DBS031','I004'),
    ('d4aeb034-d2e2-4869-8a71-7bd710411021','25','DBS031','I005'),
    ('c4d88774-2014-4cca-a0f4-a36831b3de51','25','DBS032','I001'),
    ('62b8651b-6f71-4423-ba54-900c0bebce16','25','DBS032','I002'),
    ('5b5aad21-7fbc-46cc-a434-0aedc6023c8d','25','DBS032','I003'),
    ('1cbfcf4d-d426-4889-8600-bab0962381fe','25','DBS032','I004'),
    ('20e9f681-9772-4730-b5e8-fa1e780f94c0','25','DBS032','I005'),
    ('10fc500f-a95c-48ec-86d0-9ae5b9a9b426','25','DBS033','I001'),
    ('25471158-42be-4b01-becb-cab4ff72b4fc','25','DBS033','I002'),
    ('3830e6ae-ff5d-42ff-a0cb-4514c6fef313','25','DBS033','I003'),
    ('171f3750-a3e1-4c85-b3dc-e01cdc312814','25','DBS033','I004'),
    ('b569517b-95af-418a-95b1-dc487a70a420','25','DBS033','I005');
