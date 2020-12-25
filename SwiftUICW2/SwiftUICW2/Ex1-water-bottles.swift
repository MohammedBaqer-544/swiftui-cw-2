//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI
import AVFoundation

var music: AVAudioPlayer!

struct Exercise1: View {
    @State var name = ""
    @State var bottle = 0
     
    
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
//                ADD THE CODE HERE
                
                TextField("اكتب اسمك هنا", text: $name)
                    .disableAutocorrection(true)
                    
                
                Stepper("كم بطلا من الماء تريد ان تتعهد بان تشرب", value: $bottle)
                
                Spacer()
                
                VStack {
                    Text("اتعهد انا")
                        .font(.largeTitle)
                    
                    Text(name)
                        .font(.largeTitle)
                    
                    Text("")
                        .font(.largeTitle)
                    
                    Text("ان اشرب")
                        .font(.largeTitle)
                    
                    Text("\(bottle)")
                        .font(.largeTitle)
                    
                    Text("امواب من الماء يوميا ")
                        .font(.largeTitle)
                    Text("والله على ما اقول شهيد")
                        .font(.largeTitle)
                    
                }
                
                Spacer()
            }.padding()
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

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}

