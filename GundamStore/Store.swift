//
//  Store.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 23/07/2023.
//

import Foundation
import CoreLocation
import SwiftUI

struct Store: Identifiable, Codable{
        var id: Int
    
    
        var name: String
        var email: String
        var number: String
        var description: String
        
        
        
        var imageName: String
       var image: Image {Image(imageName)}
    var coordinates: Coordinates
    
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
    
struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
