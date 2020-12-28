//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Mohammed on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var kd = ""
    
    var body: some View {
        
        VStack {
            Text("محول العملات العجيب!")
                .font(.custom("(A) Arslan Wessam A (A) Arslan Wessam A", size: 55))
                .padding([.top, .leading, .trailing])
            
            TextField("العملة بالدينار", text: $kd)
                .font(.custom("ReemKufi-Regular", size: 30))
                .multilineTextAlignment(.center)
            VStack {
                HStack {
                    Image("us")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding()
                    
                    Text("$ \((Double(kd) ?? 0 ) * 3.28) ")
                }
                
                HStack {
                    Image("uk")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding()
                    
                    Text("£ \((Double(kd) ?? 0 ) * 2.46) ")
                }
                
                HStack {
                    Image("eu")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding()
                    
                    Text("€ \((Double(kd) ?? 0 ) * 2.70) ")
                }
            }
            .padding()

            Image("currency")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(y: 60)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
