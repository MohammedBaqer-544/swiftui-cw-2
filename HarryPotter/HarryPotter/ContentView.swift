//
//  ContentView.swift
//  HarryPotter
//
//  Created by Mohammed on 12/27/20.
//

import SwiftUI
import AVFoundation
import AVKit

var music: AVAudioPlayer!

struct ContentView: View {
    
    @State var name = ""
    @State var water = 0
    
    var body: some View {
        
            ZStack {
                
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("عهدة الماء 🚰")
                        .font(.custom("ArefRuqaa-Bold", size: 50))
                    
                    TextField("اكتب اسمك هنا", text: $name)
                        .font(.custom("ArefRuqaa-Bold", size: 25))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                        .disableAutocorrection(true)
                    
                    Stepper("كم بطلاً من الماء تريد أن تتعهد بأن تشرب؟", value: $water, in: 1...20)
                        .font(.custom("AndikaNewBasic-Regular", size: 20))
                    
                    Spacer()
                    
                }
                .padding()
                
                VStack {
                    Spacer()
                    Spacer()

                    Text("أتعهد أنا")
                        .font(.custom("ArefRuqaa-Regular", size: 40))
                    
                    Text(" \(name)")
                        .font(.custom("ArefRuqaa-Bold", size: 40))
                    
                    Text("أن أشرب")
                        .font(.custom("ArefRuqaa-Regular", size: 40))
                    
                    Text("\(water)")
                        .font(.custom("ArefRuqaa-Regular", size: 40))
                    
                    Text("أكواب من الماء يومياً والله على ما اقول شهيد")
                        .font(.custom("ArefRuqaa-Regular", size: 40))
                        .multilineTextAlignment(.center)
                    
                    
                    Spacer()
                    
                }
            }.onAppear {
                playMusic()
            }
        }
            
         func playMusic() {
            if let musicURL = Bundle.main.url(forResource: "Harry Potter Song", withExtension: "mp3") {
                if let audioPlayer = try? AVAudioPlayer(contentsOf: musicURL) {
                    music = audioPlayer
                    music.numberOfLoops = -1
                    music.play()
                }
            }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
