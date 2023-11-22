
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="gatinero"
  )

class gato:
    def __init__(self, id_gato, nombre_gato, color_gato, edad_gato, pelaje_gato):
        
        self.id_gato = id_gato
        self.nombre_gato = nombre_gato
        self.color_gato = color_gato
        self.edad_gato = edad_gato
        self.pelaje_gato = pelaje_gato
""" funcion mycursor"""

mycursor = mydb.cursor()

""" creando michis"""
gato1 = gato(0,"michifu","negro",10, "liso");
gato2 = gato(0,"gardield","naranja",5,"esponjoso");
gato3 = gato(0,"silvestre","manchado negro blanco",8,"liso");
gato4 = gato(0,"gatuvela","negro",7,"semi esponjoso");
gato5 = gato(0,"atun","siames",8, "liso");

""" valores y ejecuciones de SQL """

gato1_SQL = "INSERT into gatos(nombre_gato, color_gato, edad_gato,pelaje_gato) VALUES (%s,%s,%s,%s)"
gato1_val =(gato1.nombre_gato, gato1.color_gato, gato1.edad_gato,gato1.pelaje_gato)

gato2_SQL = "INSERT into gatos(nombre_gato, color_gato, edad_gato,pelaje_gato) VALUES (%s,%s,%s,%s)"
gato2_val =(gato2.nombre_gato, gato2.color_gato, gato2.edad_gato,gato2.pelaje_gato)

gato3_SQL = "INSERT into gatos(nombre_gato, color_gato, edad_gato,pelaje_gato) VALUES (%s,%s,%s,%s)"
gato3_val =(gato3.nombre_gato, gato3.color_gato, gato3.edad_gato,gato3.pelaje_gato)

gato4_SQL = "INSERT into gatos(nombre_gato, color_gato, edad_gato,pelaje_gato) VALUES (%s,%s,%s,%s)"
gato4_val =(gato4.nombre_gato, gato4.color_gato, gato4.edad_gato,gato4.pelaje_gato)
 
gato5_SQL = "IINSERT into gatos(nombre_gato, color_gato, edad_gato,pelaje_gato) VALUES (%s,%s,%s,%s)"
gato5_val =(gato5.nombre_gato, gato5.color_gato, gato5.edad_gato,gato5.pelaje_gato)


"""" ejecucion SQL gato 1"""
mycursor.execute (gato1_SQL,gato1_val)
mydb.commit()
print("1 gato ha sido insertado, id", mycursor.lastrowid)



"""" ejecucion SQL gato 2"""
mycursor.execute (gato2_SQL,gato2_val)
mydb.commit()
print("1 gato ha sido insertado, id", mycursor.lastrowid)

"""" ejecucion SQL gato 3"""
mycursor.execute (gato3_SQL,gato3_val)
mydb.commit()
print("1 gato ha sido insertado, id", mycursor.lastrowid)


"""" ejecucion SQL gato 4"""

mycursor.execute (gato4_SQL,gato4_val)
mydb.commit()
print("1 gato ha sido insertado, id", mycursor.lastrowid)


""" consultas a la base de datos por toda la tabla de gatos""" 

cons_color =("Select* From gatos")
mycursor.execute(cons_color)
resultado_color = mycursor.fetchall()

for registro_gato in resultado_color:
    print(registro_gato)
  
    
"""actualizar gatos """

act_gato = ("UPDATE gatos set color_gato ='blanco' where color_gato = 'naranja' ")
mycursor.execute(act_gato)
cons_color =("Select* From gatos")
mycursor.execute(cons_color)
resultado_color = mycursor.fetchall()

for registro_gato in resultado_color:
    print(registro_gato)

""" borrar gatos"""
borr_gato =("delete from gatos where color_gato = 'negro'")
mycursor.execute(borr_gato)

cons_color =("Select* From gatos")
mycursor.execute(cons_color)
resultado_color = mycursor.fetchall()

for registro_gato in resultado_color:
    print(registro_gato)
