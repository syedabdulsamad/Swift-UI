//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Abdul Samad on 28.11.2019.
//  Copyright © 2019 Abdul. All rights reserved.
//

import SwiftUI


struct Person: Identifiable {
    var id = UUID()
    var name: String
    var profession: String
}

struct PersonCell: View {
    let person: Person

    var body: some View {

        HStack {
            Image(person.name).resizable().frame(minWidth: 30.0, idealWidth: 50.0, maxWidth: 70.0, minHeight: 30.0, idealHeight: 50.0, maxHeight: 70.0, alignment: .center)
            VStack(alignment: .leading, spacing: 5.0, content: {

                Text(person.name).font(.largeTitle)
                Text(person.profession).font(.caption).foregroundColor(.gray)

            })
            Spacer()

            }


    }
}

struct ContentView: View {
    @State private var persons = [

        Person( name: "Amir", profession: "Doctor"),
        Person( name: "Abdul", profession: "Engineer"),
        Person( name: "Johanna", profession: "Business"),
        Person( name: "John", profession: "Coach"),
        Person( name: "Mark", profession: "Football player"),
        Person( name: "Sam", profession: "Management")
    ]

    var body: some View {

        NavigationView {
            //VStack{
                List(persons) { person in
                    NavigationLink(destination: PersonDetailView(person: person)) {
                        PersonCell(person: person)
                    }
                }
                .navigationBarTitle(Text("Names"))

//                Button(action: {
//                    self.persons.append(Person( name: "Mark", profession: "Developer"))
//                }) {
//                    Text("Click me")
//                }.navigationBarTitle( Text("Button"))
            //}
        }
    }
}

struct

ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
