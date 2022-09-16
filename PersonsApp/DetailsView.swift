//
//  DetailsView.swift
//  PersonsApp
//
//  Created by Андрей Рыбалкин on 16.09.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var object: PersonModel
    
    var body: some View {
        VStack(spacing: 16.0) {
            VStack(spacing: 20.0) {
                MainImage(object: object)
                Text(object.name)
                    .lineLimit(nil)
                    .font(.largeTitle)
//                    .fontWeight(.semibold)
            }
            
            VStack(alignment: .leading, spacing: 12.0) {
                Text("Описание")
                    .font(.title)
                Text(object.description)
//                    .fontWeight(.light)
                    .lineLimit(nil)
            }
            Spacer()
        }
        .padding()
    }
}

struct MainImage: View {
    
    var object: PersonModel
    
    var body: some View {
        Image(object.photoImage)
            .resizable()
            .cornerRadius(30)
            .frame(width: 170, height: 170)
            .overlay(RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray, lineWidth: 3)
            )
            .shadow(radius: 10)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let personResponse: [PersonModel] = DataManager.shared.load("PersonModelData.json")
        let person1 = personResponse[1]
        DetailsView(object: person1)
    }
}

