//
//  MapView.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 23/07/2023.
//

import Foundation
import MapKit
import SwiftUI
struct MapView: View{
    var coordinate: CLLocationCoordinate2D
     
     @State private var region = MKCoordinateRegion()

     var body: some View {
         Map(coordinateRegion: $region)
             .onAppear {
                 setRegion(coordinate)
             }
     }
     
     private func setRegion(_ coordinate: CLLocationCoordinate2D) {
         region = MKCoordinateRegion(
             center: coordinate,
             span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
         )
     }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
