//
//  ColorCircles.swift
//  SwiftUIHW
//
//  Created by Sofa on 10.12.23.
//

import SwiftUI

struct ColorCircles: View {
    let color: Color
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Circle()
            .frame(width: width, height: height)
            .foregroundColor(color)
    }
}

struct ColorCircles_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircles(color: .red, width: 170, height: 170)
    }
}
