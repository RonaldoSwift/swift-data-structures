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

//1   ********************************************
struct Arribo{
    public var numeroDeProducto: Int
    public var tiempoDeLlegada: Int
}

struct StackDeArribo {
    private var items: [Arribo] = []
    
    func peek() -> Arribo {
        guard let topElement = items.first else { fatalError("Error") }
        return topElement
    }
    
    mutating func pop() -> Arribo {
        return items.removeFirst()
    }
    
    mutating func push(_ element: Arribo) {
        items.insert(element, at: 0)
    }
    
    func imprimir(){
        print("       ETAPA DE ARRIBO        ")
        print("   Nro.Producto     Minutos    ")
        print("_______________________________")
        for item in items {
            print("        \(item.numeroDeProducto)              \(item.tiempoDeLlegada)")
        }
    }
}
//2   ********************************************

struct Desarme{
    public var codigoDeDesarme: String
    public var Operario: Int
    public var TiempoDeServicio: Int
}

struct StackDeDesarme{
    private var items2: [Desarme] = []
    
    func peek2() -> Desarme {
        guard let topElement2 = items2.first else { fatalError("Error") }
        return topElement2
    }
    
    mutating func pop() -> Desarme{
        return items2.removeFirst()
    }
    
    mutating func push(_ elemnt: Desarme){
        items2.insert(elemnt, at: 0)
    }
    
    func imprimir(){
        print("            ETAPA DE DESARME            ")
        print("  Codigo         Operario        Tiempo ")
        print("  Desarme                       Servicio")
        print("________________________________________")
        for item2 in items2{
            print("    \(item2.codigoDeDesarme)             \(item2.Operario )               \(item2.TiempoDeServicio)")
        }
    }
}

//3   *********************************************

struct RevisionYReparacion{
    
}



//--------------------------------
var isMainMenuRunning: Bool = true
var option: String
var stack: StackDeArribo = StackDeArribo()
var stack2: StackDeDesarme = StackDeDesarme()

while(isMainMenuRunning){
    print("***************************************************")
    print("*****************  EMPRESA SOLDEX  ****************")
    print("* Elija una de las etapas:                        *")
    print("* 1) Etapa de arribo                              *")
    print("* 2) Etapa de desarme                             *")
    print("* 3) Etapa de revision y reparacion               *")
    print("* 4) Etapa de ensamblaje                          *")
    print("* 5) Salir                                        *")
    print("***************************************************")
    print("Eliga una de las opciones(1 - 5)")
    option = readLine()!
    
    switch(option) {
    case "1":
        print("Cual es su numero de Producto:")
        let numeroDeProducto = Int(readLine()!)!
        print("Cual es el tiempo de llegada")
        let tiempoDeLlegada = Int(readLine()!)!
        
        if(tiempoDeLlegada > 55 && tiempoDeLlegada < 65){
            stack.push(Arribo(numeroDeProducto: numeroDeProducto, tiempoDeLlegada: tiempoDeLlegada))
        }
        else{
            print("Error" , "El tiempo de llegada no esta en el rango de 55 - 65", separator: ":")
        }
        break
        
    case "2":
        
        print(" ----------------------------------- ")
        print("|  Operario  |    Tiempo de Servicio |")
        print("|                        (Minutos)   |")
        print("|------------------------------------|")
        print("|      1     |         90 - 110      |")
        print("|____________________________________|")
        print("|      2     |        111 - 120      |")
        print("|____________________________________|")
        print("|      3     |         40 - 80       |")
        print("| __________________________________ |")
        
        print("Ingrese codigo de desarme: ")
        let codigoDeDesarme = readLine()!
        print("Ingrese numero de operario: ")
        let operario = Int(readLine()!)!
        print("Ingrese Tiempo de servicio: ")
        let tiempoDeServicio = Int(readLine()!)!
        
        if(operario == 1){
            if (tiempoDeServicio >= 90 && tiempoDeServicio <= 110){
                stack2.push(Desarme(codigoDeDesarme: codigoDeDesarme, Operario: operario, TiempoDeServicio: tiempoDeServicio))
            }
        }
        else if(operario == 2){
            if(tiempoDeServicio >= 111 && tiempoDeServicio <= 120){
                stack2.push(Desarme(codigoDeDesarme: codigoDeDesarme, Operario: operario, TiempoDeServicio: tiempoDeServicio))
            }
        }
        else if(operario == 3){
            if(tiempoDeServicio >= 40 && tiempoDeServicio <= 80){
                stack2.push(Desarme(codigoDeDesarme: codigoDeDesarme, Operario: operario, TiempoDeServicio: tiempoDeServicio))
            }
        }
        else{
            print("Error" , "El tiempo de operario no esta en el rango de 40 - 120", separator: ":")
        }
        break
        
    case "3":
        
        print(" Secuencia de operaciones: ")
        
        print(" ------------------------------------------------------------------------------------------------------------ ")
        print("| Parte  |                                       Secuencia de Operaciones                                    |")
        print("|------------------------------------------------------------------------------------------------------------|")
        print("|   1    |   Operaciones 1   |   Operaciones 2   |   Operaciones 3   |   Operaciones 4   |   Operaciones 5   |")
        print("|   2    |   Operaciones 1   |   Operaciones 2   |   Operaciones 3   |   Operaciones 4   |   Operaciones 5   |")
        print("|   3    |   Operaciones 1   |   Operaciones 3   |   Operaciones 2   |                   |                   |")
        print("|   4    |   Operaciones 3   |   Operaciones 1   |                   |                   |                   |")
        print("|____________________________________________________________________________________________________________|")
        
        print("Los tiempos de cada reparacion estan expresados en minutos: ")
        
        print(" ----------------------------------------------------------------------------------------- ")
        print("| Parte  |                              Tiempo Proceso de Reparacion                      |")
        print("|-----------------------------------------------------------------------------------------|")
        print("|        |  Operacion 1  |  Operacion 2  |  Operacion 3  |  Operacion 4  |  Operacion 5   |")
        print("| 1 - 4  |     2 - 8     |     3 - 15    |    10 - 20    |      12       |     3 - 4      |")
        print("|_________________________________________________________________________________________|")
        
        print("Ingrese numero de producto: ")
        
        
        break
    case "4":
        print("Segunda opcion")
        
        break
    case "5":
        isMainMenuRunning = false
        stack2.imprimir()
        
        break
    default:
        isMainMenuRunning = false
        
        break
    }
}

/*
 
 
 
 func imprimir(){
     
     print("          ETAPA DE REVISION Y REPARACION         ")
     print("  Parte   Oper1   Oper2   Oper3   Oper4   Oper5  ")
     print("_________________________________________________")
     print("")
 }
 
 */
