import sys
import db
from db import Random_question
from PyQt5.QtWidgets import QApplication, QMainWindow
from PyQt5.uic import loadUi
from PyQt5 import QtGui
from PyQt5 import QtCore
import logos_rc

class Start(QMainWindow):
    def __init__(self, parent=None):
        super(Start, self).__init__(parent)
        loadUi('start.ui', self)
        self.start_button.clicked.connect(self.Next)
        self.user_name_line_edit.editingFinished.connect(self.Name)    
                                
    def Name(self):
        self.name = self.user_name_line_edit.text() 
         
        # mydb = db.mydb
        # cursor = mydb.cursor()
        # get_user = '''SELECT player_name, player_score 
        #             FROM q_a.players WHERE player_name = "'''+str(self.name)+'''";'''
        # cursor.execute(get_user)
        # record = cursor.fetchall()
        # if not record:
        #     print("User is not in the db")
        #     add_user = '''INSERT INTO q_a.players (player_name, player_score) VALUES (%s, %s)'''
        #     user_name = [("'"+self.name+"'",'0')]
        #     cursor.executemany(add_user, user_name)
        #     record = cursor.fetchall()
        #     print("\nUser added")
            
        # print(record)     
              
        return self.name  
          
    def Next(self):
        self.hide()
        next_window = Instructions(self)
        next_window.show()	
                
class Instructions(Start):
    def __init__(self, Start):
        super(Instructions, self).__init__(Start)
        loadUi('instructions.ui', self)
        self.start_name = Start.Name()
        #self.user_name = self.start_name.Name
        self.label_user_name.setText(self.start_name)
        self.back_button.clicked.connect(self.Back)
        self.continue_button.clicked.connect(self.Next)

    def Next(self):
        self.hide()
        next_window = Questions(self)
        next_window.show()
        
    def Back(self):
        self.hide()
        previous_window = Start(self)
        previous_window.show()	
        
class Questions(QMainWindow):
    def __init__(self, parent=None):
        super(Questions, self).__init__(parent)
        loadUi('questions.ui', self)
        self.back_button.clicked.connect(self.Back)
        print(str(Random_question.grab_answer))
        self.radioButton.setText("hello")
        
        self.difficulty = 1

        random_question = Random_question.get_random_question(self,self.difficulty)
        question = Random_question.get_question(self)
        level = int(Random_question.get_level(self))
        self.label.setText(question)
        
        if level == 1:
            self.level_label.setText('easy')
        elif level == 2:
            self.level_label.setText('Normal')
        elif level == 3:
            self.level_label.setText('Moderate')
        elif level == 4:
            self.level_label.setText('Difficult')                    
        else:
            self.level_label.setText('Extreme')            
        
        
    def Questions_db(self):
        pass
    
    def Answer_validator(self):
        pass
        
    def Correct_answer(self):
        pass
        
    def Wrong_answer(self):
        pass        
        
    def Next(self):
        self.hide()
        next_window = Questions(self)
        next_window.show()
        
    def Back(self):
        self.hide()
        previous_window = Start(self)
        previous_window.show()	    
    
class Lost(QMainWindow):
    def __init__(self, parent=None):
        super(Lost, self).__init__(parent)
        loadUi('lost.ui', self)
        
    def Next(self):
        pass
        
    def Back(self):
        pass       
    
class Point(QMainWindow):
    def __init__(self, parent=None):
        super(Point, self).__init__(parent)
        loadUi('point.ui', self)
        
    def Next(self):
        pass
        
    def Back(self):
        pass    
        
class Winner(QMainWindow):
    def __init__(self, parent=None):
        super(Winner, self).__init__(parent)
        loadUi('winner.ui', self)
        
    def Next(self):
        pass
        
    def Back(self):
        pass    
    
class Exit(QMainWindow):
    def __init__(self, parent=None):
        super(Exit, self).__init__(parent)
        loadUi('exit.ui', self)
        
    def Next(self):
        pass
        
    def Back(self):
        pass     

app = QApplication(sys.argv)
main = Start()
main.show()
sys.exit(app.exec_())