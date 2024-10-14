from config.db import open_connection, close_connection
from .personne import Personne


class Personnel:

    @staticmethod
    def login(email):
        try:
            con = open_connection()
            cur = con.cursor(buffered=True)

            query = '''
                SELECT
                    personnel.*,
                    personne.nom,
                    personne.prenom,
                    personne.num_tel,
                    personne.role
                FROM
                    personnel,
                    personne
                WHERE personnel.id_personne = personne.id
                    AND personnel.login = %s
            '''

            cur.execute(query, [email])
            
            if cur.rowcount < 1:
                return None
            
            return cur.fetchone()

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def read_all():
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT personnel.*, personne.nom, personne.prenom, personne.num_tel, personne.role   
                FROM personnel, personne
                WHERE personnel.id_personne = personne.id
                ORDER BY personne.nom
            '''

            cur.execute(query)

            return cur.fetchall()

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def create(num_cin, num_cnss, login, mot_de_passe, nom, prenom, num_tel, role):
        try:
            con = open_connection()
            cur = con.cursor()

            id_personne = Personne.create(nom, prenom, num_tel, role)

            query = '''
                INSERT INTO personnel (id_personne, num_cin, num_cnss) 
                VALUES (%s,%s, %s)
            '''

            cur.execute(query, [id_personne, num_cin,
                                num_cnss])
            con.commit()

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def update(num_cin, num_cnss, id, nom, prenom, num_tel, id_personne):
        try:
            con = open_connection()
            cur = con.cursor()

            Personne.update(nom, prenom, num_tel, id_personne)

            query = '''
                UPDATE personnel
                SET num_cin=%s, 
                num_cnss=%s
                WHERE id=%s
            '''

            cur.execute(query, [num_cin, num_cnss,  id])
            con.commit()
  
        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def find_exist(num_cin, num_cnss):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT * FROM personnel WHERE num_cin=%s OR num_cnss=%s
            '''

            cur.execute(query, [num_cin, num_cnss])
            personnes = cur.fetchall()

            if cur.rowcount > 0:
                return True

            return False

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def find_by_id(id):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT * FROM personnel WHERE id=%s
            '''

            cur.execute(query, [id])
            personne = cur.fetchall()

            if cur.rowcount > 0:
                return personne

            return None

        except Exception as e:
            print('Error: ', e)
            return None
