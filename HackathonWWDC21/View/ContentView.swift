//
//  ContentView.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

enum SelectedScreen {
    case listen, profile
}

struct ContentView: View {
    @State private var selectedScreen: SelectedScreen = .listen
    @State private var tappedToListen = false
    
    var body: some View {
        ZStack {
            if selectedScreen == .listen {
                if !tappedToListen {
                    ListenView(tappedToListen: $tappedToListen)
                } else {
                    PlayMode(
                        tappedToListen: $tappedToListen,
                             song: Songs.all.first!
                    )
                }
                
            } else {
                ProfileView()
            }
            
            VStack {
                Spacer()
                CustomTabBar(selectedScreen: $selectedScreen)
            }
        }.ignoresSafeArea(.keyboard)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTabBar : View {
    @Binding var selectedScreen: SelectedScreen
    //@Binding var tappedToListen: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 311, height: 74)
                .foregroundColor(Color.darkPurple)
            
            HStack {
                Button(action: {
                    selectedScreen = .listen
                    //tappedToListen = false
                }) {
                    ZStack {
                        Image(systemName: selectedScreen == .listen ? "music.note.house.fill" : "music.note.house")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        Rectangle()
                            .foregroundColor(.transparent)
                        .frame(width: 30, height: 30)                            }
                }.offset(x: -30)
                
                Button(action: { selectedScreen = .profile}) {
                    ZStack {
                        Image(systemName: selectedScreen == .listen ? "person" : "person.fill")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        Rectangle()
                            .foregroundColor(.transparent)
                            .frame(width: 30, height: 30)
                        
                    }
                }.offset(x: 30)
            }
        }
    }
}
