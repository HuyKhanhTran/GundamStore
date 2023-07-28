//
//  StoreCard.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 23/07/2023.
//

import Foundation
import SwiftUI
import CoreLocation
struct StoreCard: View {
    var store: Store
    
    var body: some View{
        ScrollView{
            VStack{
                MapView(coordinate: store.locationCoordinate)                   .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                HStack{
                    Image(store.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                    
                    Text(store.name)
                        .font(.system(size: 20)).bold()
                }
                Spacer()
                
                    Text(store.email)
                Spacer()
                    Text(store.number)
                    
                
                Spacer()
                Text(store.description)

            }
        }
    }
}
struct StoreCard_Previews: PreviewProvider {
    static var previews: some View{
        StoreCard(store: stores[0])
        
        
    }
}
