import pandas as pd
from sqlalchemy import create_engine

# CSV 파일 경로
translated_file_path = 'C:/Users/ict03_027/Desktop/finalproject/foodinfo_csv.csv'

# MySQL 데이터베이스 연결 설정
db_user = 'final'
db_password = 'Project1234'
db_host = '192.168.0.215'  # 보통 'localhost' 또는 '127.0.0.1'
db_port = '3306'  # 기본 MySQL 포트
db_name = 'finalproject'

# 데이터베이스 URL 생성
database_url = f"mysql+pymysql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}"
engine = create_engine(database_url)

# CSV 파일 읽기
df = pd.read_csv(translated_file_path)


# print(df['음식이름'])
# df['menuname'] = df['음식이름']
# df['ingredient'] = df['음식재료']
# df['cooking'] = df['음식조리법']
# df['imgurl'] = df['음식이미지url']
# df['test'] = df['음식영양성분']
# #print(df['test'].str.slice(0, stop=df['test'].str.find('g')))
# #print(df['test'].str.slice(0, stop=9))
# #df['serving'] = df['test'].str.extract(r'(\d+)g')
# df['RCALORIE'] = df['test'].str.extract(r'칼로리 (\d+)')
# df['RCARBS'] = df['test'].str.extract(r'탄수화물 (\d+\.?\d*)g')
# df['RPROTEINS'] = df['test'].str.extract(r'단백질 (\d+\.?\d*)g')
# df['RFATS'] = df['test'].str.extract(r'지방, 총 (\d+\.?\d*)g')

# # '지침' 단어를 제거
# df['cooking'] = df['cooking'].str.replace('지침', '').str.strip()

# # 필요 없는 열 삭제
# df = df.drop(['음식이름','음식재료','음식조리법','음식이미지url','음식영양성분','test'], axis=1)

print(df.head())
print("Data has been successfully saved to the database.")



#데이터프레임을 데이터베이스에 저장
table_name = 'foodinfo'  # 저장할 테이블 이름
df.to_sql(table_name, con=engine, if_exists='append', index=False)

