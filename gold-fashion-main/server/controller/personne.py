from config.db import open_connection, close_connection

class Personne:

    @staticmethod
    def create(nom, prenom, num_tel, role):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                INSERT INTO personne(nom, prenom, num_tel, role) 
                VALUES (%s, %s, %s, %s)
            '''

            cur.execute(query, [nom, prenom, num_tel, role])
            con.commit()

            return cur.lastrowid

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def update(nom, prenom, num_tel, id):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                UPDATE personne
                SET nom=%s, 
                prenom=%s, 
                num_tel=%s
                WHERE id=%s
            '''

            cur.execute(query, [nom, prenom, num_tel, id])
            con.commit()
  
        except Exception as e:
            print('Error: ', e)
        
    @staticmethod
    def delete(id):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                DELETE FROM personne
                WHERE id=%s
            '''

            cur.execute(query, [id])
            con.commit()
  
        except Exception as e:
            print('Error: ', e)
    
    @staticmethod
    def find_exist(num_tel):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT * FROM personne WHERE num_tel=%s
            '''

            cur.execute(query, [num_tel])
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
                SELECT * FROM personne WHERE id=%s
            '''

            cur.execute(query, [id])
            personne = cur.fetchall()

            if cur.rowcount > 0:
                return personne

            return None

        except Exception as e:
            print('Error: ', e)
            return None