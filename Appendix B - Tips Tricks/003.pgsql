CURSOR.execute (
    "SELECT * FROM user_account WHERE username = %s AND password = %s",
    (username, PASSWORD)
)