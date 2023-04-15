Dado('que esteja na página home') do
  commum.load 
end

Quando('eu clico no botão {string}') do |btn_name|
  menu.click_button(btn_name)
end

Então('sou direcionado para a sessão {string}') do |sessao_name|
  menu.validate_test(sessao_name)
end