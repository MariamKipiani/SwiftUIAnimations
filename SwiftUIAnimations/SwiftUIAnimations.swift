//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by user on 12/25/23.
//

import SwiftUI

struct SwiftUIAnimations: View {
    @State var isAnimated = false
    var body: some View {
        VStack {
            Text("Welcome to SwiftUI Animations")
                .foregroundStyle(isAnimated ? .green : .purple)
                .font(.system(size: 30, weight: .bold))
                .scaleEffect(isAnimated ? 1.2 : 1)
                .offset(y: isAnimated ? -30 : 0)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
                        isAnimated = true
                    }
                }
        }
    }
}

struct SwiftUIAnimations_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAnimations()
    }
}

