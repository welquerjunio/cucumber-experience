#language: pt

Funcionalidade: Pedidos

    Como um usuário do site Starbugs, eu quero selecionar e comprar cafés
    Para que eu possa receber os produtos em meu endereço e e efeturar o pagamento na entrega


    Cenário: Compra bem sucedida

        Dado que estou na página principal da Starbugs
            E que iniciei a compra do item "Expresso Tradicional"
        Quando façoo a busca do seguinte CEP: "04534011"
            E informo o sdemais dados do endereço:
                | number     | 1000    |
                | details    | Apto 22 |
            E escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra
        Então sou redicionado para a página de confirmação de Pedidos
            E deve ser informado o seguinte prazo de entrega: " 20 min - 30 min"
