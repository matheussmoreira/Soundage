//
//  MeaningView.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

struct MeaningView: View {
    @Binding var modeSelected: ModeSelected
    var song: Song
    
    var body: some View {
        ZStack {
            Gradient.pinkGradient
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50) {
                HStack {
                    Button(action: { modeSelected = .none }) {
                        Image("Arrow")
                    }
                    Spacer()
                }.offset(x: 30)
                
                SongRow(song: song, withBackground: false)//.offset(y: -100)
                LyricsCardMeaning()
                
                Group {
                    HStack {
                        Text("Meaning")
                            .font(.title2)
                            .fontWeight(.bold)
                            .offset(x: 50)
                            
                        Image(systemName: "plus.circle")
                            .offset(x: 50)
                        Spacer()
                    }
                    
                    Text("**Young:** having lived or existed for only a short time and not old")
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(maxWidth: 275)
                }
                
                Spacer()
            }
        }
    }
}

struct MeaningView_Previews: PreviewProvider {
    static var previews: some View {
        MeaningView(modeSelected: .constant(.meaning), song: Songs.all.first!)
    }
}

struct LyricsCardMeaning: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .foregroundColor(.white)
                    .frame(width: 313, height: 219)
                VStack {
                    Text("My mama told me when I\nwas ***young***")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    Text("Minha mãe me disse\nquando eu era criança")
                        .fontWeight(.thin)
                        .italic()
                        .multilineTextAlignment(.center)
                        .offset(y: 10)
                }
            }
        }
    }
}
