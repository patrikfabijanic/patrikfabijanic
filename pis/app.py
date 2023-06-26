import os
from flask import Flask, render_template, request, redirect
from werkzeug.utils import secure_filename
import sqlite3

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'static'
app.config['ALLOWED_EXTENSIONS'] = {'png', 'jpg', 'jpeg', 'gif'}
app.config['DEBUG'] = True


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in app.config['ALLOWED_EXTENSIONS']



connection = sqlite3.connect('database.db')
with open('create_koktel.sql') as f:
    connection.executescript(f.read())
connection.commit()
connection.close()


@app.route('/')
def index():
    connection = sqlite3.connect('database.db')
    connection.row_factory = sqlite3.Row
    koktel = connection.execute('SELECT k.*,a.naslov as alkohol_ime FROM koktel as k LEFT JOIN alkohol as a ON k.alkohol_id=a.id').fetchall()

    alkohol = connection.execute('SELECT * FROM alkohol').fetchall()
    connection.close()
    return render_template ('index.html', koktel=koktel, alkohol=alkohol) 


@app.route('/koktel/delete/<int:idx>', methods=('POST',))
def delete_koktel(idx): 
    connection = sqlite3.connect('database.db')
    connection.row_factory = sqlite3.Row
    connection.execute('DELETE FROM koktel WHERE id=?', (idx,))
    connection.commit()
    connection.close()
    return redirect('/')



@app.route('/alkohol/delete/<int:idy>', methods=('POST',))
def delete_alkohol(idy): 
    connection = sqlite3.connect('database.db')
    connection.row_factory = sqlite3.Row
    connection.execute('DELETE FROM alkohol WHERE id=?', (idy,))
    connection.commit()
    connection.close()
    return redirect('/')   
    


@app.route('/createkoktel', methods=('GET', 'POST'))
def create_koktel():
    if request.method == 'POST':
        titolo_kok = request.form['titolo_kok']
        sastojci_kok = request.form['sastojci_kok']
        info_kok = request.form['info_kok']
        alkohol_id = request.form['alkohol_id']
        nova_slika = request.files['nova_slika']

        if alkohol_id == '-1':
            alkohol_id = None

        if nova_slika and allowed_file(nova_slika.filename):
            filename = secure_filename(nova_slika.filename)
            nova_slika.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            slika_putanja = 'static/' + filename
        else:
            slika_putanja = None

        connection = sqlite3.connect('database.db')
        connection.row_factory = sqlite3.Row
        connection.execute(
            'INSERT INTO koktel (naslov, sastojci, info,slika, alkohol_id ) VALUES (?, ?, ?, ?,?)',        
            (titolo_kok, sastojci_kok, info_kok,slika_putanja, alkohol_id)
        )
        connection.commit()
        connection.close()
        return redirect('/')
    
    connection = sqlite3.connect('database.db')
    connection.row_factory = sqlite3.Row
    alkoholi = connection.execute('SELECT * FROM alkohol').fetchall()
    connection.close()
    
    return render_template('createkoktel.html',  alkoholi=alkoholi )


@app.route('/createalkohol', methods=('GET', 'POST'))
def create_alkohol():
    if request.method == 'POST':
        titolo_alk = request.form['titolo_alk']
        info_alk = request.form['info_alk']
        connection = sqlite3.connect('database.db')
        connection.row_factory = sqlite3.Row
        connection.execute(
            'INSERT INTO alkohol (naslov, vrste) VALUES (?, ?)',
            (titolo_alk, info_alk)
        )
        connection.commit()
        connection.close()
        return redirect('/')
    return render_template('createalkohol.html')


@app.route('/updatekoktel/<int:id>', methods=['GET', 'POST'])
def update_koktel(id):
    if request.method == 'POST':
        titolo_kok = request.form['titolo_kok']
        sastojci_kok = request.form['sastojci_kok']
        info_kok = request.form['info_kok']
        #nova_slika = request.files['nova_slika']
        alkohol_id = request.form['alkohol_id']


        if alkohol_id == '-1':
            alkohol_id = None
        

        connection = sqlite3.connect('database.db')
        cursor = connection.cursor()
        cursor.execute('UPDATE koktel SET naslov = ?, sastojci = ?, info = ?, alkohol_id = ? WHERE id = ?',
                            (titolo_kok, sastojci_kok, info_kok,alkohol_id, id))
        connection.commit()
        connection.close()

        return redirect('/')
    

    connection = sqlite3.connect('database.db')
    connection.row_factory  = sqlite3.Row
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM koktel WHERE id = ?', (id,))
    koktel = cursor.fetchone()
    alkoholi = connection.execute('SELECT * FROM alkohol').fetchall() 
    connection.close()

    if koktel:
        return render_template('updatekoktel.html', koktel=koktel, id=id, alkoholi=alkoholi)
    else:
        return "Koktel nije pronađen"


@app.route('/updatealkohol/<int:id>', methods=['GET', 'POST'])
def update_alkohol(id):
    if request.method == 'POST':
        titolo_alk = request.form['titolo_alk']
        info_alk = request.form['info_alk']



        connection = sqlite3.connect('database.db')
        connection.row_factory = sqlite3.Row
        connection.execute('UPDATE alkohol SET naslov = ?, vrste = ? WHERE id = ?', (titolo_alk, info_alk, id))
        connection.commit()
        connection.close()

        return redirect('/')

    connection = sqlite3.connect('database.db')
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM alkohol WHERE id = ?', (id,))
    alkohol = cursor.fetchone()
    connection.close()

    if alkohol:
        return render_template('updatealkohol.html', alkohol=alkohol, id=id)
    else:
        return "Alkohol nije pronađen"


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=int("3000"),debug=True)



