from flask import Flask, render_template, url_for, redirect, request, jsonify, make_response
from config.db import open_connection

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

import smtplib

app = Flask(__name__)
app.debug = True


def send_email(nom_prenom, email, message):
    # Send an Email
    mail_sender = smtplib.SMTP(host='smtp-mail.outlook.com', port=587)
    mail_sender.starttls()
    mail_sender.login('EMAIL', 'PASSWORD') # wejdenpfe@outlook.com

    msg = MIMEMultipart()       # create a message

    msg['From'] = email # client
    msg['To'] = 'EMAIL' # admin
    msg['Subject'] = '.::MESSAGE FROM: ' + nom_prenom + '::. '

    # add in the message body
    msg.attach(MIMEText(message))

    # send the message via the server set up earlier.
    mail_sender.send_message(msg)


def getCatalogue(filter):

    try:
        con = open_connection()
        cur = con.cursor()

        if filter == 'id':
            query = '''
                SELECT *
                FROM catalogue
                ORDER  BY id DESC
                LIMIT 16
            '''

        elif filter == 'visited':
            query = '''
                SELECT *
                FROM catalogue
                ORDER BY visited DESC
                LIMIT 16
            '''
        else:
            query = '''
                SELECT *
                FROM catalogue 
            ''' + filter
        
        try:
            cur.execute(query)
            return cur.fetchall()
        except Exception as e:
            return None
    except Exception as e:
        print('Error: ', e)
        return None


def getCount(filter):

    try:
        con = open_connection()
        cur = con.cursor()

        query = '''
                SELECT COUNT(*)
                FROM catalogue
                WHERE genre=%s
            '''

        cur.execute(query, [filter])
        return cur.fetchone()[0]
    except Exception as e:
        print('Error: ', e)
        return None


@app.route('/')
def index():
    top_sales = getCatalogue('visited')
    features = getCatalogue('id')

    genre1Count = getCount('Garçon')
    genre2Count = getCount('Fille')
    productsCount = genre1Count + genre2Count

    return render_template('index.html', top_sales=top_sales, features=features, genre1Count=genre1Count, genre2Count=genre2Count,
                           productsCount=productsCount)


@app.route('/catalogue')
def catalogue():
    return render_template('catalogue.html')


@app.route('/catalogue/<string:id>/details')
def catalogue_details(id):
    top_sales = getCatalogue('visited')
    try:
        con = open_connection()
        cur = con.cursor()

        query = '''
                SELECT *
                FROM catalogue
                WHERE id=%s
            '''

        cur.execute(query, [id])
        produit = cur.fetchone()

        if produit:
            return render_template('details.html', produit=produit, top_sales=top_sales)
    except Exception as e:
        print('Error: ', e)

    return redirect(url_for('index'))


@app.route('/catalogue/json')
def catalogue_json():

    genre = request.args.get('genre')
    age = request.args.get('age')
    order = request.args.get('filter')
    
    strFilter = ''

    if genre != 'Tout':
        strFilter += "WHERE genre='"+genre+"' "

    if age != 'Tout':
        strFilter += "AND age='"+age+"' "

    if order == '1':
        strFilter += ' ORDER BY id DESC'
    elif order == '2':
        strFilter += ' ORDER BY designation ASC'
    elif order == '3':
        strFilter += ' ORDER BY designation DESC'
    elif order == '4':
        strFilter += ' ORDER BY visited ASC'
    elif order == '5':
        strFilter += ' ORDER BY visited DESC'

    

    catalogue = getCatalogue(strFilter)

    produits = []
    if catalogue:
        for produit in catalogue:
            row = {
                'id': produit[0],
                'image_big': produit[1],
                'image_1': produit[2],
                'image_2': produit[3],
                'image_3': produit[4],
                'image_4': produit[5],
                'designation': produit[6],
                'description': produit[7],
                'genre': produit[8],
                'age': produit[9],
                'visited': produit[10],
            }
            produits.append(row)
    else:
        produits.append({
            'id': 0
        })

    result = make_response(
        jsonify(produits),
        200,
    )
    result.headers["Content-Type"] = "application/json"
    return result


@app.route('/contact', methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        nom_prenom = request.form['nom_prenom']
        email = request.form['email'] # client@gmail.com
        message = request.form['message']

        send_email(nom_prenom, email, message)

    return render_template('contact.html')


if __name__ == '__main__':
    app.run()
