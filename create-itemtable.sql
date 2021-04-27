-- Ceate the table for the stationary details.

CREATE TABLE IF NOT EXISTS items (
    itemId INTEGER PRIMARY KEY,
    item VARCHAR(255),
    itemPrice FLOAT
);
INSERT INTO items VALUES(
    1,
    'pen',
    10
);
INSERT INTO items VALUES(
    2,
    'pencil',
    5
);INSERT INTO items VALUES(
    3,
    'notebook',
    30
);INSERT INTO items VALUES(
    4,
    'eraser',
    2
);