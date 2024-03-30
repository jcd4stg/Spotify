//
//  AudioTrack.swift
//  Spotify
//
//  Created by lynnguyen on 16/01/2024.
//

import Foundation

struct AudioTrack: Codable {
    var album: Album?
    let artists: [Artists]
    let available_markets: [String]
    let disc_number: Int
    let duration_ms: Int
    let explicit: Bool
    let external_urls: [String: String]
    let id: String
    let name: String
    let popularity: Int?
    let preview_url: String?
}
    
