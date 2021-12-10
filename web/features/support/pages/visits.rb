# frozen_string_literal: true

class Paginas
  include Capybara::DSL
  def visit_principal
    visit '/'
  end

  def visit_login
    visit '/account/login/'
  end

  def visit_produto(produto)
    visit "/#{produto}"
  end
end
