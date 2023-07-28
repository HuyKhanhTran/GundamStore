//
//  GreetingView.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 23/07/2023.
//

import Foundation
import SwiftUI

struct GreetingView: View{
    
    @State private var showingAlert = false
    var body: some View{
        NavigationView {
            ZStack{
                Color(red: 0.00, green: 0.00, blue: 0.48).edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
                    Image("rmit-logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 200)
                    Text("My Store")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 280)                .clipShape(Circle())
                        .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                        .shadow(radius: 7)
                    Spacer()
                    Text("Devoting yourself to a healthy culture")
                        .font(.title3)
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    NavigationLink(destination: StoreList()){
                        Text("Get Started")
                        
                    }
                    
                    Button() {
                        showingAlert.toggle()
                    } label: {
                        Image(systemName: "info.circle")
                            
                        
                    }
                    .alert("Tran Huy Khanh \n Studnet ID: s3804630", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) {}
                    }
                    .offset(x:120, y: 20)
                }
            }
        }
        
    }
    struct GreetingView_Previews: PreviewProvider {
        static var previews: some View {
            
            GreetingView()
            
        }
    }
}
