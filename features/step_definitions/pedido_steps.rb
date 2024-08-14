
Dado('que iniciei a compra do item {string}') do | product_name|
    @home.buy(product_name)
end

Quando('faço a busca o seguinte CEP: {string}') do | zipcode |
    @checkout.find_zipcode(zipcode)  
end

Quando('informo os demais dados do endereço:') do | table |
    @checkout.fill_addres(table.rows.hash)
end

Quando('escolho a forma de pagamento {string}') do | payment_type |
    @checkout.choice_payment(payment_type)
end

Quando('por fim finalizo a compra') do
    @checkout.submit    
End

Quando('sou direcionado para a página de confirmação de Pedido') do
    @order.asset_order
End

Quando('deve ser informado o seguinte prazo e entrega {string}') do | delivery_time |
    @order.assert_delivery_time(delivery_time)
end
