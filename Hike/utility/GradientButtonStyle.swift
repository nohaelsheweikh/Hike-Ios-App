//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Noha Hamdy on 21/09/2023.
//

import Foundation
import SwiftUI
struct GradientButton: ButtonStyle{
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                // conditional statment with Nil coalescing
                // condition? A:B
                configuration.isPressed ?
                // A: when user press the Button
                    .linearGradient(
                        colors:
                            [.customGrayMedium,
                            .customGrayLight
                        ],
                        startPoint: .top,
                        endPoint: .bottom)
                :
                //B: when the Button is not pressed
                .linearGradient(
                    colors:
                        [
                            .customGrayLight,
                            .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
            ).cornerRadius(40)
            
    }
}

