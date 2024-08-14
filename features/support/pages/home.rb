
class HomePage
    include Capybara:DSL

    def open
        visist 'https://starbugs.vercel.app/'
    end

    def coffee_list
        return all('.coffee-item')
    end  
    
    def buy(coffee_name)
        product = find('.coffe-item', text: coffee_name)
        product.find('.buy-coffe').click
    end

end