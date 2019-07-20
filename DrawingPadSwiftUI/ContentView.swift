//
//  ContentView.swift
//  DrawingPadSwiftUI
//
//  Created by Martin Mitrevski on 20.07.19.
//  Copyright © 2019 Mitrevski. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var currentDrawing: Drawing = Drawing()
    @State private var drawings: [Drawing] = [Drawing]()
    @State private var color: Color = Color.black
    @State private var lineWidth: CGFloat = 3.0
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Draw something")
                .font(.largeTitle)
            DrawingPad(currentDrawing: $currentDrawing,
                       drawings: $drawings,
                       color: $color,
                       lineWidth: $lineWidth)
            DrawingControls(color: $color, drawings: $drawings, lineWidth: $lineWidth)
        }
    }
}
