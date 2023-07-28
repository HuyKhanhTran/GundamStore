//
//  ContentView.swift
//  GundamStore
//
//  Created by Khanh, Tran Huy on 23/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
   
    var body: some View {
        NavigationView {
            ZStack{
                Color(.black).edgesIgnoringSafeArea(.all)
                Image("background")
                    
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    
                
                VStack{
                    Spacer()
                    Image("rmit-logo-white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 200)
                        
                    Text("Hobby Store")
                        .font(.system(size: 50))
                        .italic()
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:200)                .clipShape(Circle())
                            .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                            .shadow(radius: 7)
                    
                    Spacer()
                    
                    Spacer()
                    Text("Devoting yourself to a healthy culture")
                        
                        .font(Font.system(size: 22))
                        .italic()
                        
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    NavigationLink(destination: StoreList()){
                        Text("Get Started")
                            .font(.system(.title, design: .rounded))
                            .underline()
                            .fontWeight(.bold)
                            .padding(8)
                            
                        
                    }
                    
                    Button() {
                        showingAlert.toggle()
                    } label: {
                        Image(systemName: "info.circle")
                            .foregroundColor(.white)
                        
                        
                    }
                    .alert("Tran Huy Khanh \n Studnet ID: s3804630 \n COSC2659 IOS Development", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) {}
                    }
                    .offset(x:120, y: 20)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
