//
//  CompleteView.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

struct CompleteView: View {
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
                LyricsCardComplete()
                
                Text("Complete the\nsentence above")
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 275)
                
                Spacer()
            }
        }.ignoresSafeArea(.keyboard)
        
    }
}

struct CompleteView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteView(modeSelected: .constant(.complete), song: Songs.all.first!)
    }
}

struct LyricsCardComplete: View {
    @State private var typedText: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .foregroundColor(.white)
                    .frame(width: 313, height: 219)
                VStack {
                    Text("My mama told me when I")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    
                    ZStack {
                        Text("_________________________")
                            .offset(y: 1)
                        TextField("", text: $typedText)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .frame(maxWidth: 210)
                    }
                }
            }
        }
    }
}
