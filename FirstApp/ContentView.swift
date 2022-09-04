//
//  ContentView.swift
//  FirstApp
//
//  Created by Cristian Cretu on 04.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        HStack (spacing: 16) {
            Image("img")
                .resizable()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .rotationEffect(isActive ? .degrees(0) : .degrees(360))
            
            VStack (alignment: .leading) {
                Text("Cristian Cretu")
                    .font(.system(size: 20.0, weight: .bold, design: .rounded))
                
                Text("@cristicrtu")
                    .opacity(50)
                    .font(.system(size: 14.0, weight: .medium, design: .rounded))
            }
        }
        .padding(24)
        .background(isActive ? .green : .yellow)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .scaleEffect(isActive ? 1.4 : 1)
        .shadow(color: isActive ? .green : .yellow, radius: 16)
        .animation(.spring(), value: isActive)
        .onTapGesture {
            isActive.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
