from config.db import open_connection, close_connection
from .personne import Personne

class Client:

    
    @staticmethod
    def read_all():
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT client.*, personne.nom, personne.prenom, personne.num_tel, personne.role   
                FROM client, personne
                WHERE client.id_personne = personne.id
                ORDER BY personne.nom, personne.prenom
            '''

            cur.execute(query)

            return cur.fetchall()

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def create(nom, prenom, num_tel, role, nom_societe):
        try:
            con = open_connection()
            cur = con.cursor()

            id_personne = Personne.create(nom, prenom, num_tel, role)

            query = '''
                INSERT INTO client(id_personne, nom_societe) 
                VALUES (%s, %s)
            '''

            cur.execute(query, [id_personne, nom_societe])
            con.commit()

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def update(id, id_personne, nom, prenom, num_tel, nom_societe):
        try:
            con = open_connection()
            cur = con.cursor()

            Personne.update(nom, prenom, num_tel, id_personne)

            query = '''
                UPDATE client
                SET nom_societe=%s
                WHERE id=%s
            '''

            cur.execute(query, [nom_societe,  id])
            con.commit()
  
        except Exception as e:
            print('Error: ', e)

