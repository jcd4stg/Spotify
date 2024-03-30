//
//  SettingsModels.swift
//  Spotify
//
//  Created by lynnguyen on 21/01/2024.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
