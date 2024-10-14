from config.db import open_connection, close_connection

class Stock:

    @staticmethod
    def read_all():
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT * FROM stock ORDER BY code_a_barre
            '''

            cur.execute(query)
            stock = cur.fetchall()

            return stock

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def create(code_a_barre, nom_produit, quantite, categorie):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                INSERT INTO stock(code_a_barre, nom_produit, quantite, categorie) 
                VALUES (%s, %s, %s, %s)
            '''

            cur.execute(query, [code_a_barre, nom_produit, quantite, categorie])
            con.commit()

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def update(id, code_a_barre, nom_produit, quantite, categorie):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                UPDATE stock
                SET code_a_barre=%s, 
                nom_produit=%s, 
                quantite=%s,
                categorie=%s
                WHERE id=%s
            '''

            cur.execute(query, [code_a_barre, nom_produit, quantite, categorie, id])
            con.commit()
  
        except Exception as e:
            print('Error: ', e)
        
    @staticmethod
    def delete(id):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                DELETE FROM stock
                WHERE id=%s
            '''

            cur.execute(query, [id])
            con.commit()
  
        except Exception as e:
            print('Error: ', e)
    
    @staticmethod
    def find_exist(code_a_barre):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT * FROM stock WHERE code_a_barre=%s
            '''

            cur.execute(query, [code_a_barre])
            cur.fetchall()

            if cur.rowcount > 0:
                return True

            return False

        except Exception as e:
            print('Error: ', e)
    

    @staticmethod
    def search(code_a_barre):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT * FROM stock WHERE code_a_barre=%s
            '''

            cur.execute(query, [code_a_barre])
            stock = cur.fetchone()

            return stock

        except Exception as e:
            print('Error: ', e)