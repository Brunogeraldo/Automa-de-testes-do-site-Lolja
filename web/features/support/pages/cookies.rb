class Popup
  include Capybara::DSL

  def cookies
    click_button "Ok, entendi"
  end
end
