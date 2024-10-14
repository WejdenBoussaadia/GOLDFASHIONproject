from config.db import open_connection, close_connection
from datetime import datetime


class Rendement:

    @staticmethod
    def read_all(date_rendement):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT *
                FROM rendement, personnel_rendement, personnel, personne
                WHERE rendement.date = %s
                AND personnel_rendement.id_rendement = rendement.id
                AND personnel_rendement.id_personnel = personnel.id
                AND personnel.id_personne = personne.id
                ORDER BY date_creation DESC
            '''

            cur.execute(query, [date_rendement])
            rendements = cur.fetchall()

            return rendements

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def create(id_personnel, heure_debut, heure_fin, temps_model, entree, sortie, rendement):
        try:
            con = open_connection()
            cur = con.cursor()

            # 2021-04-14
            now = datetime.now().strftime('%Y-%m-%d')
            today = now.split(' ')[0]  # 2021-04-14

            query_check = '''
                SELECT id, count(*) AS nbr FROM rendement WHERE date=%s
            '''

            cur.execute(query_check, [today])

            res = cur.fetchone()
            id_rendement = res[0]
 

            if res[1] == 0:
                query_add_rendement = '''
                    INSERT INTO rendement(date) VALUES(%s)
                '''

                cur.execute(query_add_rendement, [today])
                con.commit()

                id_rendement = cur.lastrowid

            if Rendement.find_exist(id_rendement, id_personnel, heure_debut, heure_fin):
                return False

            query_add_personnel_rendement = '''
                    INSERT INTO personnel_rendement(id_rendement, id_personnel, heure_debut, heure_fin, temps_model, entree, sortie, rendement)
                    VALUES(%s, %s, %s, %s, %s, %s, %s, %s)
                '''

            cur.execute(query_add_personnel_rendement, [
                        id_rendement, id_personnel, heure_debut, heure_fin, temps_model, entree, sortie, rendement])
            con.commit()

            query_modifier_rendement = '''
                    UPDATE rendement SET rendement_totale=rendement_totale+%s WHERE id=%s
                '''

            cur.execute(query_modifier_rendement, [rendement, id_rendement])
            con.commit()
            
            return True

        except Exception as e:
            print('Error: ', e)
            return False

    @staticmethod
    def update(id, id_personnel, heure_debut, heure_fin, temps_model, entree, sortie, rendement):
        try:
            
            con = open_connection()
            cur = con.cursor()

            query_1 = ''' 
                SELECT * FROM personnel_rendement WHERE id=%s 
            '''
            cur.execute(query_1, [id])
            pr = cur.fetchone()
            
            query_2 = ''' 
                UPDATE rendement 
                SET 
                    rendement_totale = (rendement_totale -  %s) + %s
                    WHERE id = %s
            '''
            cur.execute(query_2, [pr[8], rendement, pr[1]])
            con.commit()

            query_update_personnel_rendement = '''
                    UPDATE personnel_rendement
                    SET id_personnel =%s,
                        heure_debut=%s,
                        heure_fin=%s,
                        temps_model=%s,
                        entree=%s,
                        sortie=%s,
                        rendement=%s
                    WHERE id = %s
                '''
            cur.execute(query_update_personnel_rendement, 
                [id_personnel, heure_debut, heure_fin, temps_model, entree, sortie, rendement, id])
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
                    DELETE FROM personnel_rendement
                    WHERE id = %s
                '''

            cur.execute(query, [id])
            con.commit()

        except Exception as e:
            print('Error: ', e)

    @ staticmethod
    def find_exist(id_rendement, id_personnel, heure_debut, heure_fin):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT *
                FROM personnel_rendement
                WHERE   id_rendement = %s
                AND     id_personnel=%s
                AND     heure_debut=%s
                AND     heure_fin=%s
            '''

            cur.execute(query, [id_rendement, id_personnel, heure_debut, heure_fin])
            cur.fetchall()

            if cur.rowcount > 0:
                return True

            return False

        except Exception as e:
            print('Error: ', e)
