"""Purpose: A simple web scrapper using selenium to scrap vedabase.io for the bhagavad gita verses + translations"""
__author__ = "Vraj Shah"
__created__ = "1/28/2022"
__version__ = "1.0.0"

import csv, time, os
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service


PATH = "/Users/vrajs/chromedriver" #Change base off your system chrome driver location
BASE_URL = "https://vedabase.io/en/library/bg/"
FIELDS = ["Title", "Sanskrit", "English-Sanskrit", "Synonyms", "Translation"]
FILENAME = "verses.csv"

def find_data(driver):
    title = driver.title.replace("Bg. ", "")

    devanagari_text = driver.find_element(By.CLASS_NAME, "r-devanagari")
    sanskrit = devanagari_text.text

    verse_text = driver.find_elements(By.CLASS_NAME, "r-verse-text")
    english_sanskrit = ""
    for item in verse_text:
        english_sanskrit += item.text + "\n\n"

    synonyms_text = driver.find_element(By.CLASS_NAME, "r-synonyms")
    synonyms = synonyms_text.text

    translation_text = driver.find_element(By.CLASS_NAME, "r-translation")
    translation = translation_text.text
    return [title, sanskrit.replace('\n', '\\n'), english_sanskrit.replace('\n', '\\n'),
            synonyms, translation]

s = Service(executable_path=PATH)
chrome = webdriver.Chrome(service=s)  # ,options=options

url = BASE_URL
newFile = False
with open(FILENAME, mode="a+", encoding="utf-8") as f:
    csvwriter = csv.writer(f)
    if os.stat(FILENAME).st_size == 0:
        csvwriter.writerow(FIELDS)
        url += "1/1"
        newFile = True
    else:
        csvreader = csv.reader(f)
        last = []
        f.seek(0)
        for row in csvreader:
            last = row
        chapter = last[0]
        period = chapter.find('.')

        if period >= 0:
            url += f"{chapter[:period]}/{chapter[period + 1:]}"
        else:
            url += "1/1"
            newFile = True

    chrome.get(url)
    time.sleep(10)
    if newFile:
        csvwriter.writerow(find_data(chrome))

    stop = False
    while not stop:
        try:
            for i in range(20):
                chrome.find_element(By.LINK_TEXT, "Next").click()
                url = chrome.current_url
                if url.count('/') == 7:
                    if url[-3:-1] == '13':
                        url = chrome.current_url + "1-2/"
                    elif url[-3:-1] == '16':
                        url = chrome.current_url + "1-3/"
                    else:
                        url = chrome.current_url + "1/"
                    chrome.get(url)
                csvwriter.writerow(find_data(chrome))
            chrome.quit()
            chrome = webdriver.Chrome(service=s)  # ,options=options
            chrome.get(url)
            time.sleep(2)
        except Exception as e:
            print(url)
            chrome.quit()
            if url == BASE_URL + "note-2nd-edition/1/":
                stop = True
            else:
                chrome = webdriver.Chrome(service=s)  # ,options=options
                if url.count('/') == 7:
                    if url[-3:-1] == '13':
                        url = chrome.current_url + "1-2/"
                    elif url[-3:-1] == '16':
                        url = chrome.current_url + "1-3/"
                    else:
                        url = chrome.current_url + "1/"
                chrome.get(url)
                csvwriter.writerow(find_data(chrome))

print("FINISHED SCRAPPING THE WEBSITE")