//
//  Model.swift
//  PersonsApp
//
//  Created by Андрей Рыбалкин on 16.09.2022.
//

import Foundation
import UIKit
import SwiftUI

struct PersonModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var photoImage: String
    var product: String
    var description: String
}
