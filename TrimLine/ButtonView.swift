//
//  ButtonView.swift
//  TrimLine
//
//  Created by Max Franz Immelmann on 5/14/23.
//

import SwiftUI

struct ButtonView: View {
    @Binding var progress: Double
    
    var body: some View {
        HStack {
            Button(action: buttonAction) {
                Text("Start")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 60)
            .background(.blue)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
            
            Text(progress.formatted())
        }
    }
    
    private func buttonAction() {
        withAnimation {
            progress += 1
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(progress: .constant(0))
    }
}
