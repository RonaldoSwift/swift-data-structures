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


var isMainMenuRunning: Bool = true
var option: String

while(isMainMenuRunning){
    
    print("\n ----------------------------------------------------")
    print("|               EMPRESA DE CONFESIONES               |")
    print("|----------------------------------------------------|")
    print("|               1)Fase de Produccion                 |")
    print("|               2)                                   |")
    print("|               3)Salir                              |")
    print("|____________________________________________________|\n")
    
    print(" Elija una opcion 1-3")
    option = readLine()!
    
    switch(option){
    case "1":
        break
    case "2":
        break
    case "3":
        break
    default:
        print("Error")
    }
}
