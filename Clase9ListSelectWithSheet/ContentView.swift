//
//  ContentView.swift
//  Clase9ListSelectWithSheet
//
//  Created by Escurra Colquis on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectPerson: Person?
    @State private var selectDetent: PresentationDetent = .medium
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(ArrayListPerson().listPerson) {
                        person in
                        CellPerson(person: person)
                        .onTapGesture {
                            self.selectPerson = person
                        }
                    }
                }
                .sheet(item: $selectPerson) { person in
                    CellPerson(person: person)
                        .presentationDetents([.medium, .large], selection: $selectDetent)
                }
            }
            .navigationTitle("Lista")
        }
    }
}

struct CellPerson: View {
    var person: Person
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Image(systemName: "person")
            Text(person.name)
            Text(person.lastName)
                .bold()
        }
    }
}

#Preview {
    ContentView()
}
