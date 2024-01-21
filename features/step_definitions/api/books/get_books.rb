Quando('peça a requisição GET para {string}') do |endpoint|
    @response = HTTParty.get("https://648cf7d98620b8bae7ed81b7.mockapi.io#{endpoint}")
end
  
Então('a resposta do status deverá ser {int}') do |status_code|
    expect(@response.code).to eq(status_code)
end