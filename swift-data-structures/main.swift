//
//  main.swift
//  swift-data-structures
//
//  Created by Ronaldo Andre Vargas Huaman on 3/05/21.
//

import Foundation

//Stack
struct Arribo{
    public var numeroDeProducto: Int
    public var tiempoDeLlegada: Int
}
struct Desarme{
    public var codigoDeDesarme: String
    public var operario: Int
    public var tiempoDeServicio: Int
}

//Deque
struct RevisionYReparacion{
    let parte: Int
    let oper1: Int?
    let oper2: Int?
    let oper3: Int?
    let oper4: Int?
    let oper5: Int?
}
struct Ensamblaje{
    let etapaDeEnsamblaje: Int

}

var stackDeArribo: Stack<Arribo> = Stack<Arribo>()
var stackDeDesarme: Stack<Desarme> = Stack<Desarme>()
var dequeDeRevisionYReparacion: Deque<RevisionYReparacion> = Deque<RevisionYReparacion>()
var dequeDeEnsamblaje: Deque<Ensamblaje> = Deque<Ensamblaje>()

//Menu principal

var isMainMenuRunning: Bool = true
var option: String

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
                dequeDeRevisionYReparacion.enqueue(
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
                dequeDeRevisionYReparacion.enqueue(
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
                dequeDeRevisionYReparacion.enqueue(
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
        print("Ingrese tiempo de ensamblaje: ")
        let tiempoDeEnsamblaje = Int(readLine()!)!
        
        if(tiempoDeEnsamblaje >= 80 && tiempoDeEnsamblaje <= 110){
            dequeDeEnsamblaje.enqueue(Ensamblaje.init(etapaDeEnsamblaje: tiempoDeEnsamblaje))
        }
        else{
            print("Error", "El numero no esta en el rango de 80 - 110", separator: ":")
        }
        break
        
    case "5":
        
        // 1 Tabla
        print("       ETAPA DE ARRIBO        ")
        print("   Nro.Producto     Minutos    ")
        print("_______________________________")
        let arribos = stackDeArribo.getElemnts()
        arribos.forEach { item in
            print("    \(item.numeroDeProducto)            \(item.tiempoDeLlegada)")
        }
        // 2 Tabla
        print("            ETAPA DE DESARME            ")
        print("  Codigo         Operario        Tiempo ")
        print("  Desarme                       Servicio")
        print("________________________________________")
        let desarmes = stackDeDesarme.getElemnts()
        desarmes.forEach { item in
            print("    \(item.codigoDeDesarme)     \(item.operario)       \(item.tiempoDeServicio)")
        }
        
        // 3 Tabla
        
        print("          ETAPA DE REVISION Y REPARACION         ")
        print("  Parte   Oper1   Oper2   Oper3   Oper4   Oper5  ")
        print("_________________________________________________")
        let revisionYReparacion = dequeDeRevisionYReparacion.getElemnts()
        revisionYReparacion.forEach { item in
            print("  \(item.parte)  \(item.oper1)   \(item.oper2)    \(item.oper3)    \(item.oper4)    \(item.oper5)")
        }
        
        // 4 Tabla
        
        print("       ETAPA ENSAMBLAJE      ")
        print("     Tiempo de ensamblaje    ")
        print("-----------------------------")
        let dequeDeEnsamblaje = dequeDeEnsamblaje.getElemnts()
        dequeDeEnsamblaje.forEach { item in
            print("  \(item.etapaDeEnsamblaje)")
        }
        break
        
    case "6":
        isMainMenuRunning = false
        break
        
    default:
        isMainMenuRunning = false
        break
    }
}

//var pilaDeEnteros: Stack<Int> = Stack.init()
//pilaDeEnteros.push(2)
//pilaDeEnteros.push(3)
//pilaDeEnteros.push(5)
//pilaDeEnteros.pop()
//
//print(pilaDeEnteros)
//
//struct Persona{
//    var nombre: String
//    var edad: Int
//}
//
//var dequePersonas: Deque<Persona> = Deque.init()
//
//dequePersonas.enqueue(Persona.init(nombre: "Edgar", edad: 20))
//dequePersonas.enqueue(Persona.init(nombre: "Ana", edad: 34))
//dequePersonas.enqueueFront(Persona.init(nombre: "Jose", edad: 89))
//
//print(dequePersonas)
