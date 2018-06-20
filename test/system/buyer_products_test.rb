require "application_system_test_case"

class BuyerProductsTest < ApplicationSystemTestCase
  setup do
    @buyer_product = buyer_products(:one)
  end

  test "visiting the index" do
    visit buyer_products_url
    assert_selector "h1", text: "Buyer Products"
  end

  test "creating a Buyer product" do
    visit buyer_products_url
    click_on "New Buyer Product"

    fill_in "Buyer", with: @buyer_product.Buyer_id
    fill_in "Product", with: @buyer_product.Product_id
    click_on "Create Buyer product"

    assert_text "Buyer product was successfully created"
    click_on "Back"
  end

  test "updating a Buyer product" do
    visit buyer_products_url
    click_on "Edit", match: :first

    fill_in "Buyer", with: @buyer_product.Buyer_id
    fill_in "Product", with: @buyer_product.Product_id
    click_on "Update Buyer product"

    assert_text "Buyer product was successfully updated"
    click_on "Back"
  end

  test "destroying a Buyer product" do
    visit buyer_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buyer product was successfully destroyed"
  end
end
