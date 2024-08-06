from flask import Flask, request, jsonify
from flask_cors import CORS
import os
import mysql.connector
import uuid
from PIL import Image
import matplotlib.pyplot as plt
import io
import numpy as np
from tensorflow.keras.models import load_model
from mysql.connector import Error
from threading import Lock
from tensorflow import keras
app = Flask(__name__)
CORS(app)

# 업로드된 파일을 저장할 디렉토리 설정
UPLOAD_FOLDER = 'uploads'
os.makedirs(UPLOAD_FOLDER, exist_ok=True)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

db_config = {
    'user': 'final',
    'password': 'Project1234',
    'host': '192.168.0.215',
    'database': 'finalproject'
}

# 입력 이미지 크기와 색공간 설정
im_rows = 64
im_cols = 64
im_color = 3
# 클래스 및 칼로리 정보
LABELS = ["불고기", "치킨", "도넛", "생선구이", "김밥", "라면", "만두", "피자", "밥", "스테이크", "스키야키", "떡볶이"]
CALORIES = ["588", "118", "648", "100", "200", "300", "400", "500", "200", "300", "400", "500"]
nb_classes = len(LABELS)

# 저장한 ResNet50 모델 불러오기
model_path = "D:/python/fML/image/trained_more_model.keras"
model = load_model(model_path)
#model = keras.models.load_model(model_path)
model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])  # 예시로 optimizer와 loss를 지정하고 metrics도 설정해주세요

# 모델 예측을 위한 Lock 객체 생성
model_lock = Lock()

# def insert_image_info(photo_url, origin_name, upload_name):
#     connection = mysql.connector.connect(**db_config)
#     cursor = connection.cursor()
#
#     query = "INSERT INTO PHOTOS (PHOTOURL, ORIGINNAME, UPLOADNAME) VALUES (%s, %s, %s)"
#     cursor.execute(query, (photo_url, origin_name, upload_name))
#
#     connection.commit()
#     cursor.close()
#     connection.close()

def check_photo(image):
    try:
        # 이미지 읽어 들이기
        img = Image.open(image)
        img = img.resize((im_cols, im_rows))  # 크기 변경하기

        # 데이터 변환하기
        x = np.asarray(img)
        x = x.reshape(-1, im_rows, im_cols, im_color)
        x = x.astype('float32') / 255.0  # 정규화

        # 모델 예측을 메인 스레드에서 실행
        with model_lock:
            pre = model.predict(x)[0]

        idx = np.argmax(pre)
        per = int(pre[idx] * 100)

        print(pre)

        return idx, per
    except Exception as e:
        print(f"Error processing image: {e}")
        return None, None

def check_photo_str(image):
    idx, per = check_photo(image)
    if idx is not None and per is not None:
        print(f"이 사진은 {LABELS[idx]}입니다")

        print(f"가능성은 {per}% 입니다.")
        return LABELS[idx]
    else:
        print("사진 처리에 실패했습니다.")

@app.route('/upload', methods=['POST'])
def upload_file():
    if 'file' not in request.files:
        return jsonify(result="error", message="No file part"), 400

    file = request.files['file']

    if file.filename == '':
        return jsonify(result="error", message="No selected file"), 400

    if file:
        print('연결확인')
        img_bytes = io.BytesIO(file.read())
        abc = check_photo_str(img_bytes)

        # origin_name = file.filename
        # # 랜덤한 파일 이름 생성
        # upload_name = f"{uuid.uuid4().hex}_{origin_name}"
        # photo_url = os.path.join(app.config['UPLOAD_FOLDER'], upload_name)
        # file.save(photo_url)

        # 이미지 정보를 데이터베이스에 저장
        # insert_image_info(photo_url, origin_name, upload_name)

        print(abc)
        #return jsonify(result=f"{abc}", filename=upload_name), 200
        return jsonify(result=f"{abc}"), 200

if __name__ == '__main__':
    app.run('0.0.0.0', port=5000)
