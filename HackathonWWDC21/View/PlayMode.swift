//
//  PlayMode.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

enum ModeSelected {
    case curiosities, meaning, complete, none
}

struct PlayMode: View {
    @State private var modeSelected: ModeSelected = .none
    @Binding var tappedToListen: Bool
    let song: Song
    
    var body: some View {
        switch modeSelected {
            case .curiosities:
                CuriositiesView(modeSelected: $modeSelected, song: song)
                    .animation(.easeInOut(duration: 1.5))
                    .transition(.opacity)
            case .meaning:
                MeaningView(modeSelected: $modeSelected, song: song)
                    .animation(.easeInOut(duration: 1.5))
                    .transition(.opacity)
            case .complete:
                CompleteView(modeSelected: $modeSelected, song: song).ignoresSafeArea(.keyboard)
                    .animation(.easeInOut(duration: 1.5))
                    .transition(.opacity)
            default:
                ZStack {
                    Gradient.pinkGradient
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        HStack {
                            Button(action: { tappedToListen = false }) {
                                Image("Arrow")
                            }
                            Spacer()
                        }.offset(x: 30)
                        
                        Spacer()
                        SongRow(song: song, withBackground: false).offset(y: -20)
                        Spacer()
                        
                        // OPTIONS
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(.white)
                                .frame(width: 316, height: 411)
                            
                            VStack {
                                Text("Play Mode")
                                    .fontWeight(.semibold)
                                    .font(.title)
                                Button(action : {modeSelected = .curiosities}) {
                                    OptionCard(optionName: .curiosity)
                                }.padding(5)
                                Button(action : {modeSelected = .meaning}) {
                                    OptionCard(optionName: .meaning)
                                }.padding(5)
                                Button(action : {modeSelected = .complete}) {
                                    OptionCard(optionName: .complete)
                                }.padding(5)
                            }
                        }.offset(y: -50)
                        
                        Spacer()
                    }
                }
                .animation(.easeInOut(duration: 1.5))
                .transition(.opacity)
        }
        
    }
}

struct PlayMode_Previews: PreviewProvider {
    static var previews: some View {
        PlayMode(tappedToListen: .constant(true), song: Songs.all.first!)
    }
}

struct OptionCard: View {
    var optionName: ModesOptions
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 206, height: 69)
                .foregroundColor(.darkPink2)
            
            HStack {
                getIcon()
                    .foregroundColor(.white)
                Text(optionName.rawValue)
                    .foregroundColor(.white)
            }
        }
    }
    
    func getIcon() -> Image {
        switch optionName {
            case .curiosity:
                return Image(systemName: "questionmark.square")
            case .meaning:
                return Image(systemName: "books.vertical")
            case .complete:
                return Image(systemName: "square.and.pencil")
        }
    }
}

enum ModesOptions: String {
    case curiosity = "Curiosity"
    case meaning = "Meaning"
    case complete = "Complete sentences"
}
