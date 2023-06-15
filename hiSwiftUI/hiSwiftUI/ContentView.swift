//
//  ContentView.swift
//  hiSwiftUI
//
//  Created by 박재형 on 2023/06/13.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State var nickName: String = "" {
        didSet {
            speechSynch.speak(AVSpeechUtterance(string: "Hello \(nickName)"))
        }
    }
    
    let speechSynch = AVSpeechSynthesizer()
    
    var body: some View {
       
        VStack {
            Spacer()
                HStack {
                    Button("박재형") {
                        nickName = "가나다"
                    }
                    .foregroundColor(.black)
                    
                    Button("김윤우") {
                        nickName = "123"
                    }
                    .foregroundColor(.green)
                    
                    Button("조연희") {
                        nickName = "라마바"
                    }
                    .foregroundColor(.orange)
                    
                }
                .font(.system(.largeTitle, design: .rounded))

            Spacer()
            Text("Hello \(nickName)!")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.black)
            Spacer()
            
            HStack {
                Button("박형환") {
                    nickName = "456"
                }
                .foregroundColor(.yellow)
                
                Button("조민근") {
                    nickName = "사아자"
                }
                .foregroundColor(.blue)
                
                Button("안지영") {
                    nickName = "789"
                }
                .foregroundColor(.purple)
                
            }
            .font(.system(.largeTitle, design: .rounded))
            .padding()
            Spacer()
   
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
