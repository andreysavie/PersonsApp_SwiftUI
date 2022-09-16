//
//  PersonCellView.swift
//  PersonsApp
//
//  Created by Андрей Рыбалкин on 16.09.2022.
//

import SwiftUI

struct PersonCellView: View {
    
    var person: PersonModel
    
    var body: some View {
        HStack() {
            Image(person.photoImage)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding()
            VStack(alignment: .leading) {
                Text(person.name)
                    .font(.title2)
//                    .fontWeight(.semibold)
                    .padding(.bottom, 4)
                Text(person.product)
                    .font(.title3)
//                    .fontWeight(.regular)
            }
            Spacer()
        }
    }
}


struct PersonCellView_Previews: PreviewProvider {
    static var previews: some View {
        let personResponse: [PersonModel] = DataManager.shared.load("PersonModelData.json")
        let person1 = personResponse[1]
        PersonCellView(person: person1)
    }
}
