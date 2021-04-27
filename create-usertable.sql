-- Creation of User Data Table
CREATE TABLE user_data (
    userId INTEGER PRIMARY KEY,
    username VARCHAR(20),
    userPhonenumber VARCHAR(13)
);

-- Insert data into the User Data Table
INSERT INTO user_data VALUES (
    1,
    'Smeet',
    '+919222777432'
);

INSERT INTO user_data VALUES (
    2,
    'Manan',
    '+918850773618'
);

INSERT INTO user_data VALUES (
    3,
    'abc',
    '+919096310052'
);