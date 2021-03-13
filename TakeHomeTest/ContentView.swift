//
//  ContentView.swift
//  TakeHomeTest
//
//  Created by Michael Brauninger on 3/13/21.
//

import SwiftUI

import SwiftUI

/*
 
 Take home coding assignment - Michael Brauninger
 
 Sources:
 
 Setting up shapes: https://www.hackingwithswift.com/quick-start/swiftui/swiftuis-built-in-shapes
 
 Allignment of elements: https://www.hackingwithswift.com/quick-start/swiftui/how-to-force-views-to-one-side-inside-a-stack-using-spacer
 
 Setting up button and counter: https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-tappable-button

 */

struct ContentView: View {
    
    @State public var count = 0
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 75, height: 75)
            Text("Count: \(count)")
            Spacer()
            Button {
                count += 1
            }
                label: {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 50)
                }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        }
    }
}
