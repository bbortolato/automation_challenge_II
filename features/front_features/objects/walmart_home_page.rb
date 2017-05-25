class WalmartHomePage < SitePrism::Page

  set_url ENVIRONMENT['walmart']

  element :search_box, '#suggestion-search'
  element :button_magnifier, 'button.search-icon'
  element :product,:xpath, '//*[@id="product-list"]/section/ul/li[4]/section/a/figure/img'
  element :add_to_cart, 'i.wm-icon.icon-cart-button.icon-buy-button'
  element :button_insurances, '#navegaCarrinho'
  element :button_cart, 'a.topbar-buttons.open-link.cart-link'
  element :button_finalize_cart, '#btn-finalize-cart'
  element :username,  '#signinField'
  element :password,  '#password'
  element :button_login,'#signinButtonSend'
  element :frame_login, '#iframeLogin'


  def login
    within_frame(frame_login) do
      username.set(USERNAME)
      password.set(PASSWORD)
      button_login.click
    end

  end

end