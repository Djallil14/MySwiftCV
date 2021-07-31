//
//  BackgroundShapes.swift
//  CVBuilder
//
//  Created by Djallil Elkebir on 2021-07-30.
//

import SwiftUI

struct FirstBackgroundShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.9*height))
        path.addLine(to: CGPoint(x: 0.05556*width, y: 0.83344*height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: 0.61656*height), control1: CGPoint(x: 0.11111*width, y: 0.76563*height), control2: CGPoint(x: 0.22222*width, y: 0.63438*height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: 0.65*height), control1: CGPoint(x: 0.44444*width, y: 0.6*height), control2: CGPoint(x: 0.55556*width, y: 0.7*height))
        path.addCurve(to: CGPoint(x: 0.94444*width, y: 0.3*height), control1: CGPoint(x: 0.77778*width, y: 0.6*height), control2: CGPoint(x: 0.88889*width, y: 0.4*height))
        path.addLine(to: CGPoint(x: width, y: 0.2*height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0.94444*width, y: height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: height), control1: CGPoint(x: 0.88889*width, y: height), control2: CGPoint(x: 0.77778*width, y: height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: height), control1: CGPoint(x: 0.55556*width, y: height), control2: CGPoint(x: 0.44444*width, y: height))
        path.addCurve(to: CGPoint(x: 0.05556*width, y: height), control1: CGPoint(x: 0.22222*width, y: height), control2: CGPoint(x: 0.11111*width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.closeSubpath()
        return path
    }
}

struct SecondBackgroundShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.3*height))
        path.addLine(to: CGPoint(x: 0.05556*width, y: 0.41656*height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: 0.76656*height), control1: CGPoint(x: 0.11111*width, y: 0.53438*height), control2: CGPoint(x: 0.22222*width, y: 0.76563*height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: 0.5*height), control1: CGPoint(x: 0.44444*width, y: 0.76563*height), control2: CGPoint(x: 0.55556*width, y: 0.53438*height))
        path.addCurve(to: CGPoint(x: 0.94444*width, y: 0.71656*height), control1: CGPoint(x: 0.77778*width, y: 0.46563*height), control2: CGPoint(x: 0.88889*width, y: 0.63438*height))
        path.addLine(to: CGPoint(x: width, y: 0.8*height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0.94444*width, y: height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: height), control1: CGPoint(x: 0.88889*width, y: height), control2: CGPoint(x: 0.77778*width, y: height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: height), control1: CGPoint(x: 0.55556*width, y: height), control2: CGPoint(x: 0.44444*width, y: height))
        path.addCurve(to: CGPoint(x: 0.05556*width, y: height), control1: CGPoint(x: 0.22222*width, y: height), control2: CGPoint(x: 0.11111*width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.closeSubpath()
        return path
    }
}
struct ThirdBackgroundShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0.05556*width, y: 0.01656*height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: 0.2*height), control1: CGPoint(x: 0.11111*width, y: 0.03438*height), control2: CGPoint(x: 0.22222*width, y: 0.06563*height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: 0.58344*height), control1: CGPoint(x: 0.44444*width, y: 0.33437*height), control2: CGPoint(x: 0.55556*width, y: 0.56563*height))
        path.addCurve(to: CGPoint(x: 0.94444*width, y: 0.3*height), control1: CGPoint(x: 0.77778*width, y: 0.6*height), control2: CGPoint(x: 0.88889*width, y: 0.4*height))
        path.addLine(to: CGPoint(x: width, y: 0.2*height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0.94444*width, y: height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: height), control1: CGPoint(x: 0.88889*width, y: height), control2: CGPoint(x: 0.77778*width, y: height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: height), control1: CGPoint(x: 0.55556*width, y: height), control2: CGPoint(x: 0.44444*width, y: height))
        path.addCurve(to: CGPoint(x: 0.05556*width, y: height), control1: CGPoint(x: 0.22222*width, y: height), control2: CGPoint(x: 0.11111*width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.closeSubpath()
        return path
    }
}
