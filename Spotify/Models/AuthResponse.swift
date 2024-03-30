//
//  AuthResponse.swift
//  Spotify
//
//  Created by lynnguyen on 18/01/2024.
//

import Foundation

struct AuthResponse: Decodable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}



