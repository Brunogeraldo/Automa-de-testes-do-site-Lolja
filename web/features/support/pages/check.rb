# frozen_string_literal: true

class Border
  include Capybara::DSL
  def list_product
    page.has_css?("[class='item-product-border']")
  end

  def login_check
    page.has_css?("[class='account-page']")
  end

  def sacola_check
    page.has_css?("[name='go_to_checkout']", visible: false)
  end

  def danger
    find("[class='alert alert-danger']")
  end

  def alert
    find("[class='crumb active']")
  end
end
