# frozen_string_literal: true

class Category
  include Capybara::DSL
  def select(categoria)
    find("[data-name='#{categoria}']")
  end

  def filtro(categoria)
    find("[title='#{categoria}']")
  end

  def distribuicao(ordem)
    first("[class='form-select js-sort-by ']").find('option', text: ordem).select_option
  end

  def sacola
    find("[data-toggle='#modal-cart']")
  end
end
