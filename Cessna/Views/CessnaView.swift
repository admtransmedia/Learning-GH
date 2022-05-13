//
//  CessnaView.swift
//  Cessna
//
//  Created by Sergei Kriukov on 13.05.2022.
//

import SwiftUI

struct CessnaView: View {
    var csn:Cessna
    var body: some View {
        ScrollView{
            VStack{
                Text(csn.name)
                Image(csn.image)
                    .resizable()
                    .scaledToFit()
                Text("First flight \(csn.firstFlight)")
                    .font(.title)
                ForEach(csn.Characteristics, id:\.self) {
                    txt in
                    Text(txt)
                        .bold()
                        .padding()
                }
                Text(csn.Description)
                    .padding()
                
                
                
            }
        }
    }
}

struct CessnaView_Previews: PreviewProvider {
    static var previews: some View {
        let tst = CessnaModel()
        CessnaView(csn: tst.cessnas[0])
    }
}
