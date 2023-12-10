//
//  SquareFigure.swift
//  SwiftUIHW
//
//  Created by Sofa on 10.12.23.
//

import SwiftUI

struct SquareFigure: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
    }
}

struct SquareFigure_Previews: PreviewProvider {
    static var previews: some View {
        SquareFigure(width: 200, height: 500)
    }
}
