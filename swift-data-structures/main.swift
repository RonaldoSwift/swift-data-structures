//
//  main.swift
//  swift-data-structures
//
//  Created by Ronaldo Andre Vargas Huaman on 3/05/21.
//

import Foundation

var pilaDeEnteros: Stack<Int> = Stack.init()
pilaDeEnteros.push(2)
pilaDeEnteros.push(3)
pilaDeEnteros.push(5)
pilaDeEnteros.pop()

print(pilaDeEnteros)

struct Persona{
    var nombre: String
    var edad: Int
}

var dequePersonas: Deque<Persona> = Deque.init()

dequePersonas.enqueue(Persona.init(nombre: "Edgar", edad: 20))
dequePersonas.enqueue(Persona.init(nombre: "Ana", edad: 34))
dequePersonas.enqueueFront(Persona.init(nombre: "Jose", edad: 89))

print(dequePersonas)

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
        
        
        
        break
    case "2":
        break
    case "3":
        break
    case "4":
        break
    case "5":
        break
    case "6":
        break
    default:
        break
    }
}
