//: Playground - noun: a place where people can play

import UIKit


enum Naipes {
    case Ouros
    case Copas
    case Espada
    case Paus
}

/* Outra maneira de criar o enum */
/*
enum Naipes {
    case Ouros, Copas, Espada, Paus
}
*/

//Setando diretamente na inicialização da variavel
let meuNaipe = Naipes.Ouros

//Definindo uma variavel do tipo Naipe, e setando o valor posteriormente
var outroNaipe: Naipes
outroNaipe = .Espada


/*
enum Mes: Int {
    case Jan = 1
    case Fev = 2
    case Mar = 3
    case Abr = 4
    case Mai = 5
    case Jun = 6
    case Jul = 7
    case Ago = 8
    case Set = 9
    case Out = 10
    case Nov = 11
    case Dez = 12
}
*/

//Assume valores de 2 a 12 para os enumeradores sem valor associado diretamente
enum Mes: Int {
    case Jan = 1, Fev, Mar, Abr, Mai, Jun, Jul, Ago, Set, Out, Nov, Dez
    
    func nomeMes() -> String {
        switch self {
        case .Jan:
            return "Janeiro"
        case .Fev:
            return "Fevereiro"
        case .Mar:
            return "Março"
        case .Abr:
            return "Abril"
        case .Mai:
            return "Maio"
        case .Jun:
            return "Junho"
        case .Jul:
            return "Julho"
        case .Ago:
            return "Agosto"
        case .Set:
            return "Setembro"
        case .Out:
            return "Outubro"
        case .Nov:
            return "Novembro"
        case .Dez:
            return "Dezembro"
        }
    }
}


//utilizando o "nome" do enumerador
let mes = Mes.Mar
print(mes.rawValue)

//utilizando o valor numérico correspondente ao mês, utilizando o <i>rawValue</i>
let outroMes = Mes(rawValue: 6) // Jun

print(mes.nomeMes())
print(outroMes!.nomeMes())


enum Nacionalidade {
    case Estrangeira
    case Brasileira(documento: String)
    
    func Documento() -> String {
        switch self {
        case .Estrangeira:
            return "Nacionalidade estrangeira, não tem documento associado"
        case let .Brasileira(documento):
            return "Nacionalidade Brasileira, documento: \(documento)"
        }
    }
}

var nacionalidade = Nacionalidade.Estrangeira
print(nacionalidade.Documento())

nacionalidade = .Brasileira(documento: "123.234.345-45")
print(nacionalidade.Documento())
