//
//  NewReleasesResponse.swift
//  Spotify
//
//  Created by lynnguyen on 23/01/2024.
//

import Foundation

struct NewReleasesResponse: Codable {
    let albums: AlbumsResponse
    
}

struct AlbumsResponse: Codable {
    let items: [Album]
}

struct Album: Codable {
    let album_type: String
    let available_markets: [String]
    let id: String
    var images: [APIImage]
    let name: String
    let release_date: String
    let total_tracks: Int
    let artists: [Artists]
}


//{
//    "album_type" = single;
//    artists =                 (
//        {
//            "external_urls" =                         {
//                spotify = "https://open.spotify.com/artist/1HBjj22wzbscIZ9sEb5dyf";
//            };
//            href = "https://api.spotify.com/v1/artists/1HBjj22wzbscIZ9sEb5dyf";
//            id = 1HBjj22wzbscIZ9sEb5dyf;
//            name = "Jonas Blue";
//            type = artist;
//            uri = "spotify:artist:1HBjj22wzbscIZ9sEb5dyf";
//        },
//        {
//            "external_urls" =                         {
//                spotify = "https://open.spotify.com/artist/20gsENnposVs2I4rQ5kvrf";
//            };
//            href = "https://api.spotify.com/v1/artists/20gsENnposVs2I4rQ5kvrf";
//            id = 20gsENnposVs2I4rQ5kvrf;
//            name = "Sam Feldt";
//            type = artist;
//            uri = "spotify:artist:20gsENnposVs2I4rQ5kvrf";
//        },
//        {
//            "external_urls" =                         {
//                spotify = "https://open.spotify.com/artist/3E0d6yF8knEtWluzLbxCVA";
//            };
//            href = "https://api.spotify.com/v1/artists/3E0d6yF8knEtWluzLbxCVA";
//            id = 3E0d6yF8knEtWluzLbxCVA;
//            name = "Endless Summer";
//            type = artist;
//            uri = "spotify:artist:3E0d6yF8knEtWluzLbxCVA";
//        }
//    );
//    "available_markets" =                 (
//        AR,
//        AU,
//        AT,
//        BE,
//        BO,
//        BR,
//        
//    );
//    "external_urls" =                 {
//        spotify = "https://open.spotify.com/album/7zeA4kJCW5R6Qef90r2zQM";
//    };
//    href = "https://api.spotify.com/v1/albums/7zeA4kJCW5R6Qef90r2zQM";
//    id = 7zeA4kJCW5R6Qef90r2zQM;
//    images =                 (
//        {
//            height = 640;
//            url = "https://i.scdn.co/image/ab67616d0000b273f6f99bc0cbcfee1da47bafed";
//            width = 640;
//        },
//        {
//            height = 300;
//            url = "https://i.scdn.co/image/ab67616d00001e02f6f99bc0cbcfee1da47bafed";
//            width = 300;
//        },
//        {
//            height = 64;
//            url = "https://i.scdn.co/image/ab67616d00004851f6f99bc0cbcfee1da47bafed";
//            width = 64;
//        }
//    );
//    name = "Rest Of My Life";
//    "release_date" = "2024-01-19";
//    "release_date_precision" = day;
//    "total_tracks" = 1;
//    type = album;
//    uri = "spotify:album:7zeA4kJCW5R6Qef90r2zQM";
//}
