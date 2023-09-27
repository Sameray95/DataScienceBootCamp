import mysql.connector as connector

class DBHelper:
    def __init__(self):
        self.con = connector.connect(host='localhost',
                                     port=3306,
                                     user='root',
                                     password='root',
                                     database='datascience')

        query = 'create table if not exists BDS35_Python_MySQL_table1 (batch_id varchar(5),student_id int,student_name varchar(255),student_qualification varchar(5),gender varchar(1),email varchar(255),mobile varchar(20))'
        cur = self.con.cursor()
        cur.execute(query)
        print('table BDS35_Python_MySQL_table1 Successfully')

    def insert_record(self):
        query = 'insert into BDS35_Python_MySQL_table1 values ("BDS35",1234,"Anand Shah","PG","M","anand.shah@papermail.com","987-7896-1234")'
        cur = self.con.cursor()
        cur.execute(query)
        self.con.commit()

    def insert_record_by_record(self, batch_id, student_id, student_name, student_qualification, gender, email, mobile):
        query = 'insert into BDS35_Python_MySQL_table1 (batch_id,student_id,student_name,student_qualification,gender,email,mobile) values (%s, %s, %s, %s, %s, %s, %s)'
        values = (batch_id, student_id, student_name, student_qualification, gender, email, mobile)
        cur = self.con.cursor()
        cur.execute(query, values)
        self.con.commit()
    
    # fetch all

    def fetch_all(self):
        query = "select * from BDS35_Python_MySQL_table1"
        cur = self.con.cursor()
        cur.execute(query)
        

    # delete record

    def delete_record(self, student_id):
        query = 'delete from BDS35_Python_MySQL_table1 where student_id= {}'.format(student_id)
        cur = 	self.con.cursor()
        cur.execute(query)
        self.con.commit()            
        print('deleted student_id record {}'.format(student_id))

    


helper = DBHelper()
helper.fetch_all()

helper.insert_record_by_record('BDS35', 1236, 'Amit Shah', 'PG', 'M', 'amit.shah@papermail.com', '987-7896-1236')
helper.insert_record_by_record('BDS35', 1238, 'Maakhan Shah', 'PG', 'M', 'maakhan.shah@papermail.com', '987-7896-1238')
helper.insert_record_by_record('BDS35', 1239, 'Jitu Shah', 'PG', 'M', 'jitu.shah@papermail.com', '987-7896-1239')
helper.insert_record_by_record('BDS35', 1240, 'Hetal Shah', 'PG', 'F', 'hetal.shah@papermail.com', '987-7896-1240')
helper.insert_record_by_record('BDS35', 1241, 'Shital Shah', 'PG', 'F', 'shital.shah@papermail.com', '987-7896-1241')
helper.insert_record_by_record('BDS35', 2346, 'Amit Joshi', 'PG', 'M', 'amit.joshi@papermail.com', '987-7896-2346')
helper.insert_record_by_record('BDS35', 2348, 'Maakhan Joshi', 'PG', 'M', 'maakhan.joshi@papermail.com', '987-7896-2348')
helper.insert_record_by_record('BDS35', 2349, 'Jitu Joshi', 'PG', 'M', 'jitu.joshi@papermail.com', '987-7896-2349')
helper.insert_record_by_record('BDS35', 2340, 'Hetal Joshi', 'PG', 'F', 'hetal.joshi@papermail.com', '987-7896-2340')
helper.insert_record_by_record('BDS35', 2341, 'Shital Joshi', 'PG', 'F', 'shital.joshi@papermail.com', '987-7896-2341')
