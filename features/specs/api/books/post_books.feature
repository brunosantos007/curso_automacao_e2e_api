    #language : pt
    
    @automation_api
    Funcionalidade: API Books

    @books
    Cenário: POST Books
    Quando peça a requisição GET para "/books"
    E envie o body ""
    Então a resposta do status deverá ser 200