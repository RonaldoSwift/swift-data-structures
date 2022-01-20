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

while (isMainMenuRunning) {
    
    let mainMenuInformation = """
    **************EMPRESA SOLDEX**************
    1. Registrar Arribo
    2. Registrar Desarme
    3. Registrar ...
    4. Registrar ...
    5. Salir
    ******************************************
    """
    
    print(mainMenuInformation)
    print("\nQue opcion desea?")
    option = readLine()!
    
    switch(option) {
    case "1":
        print("Primera opcion")
        
        break
    case "2":
        print("Segunda opcion")
        
        break
    case "3":
        print("Segunda opcion")
        
        break
    case "4":
        print("Segunda opcion")
        
        break
    case "5":
        isMainMenuRunning = false
        break
    default:
        isMainMenuRunning = false
        break
    }
    
}
