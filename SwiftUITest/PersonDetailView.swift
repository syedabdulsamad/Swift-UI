//
//  PersonDetailView.swift
//  SwiftUITest
//
//  Created by Abdul Samad on 3.12.2019.
//  Copyright © 2019 Abdul. All rights reserved.
//

import SwiftUI

struct PersonDetailView: View {

    var person: Person

    var body: some View {

        VStack {
            Spacer()
            Image(person.name)
            Spacer()
            HStack(alignment: .center, spacing: 20.0, content: {
                Text(person.name).bold().font(.largeTitle)
                Text(person.profession)
            })
            Spacer()
            Spacer()

        }.navigationBarTitle(Text(person.name), displayMode: .inline)
    }
}
