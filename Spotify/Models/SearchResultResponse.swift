//
//  SearchResultResponse.swift
//  Spotify
//
//  Created by lynnguyen on 02/02/2024.
//

import Foundation

struct SearchResultResponse: Codable {
    let albums: SearchAlbumsResponse
    let artists: SearchArtistsResponse
    let playlists: SearchPlaylistsResponse
    let tracks: SearchTracksResponse
}

struct SearchAlbumsResponse: Codable {
    let items: [Album]
}

struct SearchArtistsResponse: Codable {
    let items: [Artists]
}

struct SearchPlaylistsResponse: Codable {
    let items: [Playlist]
}

struct SearchTracksResponse: Codable {
    let items: [AudioTrack]

}

