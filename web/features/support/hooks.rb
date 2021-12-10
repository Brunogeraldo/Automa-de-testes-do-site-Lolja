# frozen_string_literal: true

Before do
  @cookies = Popup.new
  @check = Border.new
  @select = Category.new
  @visits = Paginas.new
  @testers = Security.new
  page.driver.browser.manage.window.maximize
end

After do
  temp_shot = page.save_screenshot('logs/temp_screenshot.png')

  Allure.add_attachment(
    name: 'Screenshot',
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot)
  )
end
