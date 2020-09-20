//
//  DropPin.swift
//  DropPinDemo
//
//  Created by Dimitar Chakarov on 11/07/2020.
//

import SwiftUI

struct DropPin: Shape {
    var startAngle: Angle = .degrees(180)
    var endAngle: Angle = .degrees(0)

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.midY),
                      control1: CGPoint(x: rect.midX, y: rect.maxY),
                      control2: CGPoint(x: rect.minX, y: rect.midY + rect.height / 4))
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.addCurve(to: CGPoint(x: rect.midX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX, y: rect.midY + rect.height / 4),
                      control2: CGPoint(x: rect.midX, y: rect.maxY))
        return path
    }
}

struct DropPin_Previews: PreviewProvider {
    static var previews: some View {
        DropPin()
    }
}
