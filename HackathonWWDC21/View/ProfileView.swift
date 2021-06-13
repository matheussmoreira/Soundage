//
//  ProfileView.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Gradient.pinkGradient
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Songs you learned\nsomething about")
                    .font(.title)
                    .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                
                // SEARCH BAR
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                    .frame(width: 328, height: 36)
                    
                    Image(systemName: "magnifyingglass")
                        .offset(x: -130)
                }
                
                HStack {
                    Button(action: {}) {
                        Text("Sort")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .offset(x: 30)
                    }
                    Spacer()
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(Songs.all, id:\.id) { song in
                        SongRow(song: song, withBackground: true)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
