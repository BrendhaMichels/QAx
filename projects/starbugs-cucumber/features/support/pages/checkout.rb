require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    def assert_product_details(product)
    product_title = find('.item-details h1')
    expect(product_title.text).to eql product[:name]

    sub_price = find('.subtotal .sub-price')
    expect(sub_price.text).to eql product[:price]

    delivery = find('.delivery-price')
    expect(delivery.text).to eql product[:delivery]
    end

    def assert_total_price(total_price)
    price = find('.total-price')
    expect(price.text).to eql total_price
    end
end