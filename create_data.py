import random

USER_COUNT = 7
ITEM_COUNT = 8

TOTAL_TRANSACTIONS = 1000000

INSERT_TRANASCTION_QUERY = '''
    INSERT INTO transactions (
        userId,
        itemId,
        quantity,
        cost
    ) VALUES (
        {},
        {},
        {},
        {}
    );
'''

def main():
    with open('insert_trans_data.sql','w') as f:
        # f.append('CREATE PROCEDURE add_transactions')
        for i in range(TOTAL_TRANSACTIONS):
            uid = random.randrange(1,USER_COUNT+1)
            iid = random.randrange(1,ITEM_COUNT+1)
            quantity = random.randrange(1,20)
            cost = random.randrange(1,11)*quantity
            f.write(INSERT_TRANASCTION_QUERY.format(uid,iid,quantity,cost))


if __name__ == "__main__":
    main()