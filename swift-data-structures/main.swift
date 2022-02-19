//
//  main.swift
//  swift-data-structures
//
//  Created by Ronaldo Andre Vargas Huaman on 3/05/21.
//

import Foundation
/**
 Para que entiendas mejor el codigo aquí esta algunos temas que debes leer
 Convertir un tipo de dato a otro: https://www.hackingwithswift.com/example-code/language/how-to-convert-a-string-to-an-int
 Tipos de String en Swift: https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
 Entrada y salida de texto en Swift: https://www.programiz.com/swift-programming/basic-input-output
 */

struct DequeFaseDeProduccion{
    var numeroDeChompa: Int
    var color: String
    var prioriedad: Int
    var tejido: Int
    var costura: Int
    var acabado: Int
    var lavado: Int
    var zurcido: Int
    var vaporizado: Int
    var acabadoFinal: Int
    var embolsado: Int
    
    func suma(prioriedad: Int, tejido: Int, costura:Int, acabado: Int, lavado: Int, zurcido: Int, vaporizado: Int,acabadoFinal: Int, embolsado: Int) -> Int{
        let tiempoTotalDeFabricacion: Int
        tiempoTotalDeFabricacion = (tejido + costura + acabado + lavado + zurcido + vaporizado + acabadoFinal + embolsado) / 8
        return tiempoTotalDeFabricacion
    }
}

//Creando Objeto
var colaDobleDeFaseDeProduccion: Deque<DequeFaseDeProduccion> = Deque<DequeFaseDeProduccion>()


var isMainMenuRunning: Bool = true
var option: String

while(isMainMenuRunning){
    
    print("\n ----------------------------------------------------")
    print("|               EMPRESA DE CONFESIONES               |")
    print("|----------------------------------------------------|")
    print("|              1)Fase de Produccion                  |")
    print("|              2)Imprecion de Bicola                 |")
    print("|              3)Imprecion de Cola de Prioriedad     |")
    print("|              4)Salir                               |")
    print("|____________________________________________________|\n")
    
    print(" Elija una opcion 1-3")
    option = readLine()!
    
    switch(option){
    case "1":
        
        break
    case "2":
        
        break
    case "3":
        
        print("|-------------------------------------------------------------------------------------------------------------------------------|")
        print("|                                                      SECUENCIA EN MINUTOS                                                     |")
        print("|-------------------------------------------------------------------------------------------------------------------------------|")
        print("| NUMERO | COLOR | PRIORIEDAD | TEJIDO | COSTURA | ACABADO | LAVADO | ZURCIDO | VAPORIZADO | ACABADO | EMBOLSADO | TIEMPO TOTAL |")
        print("| CHOMPA |       |            |        |         |         |        |         |            |   FINAL |           | FABRICACION  |")
        let secuencia = colaDobleDeFaseDeProduccion.getElemnts()
        secuencia.forEach{ item in
            print("| \(item.numeroDeChompa) | \(item.color) \(item.prioriedad) | \(item.tejido)\(item.costura) | \(item.acabado) | \(item.lavado) | \(item.zurcido) | \(item.vaporizado) | \(item.acabadoFinal) | \(item.embolsado) ")
        }
        
        break
    case "4":
        print("Gracias!!!")
        break
    default:
        print("Error")
    }
}
