    #language : pt
    
    @automation_api
    Funcionalidade: API Books

    @books
    Cenário: GET Books
    Quando peça a requisição GET para "/books"
    Então a resposta do status deverá ser 200

    @book
    Cenário: GET Book
    Quando peça a requisição GET para "/books/1"
    Então a resposta do status deverá ser 200