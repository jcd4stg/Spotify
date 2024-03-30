//
//  LibraryAlbumsResponse.swift
//  Spotify
//
//  Created by lynnguyen on 09/02/2024.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
