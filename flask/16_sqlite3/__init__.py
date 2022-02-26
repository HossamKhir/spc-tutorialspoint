import sqlite3

if __name__ == "__main__":
    conn = sqlite3.connect("database.db")
    conn.execute(
        """
    CREATE TABLE student
        (
            name TEXT,
            addr TEXT,
            city TEXT,
            pin TEXT
        )
    """
    )
    conn.close()
