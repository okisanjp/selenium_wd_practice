#! /usr/bin/env ruby

require "rubygems"
require "selenium-webdriver"

# initialize
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
driver = Selenium::WebDriver.for :chrome, options: options

# googleにアクセス
driver.get 'https://www.google.com/'

# 検索フォームに入力してEnter
driver.find_element(:id, 'lst-ib').send_keys '新宿 ダーツ'
driver.find_element(:id, 'lst-ib').send_keys(:enter)

# puts driver.find_element(:id, 'center_col').text

# スクショをとる
driver.save_screenshot('./ss01.png')