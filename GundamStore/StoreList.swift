//
//  StoreList.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 23/07/2023.
//

import SwiftUI
import Foundation
struct StoreList: View {
   
    var body: some View{
        ZStack{
            
            Color(.black).edgesIgnoringSafeArea(.all)
            List(stores){
                store in
                NavigationLink{
                    StoreCard(store: store)
                } label: {
                    StoreRow(store: store)
                }
                .navigationTitle("Store List")
            }.opacity(0.8)
                .background(Image("background"))
        }
    }
}
        

struct StoreList_Previews: PreviewProvider {
    static var previews: some View {
        StoreList()
    }
}
