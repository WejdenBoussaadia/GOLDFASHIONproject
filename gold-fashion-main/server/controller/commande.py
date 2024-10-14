from config.db import open_connection, close_connection
from datetime import datetime


class Commande:

    @staticmethod
    def read_all():
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT *
                FROM commande, client, personne
                WHERE commande.id_client = client.id
                    AND client.id_personne = personne.id
                ORDER BY date_creation DESC
            '''
            cur.execute(query)
            return cur.fetchall()
        except Exception as e:
            print('Error: ', e)
            return None

    @staticmethod
    def create(id_client, model, quantite, ordre_de_fabrique, prix_unitaire):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                    INSERT INTO commande(id_client,model,quantite,ordre_de_fabrique,prix_unitaire) 
                    VALUES(%s, %s, %s, %s, %s)
                '''

            cur.execute(query, [id_client, model, quantite,
                        ordre_de_fabrique, prix_unitaire])
            con.commit()
            return True

        except Exception as e:
            print('Error: ', e)
            return False

    @staticmethod
    def update(id_client, model, quantite, ordre_de_fabrique, prix_unitaire, id):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                    UPDATE commande 
                    SET id_client=%s,
                        model=%s,
                        quantite=%s,
                        ordre_de_fabrique=%s,
                        prix_unitaire=%s 
                    WHERE id=%s
                '''

            cur.execute(query, [id_client, model, quantite,
                        ordre_de_fabrique, prix_unitaire, id])
            con.commit()
            return True

        except Exception as e:
            print('Error: ', e)
            return False

    @staticmethod
    def delete(id):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                    DELETE FROM commande
                    WHERE id = %s
                '''

            cur.execute(query, [id])
            con.commit()
            return True

        except Exception as e:
            print('Error: ', e)
            return True
