//
//  SearchResult.swift
//  Spotify
//
//  Created by lynnguyen on 02/02/2024.
//

import Foundation

enum SearchResult {
    case artist(model: Artists)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
