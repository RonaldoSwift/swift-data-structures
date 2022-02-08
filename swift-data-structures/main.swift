//
//  main.swift
//  swift-data-structures
//
//  Created by Ronaldo Andre Vargas Huaman on 3/05/21.
//

import Foundation
import DequeModule
import Collections
import OrderedCollections

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
    public var operario: Int
    public var tiempoDeServicio: Int
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
            print("    \(item2.codigoDeDesarme)             \(item2.operario )               \(item2.tiempoDeServicio)")
        }
    }
}

//3   *********************************************

struct RevisionYReparacion{
    let parte: Int
    let oper1: Int?
    let oper2: Int?
    let oper3: Int?
    let oper4: Int?
    let oper5: Int?
}

//4   *********************************************

struct Ensamblaje{
    let etapaDeEnsamblaje: Int
    
    func imprimir(){
        print("       ETAPA ENSAMBLAJE      ")
        print("     Tiempo de ensamblaje    ")
        print("-----------------------------")
        
    }
}

//--------------------------------
var isMainMenuRunning: Bool = true
var option: String

var stackDeArribo: StackDeArribo = StackDeArribo()
var stackDeDesarme: StackDeDesarme = StackDeDesarme()
var colaDobleDeRevisionYReparacion: Deque<RevisionYReparacion> = []
var colaDobleDeEnsamblaje: Deque<Ensamblaje> = []

