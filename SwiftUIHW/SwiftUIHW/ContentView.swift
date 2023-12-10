//
//  ContentView.swift
//  SwiftUIHW
//
//  Created by Sofa on 10.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    @State private var count = 0
    
    var body: some View {
        VStack {
            ZStack {
                SquareFigure(width: 200, height: 600)
                VStack {
                    ColorCircles(color: .red, width: 160, height: 160)
                        .opacity(opacityRed)
                        .padding()
                    ColorCircles(color: .yellow, width: 160, height: 160)
                        .opacity(opacityYellow)
                        .padding()
                    ColorCircles(color: .green, width: 160, height: 160)
                        .opacity(opacityGreen)
                        .padding()
                }
            }
            .padding()
            
            Button(
                action: { changeColors() },
                label: { Text("Change color") }
            )
            .padding()
            .frame(width: 200, height: 50)
            .font(.title2)
        }
    }
    
     func changeColors() {
        switch count {
        case 0:
            opacityRed = 1
            opacityYellow = 0.3
            count += 1
        case 1:
            opacityYellow = 1
            count += 1
        case 2:
            opacityRed = 0.3
            opacityYellow = 0.3
            opacityGreen = 1
            count += 1
        case 3:
            opacityYellow = 1
            opacityGreen = 0.3
            count = 0
        default:
            opacityYellow = 1
            opacityRed = 1
            opacityGreen = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
