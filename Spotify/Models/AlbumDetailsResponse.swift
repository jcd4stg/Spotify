//
//  AlbumDetailsResponse.swift
//  Spotify
//
//  Created by lynnguyen on 28/01/2024.
//

import Foundation

struct AlbumDetailsResponse: Codable {
    let album_type: String
    let artists: [Artists]
    let available_markets: [String]
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let label: String
    let name: String
    let tracks: TracksResponse
}

struct TracksResponse: Codable {
    let items: [AudioTrack]
}

//{
//    "album_type" = single;
//    artists =     (
//        {
//            "external_urls" =             {
//                spotify = "https://open.spotify.com/artist/009SHiJ9rvFm3vNwL4SjZx";
//            };
//            href = "https://api.spotify.com/v1/artists/009SHiJ9rvFm3vNwL4SjZx";
//            id = 009SHiJ9rvFm3vNwL4SjZx;
//            name = NYK;
//            type = artist;
//            uri = "spotify:artist:009SHiJ9rvFm3vNwL4SjZx";
//        }
//    );
//    "available_markets" =     (
//        AR,
//        AU,
//        
//    );
//    copyrights =     (
//        {
//            text = "2024 NYK";
//            type = C;
//        },
//        {
//            text = "2024 NYK";
//            type = P;
//        }
//    );
//    "external_ids" =     {
//        upc = 726665279628;
//    };
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/album/4LQysmF0IAoFTPSscF0TIH";
//    };
//    genres =     (
//    );
//    href = "https://api.spotify.com/v1/albums/4LQysmF0IAoFTPSscF0TIH";
//    id = 4LQysmF0IAoFTPSscF0TIH;
//    images =     (
//        {
//            height = 640;
//            url = "https://i.scdn.co/image/ab67616d0000b2738d358cf25d3ebe3274d0ae76";
//            width = 640;
//        },
//        {
//            height = 300;
//            url = "https://i.scdn.co/image/ab67616d00001e028d358cf25d3ebe3274d0ae76";
//            width = 300;
//        },
//        {
//            height = 64;
//            url = "https://i.scdn.co/image/ab67616d000048518d358cf25d3ebe3274d0ae76";
//            width = 64;
//        }
//    );
//    label = NYK;
//    name = Please;
//    popularity = 25;
//    "release_date" = "2024-01-26";
//    "release_date_precision" = day;
//    "total_tracks" = 1;
//    tracks =     {
//        href = "https://api.spotify.com/v1/albums/4LQysmF0IAoFTPSscF0TIH/tracks?offset=0&limit=50&locale=en-GB,en-US;q=0.9,en;q=0.8";
//        items =         (
//            {
//                artists =                 (
//                    {
//                        "external_urls" =                         {
//                            spotify = "https://open.spotify.com/artist/009SHiJ9rvFm3vNwL4SjZx";
//                        };
//                        href = "https://api.spotify.com/v1/artists/009SHiJ9rvFm3vNwL4SjZx";
//                        id = 009SHiJ9rvFm3vNwL4SjZx;
//                        name = NYK;
//                        type = artist;
//                        uri = "spotify:artist:009SHiJ9rvFm3vNwL4SjZx";
//                    }
//                );
//                "available_markets" =                 (
//                    AR,
//                    AU,
//                );
//                "disc_number" = 1;
//                "duration_ms" = 236160;
//                explicit = 0;
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/track/0OnjHhnWXyVc3ExmEk2VLL";
//                };
//                href = "https://api.spotify.com/v1/tracks/0OnjHhnWXyVc3ExmEk2VLL";
//                id = 0OnjHhnWXyVc3ExmEk2VLL;
//                "is_local" = 0;
//                name = Please;
//                "preview_url" = "https://p.scdn.co/mp3-preview/8347ab197966300029dfa0e10a0d86e6b7ee5f2c?cid=482df960948342ed811b96a82a808ddd";
//                "track_number" = 1;
//                type = track;
//                uri = "spotify:track:0OnjHhnWXyVc3ExmEk2VLL";
//            }
//        );
//        limit = 50;
//        next = "<null>";
//        offset = 0;
//        previous = "<null>";
//        total = 1;
//    };
//    type = album;
//    uri = "spotify:album:4LQysmF0IAoFTPSscF0TIH";
//}
