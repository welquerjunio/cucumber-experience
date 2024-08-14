require 'rspec'

class Popup
    include Capybara:DSL
    include RSpec::Matchers

    def have_text(text)
         popup = find('.swal12-html-container')
         expect(popup.text).to eql 'Produto indisponível'

end   