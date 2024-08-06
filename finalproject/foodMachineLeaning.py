import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
from tensorflow.keras.models import load_model
import mysql.connector
from mysql.connector import Error
import io
from flask import Flask, request, jsonify
from flask_cors import CORS
import os
import uuid

# 입력 이미지 크기와 색공간 설정
im_rows = 64
im_cols = 64
im_color = 3

#클래스 및 칼로리 정보
LABELS = ["불고기", "치킨", "도넛", "생선구이", "김밥", "라면", "만두", "피자", "쌀밥", "스테이크", "스키야키", "떡볶이"]
CALORIES = ["588", "118", "648", "100", "200", "300", "400", "500", "200", "300", "400", "500"]
nb_classes = len(LABELS)

# 저장한 ResNet50 모델 불러오기
model_path = "D:/python/fML/image/trained_more_model.keras"
model = load_model(model_path)
model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])  # 예시로 optimizer와 loss를 지정하고 metrics도 설정해주세요


def check_photo(path):
    try:
        # 이미지 읽어 들이기
        img = Image.open(path)
        img = img.resize((im_cols, im_rows))  # 크기 변경하기
        #plt.imshow(img)
        #plt.axis('off')
        #plt.show()

        # 데이터 변환하기
        x = np.asarray(img)
        x = x.reshape(-1, im_rows, im_cols, im_color)
        x = x.astype('float32') / 255.0  # 정규화

        # 예측하기
        pre = model.predict(x)[0]
        idx = np.argmax(pre)
        per = int(pre[idx] * 100)

        print(pre)

        return idx, per
    except Exception as e:
        print(f"Error processing image: {e}")
        return None, None

def check_photo_str(path):
    idx, per = check_photo(path)
    if idx is not None and per is not None:
        print(f"이 사진은 {LABELS[idx]}입니다")
        return LABELS[idx]
        #print(f"가능성은 {per}% 입니다.")
    else:
        print("사진 처리에 실패했습니다.")
        return "Error"


# def fetch_image_from_db(photo_id):
#     try:
#         # MySQL 데이터베이스에 연결하기
#         connection = mysql.connector.connect(
#             host='192.168.0.215',
#             user='final',  # 데이터베이스 사용자 이름
#             password='Project1234',  # 데이터베이스 비밀번호
#             database='finalproject'  # 데이터베이스 이름
#         )
#
#         cursor = connection.cursor()
#         cursor.execute("SELECT UPLOADNAME FROM PHOTOS WHERE PHOTOID = %s", (photo_id,))
#         result = cursor.fetchone()
#
#         if result:
#             return result[0]  # UPLOADNAME 값 반환
#         else:
#             print("No image found with the given PHOTOID.")
#             return None
#     except Error as e:
#         print(f"Error: {e}")
#         return None
#     finally:
#         if connection.is_connected():
#             cursor.close()
#             connection.close()
#
#
# # 데이터베이스에서 특정 PHOTOID로 이미지를 가져오고 분석하기
# photo_id = 5  # 예시로 사용할 PHOTOID 값
# upload_name = fetch_image_from_db(photo_id)

# if upload_name:
#     # 이미지 파일 경로를 데이터베이스에서 가져온 값을 사용하여 지정합니다.
#     image_path = f'D:/python/cWebConn/finalproject/uploads/{upload_name}'
#     check_photo_str(image_path)


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

def insert_image_info(photo_url, origin_name, upload_name):
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor()

    query = "INSERT INTO PHOTOS (PHOTOURL, ORIGINNAME, UPLOADNAME) VALUES (%s, %s, %s)"
    cursor.execute(query, (photo_url, origin_name, upload_name))

    connection.commit()
    cursor.close()
    connection.close()


@app.route('/upload', methods=['POST'])
def upload_file():
    if 'file' not in request.files:
        return jsonify(result="error", message="No file part"), 400

    file = request.files['file']

    if file.filename == '':
        return jsonify(result="error", message="No selected file"), 400

    if file:
        origin_name = file.filename
        #print(origin_name)
        # 랜덤한 파일 이름 생성
        # file_name = f"{uuid.uuid4().hex}_{origin_name}"
        # photo_url = os.path.join(app.config['UPLOAD_FOLDER'], file_name)
        # file.save(photo_url)
        #
        # foodname = check_photo_str(photo_url)
        foodname = check_photo_str(file)
        # 이미지 정보를 데이터베이스에 저장
        #insert_image_info(photo_url, origin_name, file_name)

        return jsonify(result="success", foodname=foodname), 200


if __name__ == '__main__':
    app.run('0.0.0.0', port=5000)