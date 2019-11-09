//
//  Song.swift
//  TrackList_Lesson7
//
//  Created by Artjoms Vorona on 09/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import Foundation

struct Song {
    let track: String
    let album: String
    let cover: String
    
    static func createSong() -> [Song] {
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for index in 0..<tracks.count {
            let song = Song(track: tracks[index], album: albums[index], cover: covers[index])
            songs.append(song)
        }
        return songs
    }
}
