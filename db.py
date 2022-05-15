import mysql.connector
from numpy import rec

mydb = mysql.connector.connect(host="127.0.0.1",
                                            user="trivial_time", 
                                            password="123qwe**", 
                                            database='q_a', 
                                            auth_plugin='mysql_native_password')
db_Info = mydb.get_server_info()
print("Connected to MySQL Server version ", db_Info)   

class Random_question():   
                 
    def get_random_question(self,level):
        cursor = mydb.cursor()
        sql_select_query = '''SELECT idquestions, question, level FROM q_a.questions WHERE level = "'''+str(level)+'''" ORDER BY rand() LIMIT 1'''
        cursor.execute(sql_select_query)
        self.record = cursor.fetchall()
        
        self.record = str(self.record)
        self.record = self.record.replace("[(",'')
        self.record = self.record.replace(")]",'')
        self.record = self.record.replace("'",'')
        self.record = list(self.record.split(",")) 
        # print(self.record)
        return self.record

    def get_question(self):
        return self.record[1] 

    def get_question_id(self):
        return self.record[0] 
    
    def get_level(self):
        # self.question_id = self.record[2] 
        return self.record[2]
    
    def grab_answer(self):
        cursor = mydb.cursor()
        sql_select_query = '''SELECT * FROM q_a.answers WHERE idquestion = "'''+str(self.record[0])+'''" '''
        cursor.execute(sql_select_query)
        self.record = cursor.fetchall()
        right_answer = list(self.record[0])
        wrong_answer_1 = list(self.record[1])
        wrong_answer_2 = list(self.record[2])
        wrong_answer_3 = list(self.record[3])
        right_answer = right_answer[2]
        wrong_answer_1 = wrong_answer_1[2]
        wrong_answer_2 = wrong_answer_2[2]
        wrong_answer_3 = wrong_answer_3[2]
        return(right_answer)
    

# question = Random_question()
# question.get_random_question(1)
# print(question.get_question())
# print(question.get_question_id())
# print(question.grab_answer())