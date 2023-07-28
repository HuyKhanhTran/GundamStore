//
//  ModelData.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 27/07/2023.
//

import Foundation
import CoreLocation

//var stores: [Store] = [
    //Store(name: "VDT hobby shop", email: "vuducthanh198@gmailcom", number: "039-692-0246",description: "This is a store..." , imageName: "vdt",locationCoordinate: CLLocationCoordinate2D(latitude: 21.023341, longitude: 105.839258)),
    //Store(name: "89 Gundam", imageName: "89gundam",locationCoordinate: CLLocationCoordinate2D(latitude: 10.802602, longitude: 106.636454))
    //Store(name: "GundamStoreVn", imageName: "gundamstorevn")
//]
var stores = decodeJsonFromJsonFile(jsonFileName: "store.json")

// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Store] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Store].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Store]
}
