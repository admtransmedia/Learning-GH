//
//  MainView.swift
//  Cessna
//
//  Created by Sergei Kriukov on 13.05.2022.
//

import SwiftUI

struct MainView: View {
    var cessnaList = CessnaModel()
 
    var body: some View {
        NavigationView {
            ScrollView{
            ForEach(cessnaList.cessnas) {
                lst in
                NavigationLink(destination: CessnaView(csn: lst)) {
                    HStack(spacing: 20){
                        Image(lst.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 100)
                            .cornerRadius(50)
                    Text("\(lst.name)")
                            .foregroundColor(.black)
                            .font(.title)
                        Spacer()
                    
                    }
                }
                
                
            }
            
        }
            .navigationTitle("Cessna models")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
