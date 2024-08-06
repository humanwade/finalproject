from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
import time
import pandas as pd

# ChromeDriver 경로
chrome_service = Service(r'C:\Users\ict03_027\.wdm\drivers\chromedriver\win64\125.0.6422.141\chromedriver-win32\chromedriver.exe')
chrome_options = Options()
chrome_options.add_argument("--headless")  # 브라우저를 보이지 않게 실행

driver = webdriver.Chrome(service=chrome_service, options=chrome_options)

baseurl = 'https://app.f45challenge.com/eat/home-cooking/recipes/detail/'

음식이름 =[]
음식재료 =[]
음식영양성분 =[]

음식조리법 =[]
음식이미지url =[]

for i in range(53, 354):
    try:
        url = f'{baseurl}{i}'
        driver.get(url)
        time.sleep(1)  # 페이지가 로드될 때까지 기다리기

        foodname = driver.find_element(by=By.CSS_SELECTOR, value='.recipe__detail-title').text

        ingredient = driver.find_element(by=By.CSS_SELECTOR, value='div.recipe__detail-content > div > div:nth-child(1) > ul' ).text

        instruction = driver.find_element(by=By.CSS_SELECTOR, value='div.recipe__detail-content > div > div:nth-child(2)').text

        nutrition = driver.find_element(by=By.CSS_SELECTOR, value='div.recipe__detail-content > div > div:nth-child(3) > table').text

        foodimg = driver.find_element(by=By.CSS_SELECTOR, value='body > app-root > app-main-layout > app-sub-menu > div > app-detail > div.container > div.recipe__detail > div.recipe__detail-content > app-image > div > img').get_attribute('src')

        print(foodimg)


        음식이름.append(foodname)
        음식재료.append(ingredient)
        음식조리법.append(instruction)
        음식영양성분.append(nutrition)
        음식이미지url.append(foodimg)

    except :
        pass
driver.quit()

# 데이터프레임 생성
data = {
    '음식이름': foodname,
    '음식재료': 음식재료,
    '음식조리법': 음식조리법,
    '음식영양성분': 음식영양성분,
    '음식이미지url': 음식이미지url
}

df = pd.DataFrame(data)

# CSV 파일로 저장
df.to_csv('healthyrecipes.csv', index=False, encoding='utf-8-sig')

print('Data has been saved to recipes.csv')


