# frozen_string_literal: true

class Security
  include Capybara::DSL
  def tester_email
    find("[class=' form-control js-account-input ']").set 'tester020304050809@gmail.com'
  end

  def tester_senha
    find("[type='password']").set 'cNRZBZAa1N11'
  end
end
