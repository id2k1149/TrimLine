//
//  ContentView.swift
//  TrimLine
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.0
    
    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.2), lineWidth: 10)
                    
                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                        .stroke(Color.blue, lineWidth: 10)
                        .rotationEffect(Angle(degrees: -90))
                        .animation(.linear(duration: 2),
                                   value: progress)
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                        .offset(x: -100, y : 0)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                        .offset(x: 0, y : -100)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                        .offset(x: 100, y: 0)
                    
                    Path {path in
                        path.move(
                            to:
                                CGPoint(x: UIScreen.main.bounds.width / 2 - 110,
                                        y: UIScreen.main.bounds.height / 2 - 80)
                        )
                        path.addLine(
                            to:
                                CGPoint(x: UIScreen.main.bounds.width / 2 - 15,
                                        y: UIScreen.main.bounds.height / 2 - 180)
                        )
                        path.addLine(
                            to:
                                CGPoint(x: UIScreen.main.bounds.width / 2 + 90,
                                        y: UIScreen.main.bounds.height / 2 - 80)
                        )
                    }
                    .stroke(Color.gray.opacity(0.2), lineWidth: 5)
                    
                    Path {path in
                        path.move(
                            to:
                                CGPoint(x: UIScreen.main.bounds.width / 2 - 110,
                                        y: UIScreen.main.bounds.height / 2 - 80)
                        )
                        path.addLine(
                            to:
                                CGPoint(x: UIScreen.main.bounds.width / 2 - 15,
                                        y: UIScreen.main.bounds.height / 2 - 180)
                        )
                        path.addLine(
                            to:
                                CGPoint(x: UIScreen.main.bounds.width / 2 + 90,
                                        y: UIScreen.main.bounds.height / 2 - 80)
                        )
                    }
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(Color.red, lineWidth: 5)
                    .animation(.linear(duration: 2),
                               value: progress)
                    
                }
                
                ButtonView(progress: $progress)
              
                
//                Button("Start") {
//                    withAnimation {
//                        progress += 1
//                    }
//                }
//                .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
