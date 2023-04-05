import Foundation

struct Question {
    var title : String
    var answers : [String]
    var rightAnswer : Int
    
}

let questions : [Question] = [
    Question(title: "Qual das opções abaixo “were there” ou “there were” contém a mesma função que em “were there any kids in there?", answers: ["Jack and Bob were there too", "Boy, were there lots of snakes back then", "There were no chairs at all"], rightAnswer: 2),
    
    
    Question(title: " Na pergunta “What fish did you see?”, podemos afirmar que:", answers: ["O correto seria “what fish you saw?”", "Não há qualquer erro gramatical", "Está incorreta, pois o verbo auxiliar did deveria estar no começo da pergunta"], rightAnswer: 1),
    
    
    Question(title: "Qual frase abaixo é vista como correta ante os ditames gramaticais da língua inglesa?", answers: ["I would rather you went tomorrow", "I bought one clothe", "I did a research"], rightAnswer: 0),
    
    Question(title: "Qual alternativa abaixo apresenta uma frase passível de polêmica em função da sua construção?", answers: ["That’s a song I’ve never heard of", "I like reading books", " I’m off to bed"], rightAnswer: 0),
    
    Question(title: "Complete a frase ” I can’t help____________”", answers: ["eat chocolate", "eating chocolate", "for eating chocolate"], rightAnswer: 1),
    
    Question(title: "“Can’t get enough of it” indica:", answers: ["Falta de paciência", "Cansaço", "Predileção"], rightAnswer: 2),
    
    Question(title: "Qual frase abaixo contém a mesma função de yet presente na frase “My brother is 100% right and yet 100% wrong”?", answers: ["I am trying to keep drugs out of my life, and yet I’m forced to take them every day", "Are we there yet?", "It is yet to come"], rightAnswer: 0),
    
    Question(title: "Qual o sentido da composição fancy myself na frase “I fancied myself living in a place like this”?", answers: ["me dei o direito", "me vi", " me policiei"], rightAnswer: 1),
    
    Question(title: "Complete a frase: “this car _________fourteen thousand dollars”.", answers: ["affords", "goes for", "coasted"], rightAnswer: 1),
    
    Question(title: "O que significa drive home na frase “The newspapers drive home the fact that violence is part of urban life“?", answers: ["dar o recado", "revelar", "abordar"], rightAnswer: 0),
    
 

]
