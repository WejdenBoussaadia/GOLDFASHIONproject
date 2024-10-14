from config.db import open_connection, close_connection
from datetime import datetime


class Presence:

    @staticmethod
    def read_all_by_date(id_personnel, date_debut, date_fin):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT *
                FROM presence 
                LEFT JOIN personnel_presence   ON  presence.id = personnel_presence.id_presence
                WHERE personnel_presence.id_personnel = %s
                AND presence.date BETWEEN %s AND %s
            '''

            cur.execute(query, [id_personnel, date_debut, date_fin])
            presences = cur.fetchall() 
            return presences

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def read_all(date_presence):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT *
                FROM presence, personnel_presence, personnel, personne
                WHERE presence.date=%s
                AND personnel_presence.id_presence = presence.id
                AND personnel_presence.id_personnel = personnel.id
                AND personnel.id_personne = personne.id
                ORDER BY date_creation DESC
            '''

            cur.execute(query, [date_presence])
            presences = cur.fetchall()

            return presences

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def create(date_presence, id_personnel):
        try:
            con = open_connection()
            cur = con.cursor()

            # 2021-04-14 10:41:25
            now = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            today = now.split(' ')[0]  # 2021-04-14
            heure = now.split(' ')[1]  # 10:41:25

            query_check = '''
                SELECT id, count(*) AS nbr FROM presence WHERE date=%s
            '''

            cur.execute(query_check, [date_presence])

            res = cur.fetchone()
            id_presence = res[0]

            if date_presence != today:
                return False

            if date_presence == today and res[1] == 0:
                query_add_presence = '''
                    INSERT INTO presence(date) VALUES(%s)
                '''

                cur.execute(query_add_presence, [date_presence])
                con.commit()

                id_presence = cur.lastrowid

            query_add_personnel_presence = '''
                    INSERT INTO personnel_presence(id_presence, id_personnel, heure_d_entree)
                    VALUES(%s, %s, %s)
                '''

            cur.execute(query_add_personnel_presence, [
                        id_presence, id_personnel, heure])
            con.commit()
            return True

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def update(id):
        try:
            con = open_connection()
            cur = con.cursor()

            now = datetime.now().strftime('%d/%m/%Y %H:%M:%S')
            heure = now.split(' ')[1]

            query_update_personnel_presence = '''
                    UPDATE personnel_presence
                    SET heure_de_sortie=%s
                    WHERE id = %s
                '''

            cur.execute(query_update_personnel_presence, [heure, id])
            con.commit()

        except Exception as e:
            print('Error: ', e)

    @staticmethod
    def delete(id):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                    DELETE FROM personnel_presence
                    WHERE id = %s
                '''

            cur.execute(query, [id])
            con.commit()

        except Exception as e:
            print('Error: ', e)

    @ staticmethod
    def find_exist(date_presence, id_personnel):
        try:
            con = open_connection()
            cur = con.cursor()

            query = '''
                SELECT *
                FROM presence, personnel_presence
                WHERE   personnel_presence.id_presence = presence.id
                AND     presence.date=%s
                AND     personnel_presence.id_personnel=%s
            '''

            cur.execute(query, [date_presence, id_personnel])
            cur.fetchall()

            if cur.rowcount > 0:
                return True

            return False

        except Exception as e:
            print('Error: ', e)
