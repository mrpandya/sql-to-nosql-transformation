CREATE TABLE IF NOT EXISTS nosql_schema_table (
    transactionId INTEGER AUTO_INCREMENT,
    userId INTEGER,
    username VARCHAR(20),
    userPhonenumber VARCHAR(13),
    itemId INTEGER,
    item VARCHAR(255),
    itemPrice FLOAT,
    quantity INTEGER,
    cost FLOAT,
    PRIMARY KEY (transactionId, userId,itemId)   
);

INSERT INTO nosql_schema_table
    SELECT * FROM nosql_schema_view;