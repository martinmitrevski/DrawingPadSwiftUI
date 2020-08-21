//
//  ColorPicker.swift
//  DrawingPadSwiftUI
//
//  Created by Martin Mitrevski on 19.07.19.
//  Copyright © 2019 Mitrevski. All rights reserved.
//

import SwiftUI

struct ColorPicker: View {
    @Binding var color: Color
    @Binding var colorPickerShown: Bool
    
    private let colors = ColorsProvider.supportedColors()
    
    var body: some View {
        List(colors) { colorInfo in
            ColorEntry(colorInfo: colorInfo).onTapGesture {
                self.color = colorInfo.color
                self.colorPickerShown = false
            }
        }
    }
}
