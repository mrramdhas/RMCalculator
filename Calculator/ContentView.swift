//
//  ContentView.swift
//  Calculator
//
//  Created by Ramdhas on 06/01/20.
//  Copyright © 2020 Ramdhas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="],
    ]
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 12) {
                HStack {
                    
                    Spacer()
                    Text("50")
                        .foregroundColor(Color.white)
                        .font(.system(size: 64))
                    .padding()
                }
                
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(Color.white)
                                .background(Color.yellow)
                                 .cornerRadius(self.buttonWidth())
                        }
                    }
                }
            }.padding()
        }
    }
    
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5*12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
