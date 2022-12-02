from time import sleep
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.common.by import By
from selenium import webdriver


#sleep to wait for selenium even with the depends on in docker compose
sleep(5)

# connect to the selenium container created with docker compose
driver = webdriver.Remote('http://selenium:4444/wd/hub', desired_capabilities=DesiredCapabilities.FIREFOX)

# connect to webpage
driver.get('https://www.amazon.fr/')
print("page title : " + driver.title)

# get the search bar
search_bar = driver.find_element(By.ID, "twotabsearchtextbox")
search_bar.send_keys("arduino")

search_key = driver.find_element(By.ID, "nav-search-submit-button")
search_key.click()

driver.save_screenshot('screenshot.png')