from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from webdriver_manager.firefox import GeckoDriverManager
import os

def get_firefox_driver():
    headless = os.getenv('HEADLESS', 'true').lower() == 'true'

    options = webdriver.FirefoxOptions()
    if headless:
        options.add_argument("--headless")
        options.add_argument("--no-sandbox")
        options.add_argument("--disable-dev-shm-usage")
        options.add_argument("--width=1920")
        options.add_argument("--height=1080")
        options.add_argument("--remote-debugging-port=9222")  # Para depuração

    service = Service(GeckoDriverManager().install(), log_path='geckodriver.log')
    driver = webdriver.Firefox(service=service, options=options)
    driver.set_page_load_timeout(60)  # Aumente o tempo limite se necessário
    return driver