while(isMainMenuRunning){
    print("***************************************************")
    print("*****************  EMPRESA SOLDEX  ****************")
    print("* Elija una de las etapas:                        *")
    print("* 1) Etapa de arribo                              *")
    print("* 2) Etapa de desarme                             *")
    print("* 3) Etapa de revision y reparacion               *")
    print("* 4) Etapa de ensamblaje                          *")
    print("* 5) Mostrar todas las tablas                     *")
    print("* 6) Salir                                        *")
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
            stackDeArribo.push(Arribo(numeroDeProducto: numeroDeProducto, tiempoDeLlegada: tiempoDeLlegada))
        }
        else{
            print("Error" , "El tiempo de llegada no esta en el rango de 55 - 65", separator: ":")
        }
        break
        
    case "2":
        
        print(" ------------------------------------ ")
        print("|  Operario  |    Tiempo de Servicio |")
        print("|                        (Minutos)   |")
        print("|------------------------------------|")
        print("|      1     |         90 - 110      |")
        print("|____________________________________|")
        print("|      2     |        111 - 120      |")
        print("|____________________________________|")
        print("|      3     |         40 - 80       |")
        print("|____________________________________|")
        
        print("Ingrese codigo de desarme: ")
        let codigoDeDesarme = readLine()!
        print("Ingrese numero de operario: ")
        let operario = Int(readLine()!)!
        print("Ingrese Tiempo de servicio: ")
        let tiempoDeServicio = Int(readLine()!)!
        
        if(operario == 1){
            if (tiempoDeServicio >= 90 && tiempoDeServicio <= 110){
                stackDeDesarme.push(Desarme(codigoDeDesarme: codigoDeDesarme, operario: operario, tiempoDeServicio: tiempoDeServicio))
            } else {
                print("Error" , "El tiempo de operario 1 no esta en el rango de 90 - 110", separator: ":")
            }
        }
        else if(operario == 2){
            if(tiempoDeServicio >= 111 && tiempoDeServicio <= 120){
                stackDeDesarme.push(Desarme(codigoDeDesarme: codigoDeDesarme, operario: operario, tiempoDeServicio: tiempoDeServicio))
            } else {
                print("Error" , "El tiempo de operario 2 no esta en el rango de 111 - 120", separator: ":")
            }
        }
        else if(operario == 3){
            if(tiempoDeServicio >= 40 && tiempoDeServicio <= 80){
                stackDeDesarme.push(Desarme(codigoDeDesarme: codigoDeDesarme, operario: operario, tiempoDeServicio: tiempoDeServicio))
            } else {
                print("Error" , "El tiempo de operario 3 no esta en el rango de 40 - 80", separator: ":")
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
        
        print("Ingrese el numero de parte de 1-4: ")
        let numeroDeParte = Int(readLine()!)!
        
        
        if(numeroDeParte == 1 || numeroDeParte == 2) {
            
            print("Ingrese tiempo de la oper1: ")
            let tiempoDeOperaciones1 = Int(readLine()!)!
            print("Ingrese tiempo de la oper2: ")
            let tiempoDeOperaciones2 = Int(readLine()!)!
            print("Ingrese tiempo de la oper3: ")
            let tiempoDeOperaciones3 = Int(readLine()!)!
            print("Ingrese tiempo de la oper4: ")
            let tiempoDeOperaciones4 = Int(readLine()!)!
            print("Ingrese tiempo de la oper5: ")
            let tiempoDeOperaciones5 = Int(readLine()!)!
            
            if((tiempoDeOperaciones1 >= 2 && tiempoDeOperaciones1 <= 8) &&
               (tiempoDeOperaciones3 >= 10 && tiempoDeOperaciones3 <= 20) &&
               (tiempoDeOperaciones2 >= 3 && tiempoDeOperaciones2 <= 15) &&
               (tiempoDeOperaciones4 == 12) &&
               (tiempoDeOperaciones5 >= 3 && tiempoDeOperaciones5 <= 4)) {
                colaDobleDeRevisionYReparacion.prepend(
                    RevisionYReparacion(parte: numeroDeParte,
                                        oper1: tiempoDeOperaciones1,
                                        oper2: tiempoDeOperaciones2,
                                        oper3: tiempoDeOperaciones3,
                                        oper4: tiempoDeOperaciones4,
                                        oper5: tiempoDeOperaciones5)
                )
                
            }
    
        }
        else if(numeroDeParte == 3) {
            
            print("Ingrese tiempo de la oper1: ")
            let tiempoDeOperaciones1 = Int(readLine()!)!
            
            print("Ingrese tiempo de la oper3: ")
            let tiempoDeOperaciones3 = Int(readLine()!)!
            
            print("Ingrese tiempo de la oper2: ")
            let tiempoDeOperaciones2 = Int(readLine()!)!
            
            if((tiempoDeOperaciones1 >= 2 && tiempoDeOperaciones1 <= 8) &&
               (tiempoDeOperaciones3 >= 10 && tiempoDeOperaciones3 <= 20) &&
               (tiempoDeOperaciones2 >= 3 && tiempoDeOperaciones2 <= 15)) {
                colaDobleDeRevisionYReparacion.prepend(
                    RevisionYReparacion(parte: numeroDeParte,
                                        oper1: tiempoDeOperaciones1,
                                        oper2: tiempoDeOperaciones2,
                                        oper3: tiempoDeOperaciones3,
                                        oper4: nil,
                                        oper5: nil)
                )
            }
        }
        else if(numeroDeParte == 4) {
            print("Ingrese tiempo de la oper3: ")
            let tiempoDeOperaciones3 = Int(readLine()!)!
            
            print("Ingrese tiempo de la oper1: ")
            let tiempoDeOperaciones1 = Int(readLine()!)!
            
            if((tiempoDeOperaciones3 >= 10 && tiempoDeOperaciones3 <= 20) &&
               (tiempoDeOperaciones1 >= 2 && tiempoDeOperaciones1 <= 8)) {
                colaDobleDeRevisionYReparacion.prepend(
                    RevisionYReparacion(parte: numeroDeParte,
                                        oper1: tiempoDeOperaciones1,
                                        oper2: nil,
                                        oper3: tiempoDeOperaciones3,
                                        oper4: nil,
                                        oper5: nil)
                )
            }
            
        } else{
            print("Error", "El numero de parte no esta entre 1 - 4", separator: ":")
        }
        
        break
    case "4":
       
    
        break
    case "5":
        stackDeArribo.imprimir()
        stackDeDesarme.imprimir()
        
        // imprimer la tabla de la etapa 3
        print("          ETAPA DE REVISION Y REPARACION         ")
        print("  Parte   Oper1   Oper2   Oper3   Oper4   Oper5  ")
        print("_________________________________________________")
        for item in colaDobleDeRevisionYReparacion {
            print("  \(item.parte)  \(item.oper1)   \(item.oper2)    \(item.oper3)    \(item.oper4)    \(item.oper5)")
        }
        
        // imprimer la tabla de la etapa 4
        
        break
    case "6":
        isMainMenuRunning = false
        
        break
    default:
        isMainMenuRunning = false
        
        break
    }
}

