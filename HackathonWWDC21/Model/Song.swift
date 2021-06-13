//
//  Song.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import UIKit

public class Song: Identifiable {
    let name: String
    let album: String
    let artist: String
    let albumCover: UIImage
    
    init(name: String, album: String, artist: String, albumCover: UIImage) {
        self.name = name
        self.album = album
        self.artist = artist
        self.albumCover = albumCover
    }
}

public class Songs {
    static var all: [Song] {
        return [song1, song2, song3, song4, song5]
    }
    
    static let song1 = Song(
        name: "Born This Way",
        album: "Born This Way",
        artist: "Lady Gaga",
        albumCover: UIImage(named: "bornThisWay")!)
    
    static let song2 = Song(
        name: "Born This Way",
        album: "Born This Way",
        artist: "Lady Gaga",
        albumCover: UIImage(named: "bornThisWay")!)
    
    static let song3 = Song(
        name: "Born This Way",
        album: "Born This Way",
        artist: "Lady Gaga",
        albumCover: UIImage(named: "bornThisWay")!)
    
    static let song4 = Song(
        name: "Born This Way",
        album: "Born This Way",
        artist: "Lady Gaga",
        albumCover: UIImage(named: "bornThisWay")!)
    
    static let song5 = Song(
        name: "Born This Way",
        album: "Born This Way",
        artist: "Lady Gaga",
        albumCover: UIImage(named: "bornThisWay")!)
}
