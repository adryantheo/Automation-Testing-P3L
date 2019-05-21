require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:firefox

Given("open the website") do
    driver.navigate.to  "http://127.0.0.1:8000/login"
  end

  Then("Admin Login") do
    driver.find_element(:xpath,'//*[@id="email"]').send_keys('admin@mail.com')
    driver.find_element(:xpath,'//*[@id="password"]').send_keys('@Admin123')
    driver.find_element(:xpath,'/html/body/div/div/div/div[2]/div/div/div/main/div/div/div/div/div/div/div[2]/button/div').click
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {driver.find_element(:xpath,'/html/body/div/div/div/div/div/div/div/nav/div/button[2]/div')}
    driver.find_element(:xpath,'/html/body/div/div/div/div/div/div/div/aside/div[1]/div[5]/a/div[2]/div').click
  end

  Then("Create Supplier") do
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/button/div').click
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[1]/div/div/div[1]/div/input').send_keys('AT Nama Sales')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[2]/div/div/div[1]/div/input').send_keys('AT Nama Supplier')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[3]/div/div/div[1]/div/input').send_keys('AT Alamat Supplier')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[4]/div/div/div[1]/div/input').send_keys('081987654321')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[3]/button[2]/div').click
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  end

  Then("Create Supplier2") do
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/button/div')}
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/button/div').click
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[1]/div/div/div[1]/div/input').send_keys('AT Nama Sales2')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[2]/div/div/div[1]/div/input').send_keys('AT Nama Supplier2')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[3]/div/div/div[1]/div/input').send_keys('AT Alamat Supplier2')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[4]/div/div/div[1]/div/input').send_keys('081987654322')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[3]/button[2]/div').click
  end

  # Then("Search Supplier") do
  #   wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  #   wait.until {driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/div[3]/div/div/div[1]/input')}
  #   driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/div[3]/div/div/div[1]/input').send_keys('AT Nama Sales')
  #   driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/div[3]/div/div/div[1]/input').send_keys('')
  #   driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/div[3]/div/div/div[1]/input').send_keys('AT Alamat Supplier2')
  #   driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/div[3]/div/div/div[1]/input').send_keys('')
  #   driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/div[3]/div/div/div[1]/input').send_keys('heheheheheheh')
  #   driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/nav/div/div[3]/div/div/div[1]/input').send_keys('')
  # end
  
  Then("Update Supplier") do
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/div/div[1]/table/tbody/tr[1]/td[5]/i[1]')}
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/div/div[1]/table/tbody/tr[1]/td[5]/i[1]').click
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[1]/div/div/div[1]/div/input').send_keys('Edit')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[2]/div/div/div[1]/div/input').send_keys('Edit')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[3]/div/div/div[1]/div/input').send_keys('Edit')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[2]/div/div/div[4]/div/div/div[1]/div/input').send_keys('')
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div[3]/button[2]/div').click
  end

  Then("Delete Supplier") do
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/div/div[1]/table/tbody/tr[1]/td[5]/i[2]')}
    driver.find_element(:xpath,'/html/body/div/div/div/div[3]/div/div/div/main/div/div/div/div/div/div[1]/table/tbody/tr[1]/td[5]/i[2]').click
    driver.switch_to().alert().accept()
  end
 