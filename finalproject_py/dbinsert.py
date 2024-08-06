import cx_Oracle
import csv

# 오라클 데이터베이스 연결 정보
dsn = cx_Oracle.makedsn('ADMIN', '1521', service_name='finalproject')
conn = cx_Oracle.connect(user='ADMIN', password='Finalproject1234', dsn=dsn)
cursor = conn.cursor()


csv_file = r"C:\Users\ict03_027\Desktop\final project\fooddata.csv"

# CSV 파일에서 데이터 읽기
with open(csv_file, 'r', newline='', encoding='utf-8') as file:
    csv_reader = csv.reader(file)
    next(csv_reader)  # 첫 번째 줄은 헤더이므로 건너뜁니다
    data = [tuple(row) for row in csv_reader]

try:
    cursor.executemany(
        'INSERT INTO your_table_name (column1, column2, column3) VALUES (:1, :2, :3)',
        data
    )
    conn.commit()
    print("데이터 삽입 성공!")
except cx_Oracle.Error as error:
    print(f"오류 발생: {error}")
finally:
    # 연결 종료
    cursor.close()
    conn.close()