import mysql.connector as connector
import mysql.connector as connector

class DBHelper:
    def __init__(self):
        self.con = connector.connect(host='localhost',
                                     port=3306,
                                     user='root',
                                     password='root',
                                     database='datascience')
