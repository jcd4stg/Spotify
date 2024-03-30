//
//  Artist.swift
//  Spotify
//
//  Created by lynnguyen on 16/01/2024.
//

import Foundation

struct Artists: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
