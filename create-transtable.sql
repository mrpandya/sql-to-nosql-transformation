-- Create the transaction table
CREATE TABLE IF NOT EXISTS transactions(
    transactionId INTEGER AUTO_INCREMENT PRIMARY KEY,
    userId INTEGER,
    itemId INTEGER,
    quantity INTEGER,
    cost FLOAT,
    FOREIGN KEY (itemId) REFERENCES items(itemId),
    FOREIGN KEY (userId) REFERENCES user_data(userId)
);
-- Insert values into the transaction table
INSERT INTO transactions (
    userId,
    itemId,
    quantity,
    cost
) VALUES (
    1,
    2,
    3,
    15
);

INSERT INTO transactions (
    userId,
    itemId,
    quantity,
    cost
) VALUES (
    2,
    3,
    2,
    10
);

INSERT INTO transactions (
    userId,
    itemId,
    quantity,
    cost
) VALUES (
    1,
    4,
    2,
    30
);

INSERT INTO transactions (
    userId,
    itemId,
    quantity,
    cost
) VALUES (
    1,
    2,
    3,
    15
);