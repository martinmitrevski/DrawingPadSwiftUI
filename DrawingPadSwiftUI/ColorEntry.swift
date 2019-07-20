//
//  ColorEntry.swift
//  DrawingPadSwiftUI
//
//  Created by Martin Mitrevski on 19.07.19.
//  Copyright © 2019 Mitrevski. All rights reserved.
//

import SwiftUI

struct ColorEntry: View {
    let colorInfo: ColorInfo
    
    var body: some View {
        HStack {
            Circle()
                .fill(colorInfo.color)
                .frame(width: 40, height: 40)
                .padding(.all)
            Text(colorInfo.displayName)
        }
    }
}
