//
//  UserProfile.swift
//  Spotify
//
//  Created by lynnguyen on 16/01/2024.
//

import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [APIImage]
}


//{
//    country = VN;
//    "display_name" = Huy;
//    email = "828n55sfbd@privaterelay.appleid.com";
//    "explicit_content" =     {
//        "filter_enabled" = 0;
//        "filter_locked" = 0;
//    };
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/user/31lyrmnntenvmvqwhcjsp764cfoe";
//    };
//    followers =     {
//        href = "<null>";
//        total = 0;
//    };
//    href = "https://api.spotify.com/v1/users/31lyrmnntenvmvqwhcjsp764cfoe";
//    id = 31lyrmnntenvmvqwhcjsp764cfoe;
//    images =     (
//                {
//            height = 64;
//            url = "https://i.scdn.co/image/ab67757000003b82ae2a3415d112bc757047f0e4";
//            width = 64;
//        },
//                {
//            height = 300;
//            url = "https://i.scdn.co/image/ab6775700000ee85ae2a3415d112bc757047f0e4";
//            width = 300;
//        }
//    );
//    product = free;
//    type = user;
//    uri = "spotify:user:31lyrmnntenvmvqwhcjsp764cfoe";
//}
