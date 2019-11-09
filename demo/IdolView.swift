//
//  FlagView.swift
//  demo
//
//  Created by Trinh Chin on 11/9/19.
//  Copyright © 2019 Chnirt. All rights reserved.
//

import SwiftUI

struct IdolView: View {
    @State private var idols = ["Eimi-Fukada","Mana-Sakura","Otsuki-Hibiki","Sonoda-Mion","Tsukasa-Aoi","Yua-Mikami","Yui-Hatano"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                VStack {
                    Text("Tap idol's avatar of")
                        .foregroundColor(.white)
                    Text(idols[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black
                    )
                }
                
                ForEach(0 ..< 3 ) { number in
                    Button(action: {
                        // flag tapped
                        self.idolTapped(number)
                    }) {
                        Image("\(self.idols[number])")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
        .alert(isPresented: $showingScore){
            Alert(title: Text(scoreTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                    self.askQuestion()
                })
        }
    }
    
    func idolTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        self.idols.shuffle()
        self.correctAnswer = Int.random(in: 0...2)
    }
}

struct IdolView_Previews: PreviewProvider {
    static var previews: some View {
        IdolView()
    }
}
