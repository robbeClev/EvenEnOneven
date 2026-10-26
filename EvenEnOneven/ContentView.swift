//
//  ContentView.swift
//  EvenEnOneven
//
//  Created by Robbe on 12/10/2026.
//

import SwiftUI

struct ContentView: View {
    @State var uitvoer: String = ""
    @State var invoer: String = ""
    var body: some View {
        VStack {
            HeaderView("Even En Oneven", subtitle: "@State, Rest bij deling, Tertiaire operator, Textfield, Button", desc: "De app berekent of een gegeven getal even of oneven is.", back: .mint, textColor: .white)
            VStack{
                TextField(text: $invoer, label: {Text("Geef een geheel getal in:")})
                    .padding()
                Button("Even of oneven?") {
                    if let getal = Int(invoer) {
                        uitvoer = getal % 2 == 0 ? "EVEN" : "ONEVEN"
                    } else {
                        uitvoer = "Enkel gehele getallen invoeren!"
                    }
                }
                .padding(.bottom, 40)
                
                Text(uitvoer)
            }
            .font(.largeTitle)
            
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
