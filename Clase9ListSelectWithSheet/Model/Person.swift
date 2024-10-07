//
//  Person.swift
//  Clase9ListSelectWithSheet
//
//  Created by Escurra Colquis on 7/10/24.
//

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var lastName: String
}

struct ArrayListPerson {
    var listPerson = [
        Person(name: "Ursula", lastName: "Olivares"),
        Person(name: "Manuel", lastName: "Lopez"),
        Person(name: "Luis", lastName: "Smith"),
        Person(name: "Jhon", lastName: "Salazar"),
        Person(name: "Laura", lastName: "Palacios"),
        Person(name: "Fiorela", lastName: "Garcia"),
        Person(name: "Javier", lastName: "Gonzales"),
        Person(name: "Aldo", lastName: "Quispe"),
        Person(name: "Pablo", lastName: "Diaz"),
        Person(name: "Fernando", lastName: "Zamorex"),
        Person(name: "Carlos", lastName: "Castro"),
        Person(name: "Raul", lastName: "Ramirez"),
        Person(name: "Zlatan", lastName: "Ibrahimovic")
    ]
}
