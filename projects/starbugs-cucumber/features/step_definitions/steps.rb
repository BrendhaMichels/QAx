Quando('acesso a pagina principal da Starbugs') do
    visit 'https://starbugs.vercel.app/'    
end
  
Entao('eu devo ter uma lista de cafes disponiveis') do
    products = all('.coffee-item')
    expect(products.size).to be > 0
end
  

Dado('que estou na pagina principal da Starbugs') do
    visit 'https://starbugs.vercel.app/' 
end
  
Dado('que desejo comprar o cafe {string}') do |product_name|
    @product_name = product_name
end

Dado('que esse produto custa {string}') do |product_price|
    @product_price = product_price
end

Dado('que o custo de entrega eh de {string}') do |delivery_price|
    @delivery_price = delivery_price
end

Quando('inicio a compra desse item') do
    product = find('.coffee-item', text: @product_name)
    product.find('.buy-coffee').click    
end

Então('devo ver a pagina de Checkout com os detalher do produto') do
    product_title = find('.item-details h1')
    expect(product_title.text).to eql @product_name

    sub_price = find('.subtotal .sub-price')
    expect(sub_price.text).to eql @product_price

    delivery = find('.delivery-price')
    expect(delivery.text).to eql @delivery_price
end

Então('o valor total da compra deve ser de {string}') do |total_price|
    price = find('.total-price')
    expect(price.text).to eql total_price
end

Então('devo ver um popup informando que o produto esta indisponivel') do
    popup = find('.swal2-html-container')
    expect(popup.text).to eql 'Produto indisponível'
end
  


