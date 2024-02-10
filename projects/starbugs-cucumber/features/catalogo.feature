#language:pt

Funcionalidade: Catalogo de cafes
    Como um usuario do site, eu quero ver o catalogo na pagina principal 
    Para que eu possa escolher e saber mais sobre os produtos disponiveis

Cenario: Acessar o catalogo de cafes na pagina principal
    Quando acesso a pagina principal da Starbugs
    Entao eu devo ter uma lista de cafes disponiveis


Cenario: Iniciar a compra de um cafe
    Dado que estou na pagina principal da Starbugs
        E que desejo comprar o cafe 'Expresso Gelado'
        E que esse produto custa "R$ 9,99"
        E que o custo de entrega eh de "R$ 10,00"
    Quando inicio a compra desse item
    Então devo ver a pagina de Checkout com os detalher do produto
        E o valor total da compra deve ser de "R$ 19,99"

@temp
Cenario: Cafe indisponivel
    Dado que estou na pagina principal da Starbugs
        E que desejo comprar o cafe 'Expresso Cremoso'
    Quando inicio a compra desse item
    Então devo ver um popup informando que o produto esta indisponivel