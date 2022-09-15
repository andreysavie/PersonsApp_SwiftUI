//
//  PersonsListView.swift
//  PersonsApp
//
//  Created by Андрей Рыбалкин on 16.09.2022.
//

import SwiftUI

struct PersonsListView: View {
    
    @State var personResponse: [PersonModel] = DataManager.shared.load("PersonModelData.json")
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(personResponse) { person in
                    NavigationLink(destination: DetailsView(object: person)) {
                        PersonCellView(person: person)
                    }
                }
            }
            .navigationTitle(Text("Персонажи"))
            .listStyle(.plain)
            .listRowInsets(EdgeInsets())
        }
    }
}

struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView()
    }
}

