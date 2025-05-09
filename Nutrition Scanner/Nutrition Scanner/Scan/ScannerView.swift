//
//  ScannerView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct ScannerView: View {
    @State private var isImageSelected: Bool = false
    @State private var isPresented: Bool = false
    
    @Tokens var tokens
    
    var body: some View {
        ZStack {
            if isImageSelected {
                ProcessingView()
            } else {
                VStack {
                    Button("Click here to scan") {
                        isPresented = true
                    }
                    .foregroundStyle(tokens.colors.icon.alwaysDark)
                    .fullScreenCover(isPresented: $isPresented, content: {
                        ImagePickerView(isImageSelected: self.$isImageSelected, isPresented: $isPresented)
                            .ignoresSafeArea()
                    })
                }
            }
        }
    }
}
#Preview {
    ScannerView()
}
