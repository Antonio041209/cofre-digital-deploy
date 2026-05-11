from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "message": "Cofre Digital Online!"
    })

@app.route('/database')
def database():

    db_host = os.getenv('DB_HOST')
    db_user = os.getenv('DB_USER')

    return jsonify({
        "host": db_host,
        "user": db_user
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
