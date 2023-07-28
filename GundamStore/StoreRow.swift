//
//  StoreRow.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 23/07/2023.
//

import Foundation
import SwiftUI

struct StoreRow: View {
    var store: Store
    
    var body: some View {
        HStack{
            store.image
                .resizable()
                .frame(width: 100, height: 100)
            Text(store.name)
        }
    }
}
struct StoreRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StoreRow(store: stores[0])
                .previewLayout(.fixed(width: 300, height: 70))
            StoreRow(store: stores[1])
                .previewLayout(.fixed(width: 300, height: 70))
            StoreRow(store: stores[2])
                .previewLayout(.fixed(width: 300, height: 70))
            StoreRow(store: stores[3])
                .previewLayout(.fixed(width: 300, height: 70))
            
        }
    }
}
