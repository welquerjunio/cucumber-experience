
require_relative './pages/home.rb'
require_relative './pages/chekout.rb'
require_relative './pages/components.rb'
require_relative './pages/order.rb'

Before do
    @home = HomePage.new
    @chekout = CheckoutPage.new
    @Popup = Popup.new
    @order = OrderPage.new
end

After do |scenario|

    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    attach(screenshot, "image/png", "Screenshot")

end