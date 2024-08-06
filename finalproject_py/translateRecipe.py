import pandas as pd
from googletrans import Translator

# 입력 파일 경로
input_file_path = '/3_beautifulsoup_class/healthyrecipes.csv'

# 출력 파일 경로
output_file_path = '/3_beautifulsoup_class/healthyrecipes_translated.csv'

# CSV 파일 읽기
df = pd.read_csv(input_file_path)

# 번역기 초기화
translator = Translator()

# 데이터 프레임의 각 셀을 번역
def translate_text(text, row, col):
    try:
        translated = translator.translate(text, src='en', dest='ko')
        print(f"Translated ({row}, {col}): {text} -> {translated.text}")
        return translated.text
    except Exception as e:
        print(f"Error translating text ({row}, {col}): {text} - {e}")
        return text

# 데이터 프레임의 모든 값을 번역
for row in range(len(df)):
    for col in df.columns:
        df.at[row, col] = translate_text(df.at[row, col], row, col)

# 번역된 데이터 프레임을 새로운 CSV 파일로 저장
df.to_csv(output_file_path, index=False, encoding='utf-8-sig')
