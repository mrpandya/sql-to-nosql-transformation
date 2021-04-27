-- -- Join the tables transactions, user_data and items 

-- SELECT t.transactionId,
--        u.userId,
--        u.username,
--        u.userPhonenumber,
--        i.itemId,
--        i.item,
--        i.itemPrice,
--        t.quantity,
--        t.cost
--     FROM transactions AS t 
--     JOIN user_data AS u ON t.userId = u.userId
--     JOIN items AS i ON t.itemId = i.itemId
-- ;

-- SELECT transactionId,cost FROM

SELECT t.transactionId,
       u.userId,
       u.username,
       u.userPhonenumber,
       i.itemId,
       i.item,
       i.itemPrice,
       t.quantity,
       t.cost
    FROM transactions AS t 
    JOIN user_data AS u ON t.userId = u.userId
    JOIN items AS i ON t.itemId = i.itemId
;