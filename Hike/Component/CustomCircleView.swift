//
//  CustomCircleView.swift
//  Hike
//
//  Created by Noha Hamdy on 22/09/2023.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [ .customIndigoMedium,
                                  .customSalmonLight
                                ],
                        startPoint:
                            isAnimateGradient ?
                            .topLeading:.bottomLeading,
                        endPoint: .bottomTrailing
                    )
                    ).onAppear{
                        withAnimation(.linear(duration: 3.0).repeatForever(autoreverses:true)){
                            isAnimateGradient.toggle()
                    }
                        }
                     
                .frame(width: 256,height: 256)
            MotionAnimationView()
        }//ZSTACK
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
