//
//  SongRow.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

struct SongRow: View {
    let song: Song
    let withBackground: Bool
    
    var body: some View {
        ZStack {
            if withBackground {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 328, height: 97)
                    .foregroundColor(.white)
            }
            
            HStack {
                Image(uiImage: song.albumCover)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(30)
                VStack {
                    Text(song.name).font(.title2).fontWeight(.semibold)
                    Text(song.album + " - " + song.artist)
                }
                
            }
        }
    }
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        SongRow(song: Songs.all.first!, withBackground: true)
    }
}
