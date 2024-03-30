//
//  RecommendationsResponse.swift
//  Spotify
//
//  Created by lynnguyen on 24/01/2024.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}



//{
//    
//    tracks =
//    (
//        {
//            album =
//            {
//                "album_type" = ALBUM;
//                artists =
//                (
//                    {
//                        "external_urls" =                         {
//                            spotify = "https://open.spotify.com/artist/7xZxiW3lxhYcsuJC9jR2DN";
//                        };
//                        href = "https://api.spotify.com/v1/artists/7xZxiW3lxhYcsuJC9jR2DN";
//                        id = 7xZxiW3lxhYcsuJC9jR2DN;
//                        name = "Bahia Brasil";
//                        type = artist;
//                        uri = "spotify:artist:7xZxiW3lxhYcsuJC9jR2DN";
//                    }
//                );
//                "available_markets" =                 (
//                    AR,
//                    AU,
//                    AT,
//                    BE,
//                    
//                );
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/album/1uyU1xdTzTjyc8A99PhKQ5";
//                };
//                href = "https://api.spotify.com/v1/albums/1uyU1xdTzTjyc8A99PhKQ5";
//                id = 1uyU1xdTzTjyc8A99PhKQ5;
//                images =
//                (
//                    {
//                        height = 640;
//                        url = "https://i.scdn.co/image/ab67616d0000b2730e4efad003deca5de8ef1664";
//                        width = 640;
//                    },
//                    {
//                        height = 300;
//                        url = "https://i.scdn.co/image/ab67616d00001e020e4efad003deca5de8ef1664";
//                        width = 300;
//                    },
//                    {
//                        height = 64;
//                        url = "https://i.scdn.co/image/ab67616d000048510e4efad003deca5de8ef1664";
//                        width = 64;
//                    }
//                );
//                name = "Bahia Brasil";
//                "release_date" = 2004;
//                "release_date_precision" = year;
//                "total_tracks" = 13;
//                type = album;
//                uri = "spotify:album:1uyU1xdTzTjyc8A99PhKQ5";
//            };
//            artists =             (
//                {
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/artist/7xZxiW3lxhYcsuJC9jR2DN";
//                    };
//                    href = "https://api.spotify.com/v1/artists/7xZxiW3lxhYcsuJC9jR2DN";
//                    id = 7xZxiW3lxhYcsuJC9jR2DN;
//                    name = "Bahia Brasil";
//                    type = artist;
//                    uri = "spotify:artist:7xZxiW3lxhYcsuJC9jR2DN";
//                }
//            );
//            "available_markets" =             (
//                AR,
//                AU,
//                AT,
//            );
//            "disc_number" = 1;
//            "duration_ms" = 251933;
//            explicit = 0;
//            "external_ids" =             {
//                isrc = PTZM10413907;
//            };
//            "external_urls" =             {
//                spotify = "https://open.spotify.com/track/0ryvcwVp5kO6CuhmlJ9YS6";
//            };
//            href = "https://api.spotify.com/v1/tracks/0ryvcwVp5kO6CuhmlJ9YS6";
//            id = 0ryvcwVp5kO6CuhmlJ9YS6;
//            "is_local" = 0;
//            name = "Len\U00e7ol De Estrelas";
//            popularity = 2;
//            "preview_url" = "https://p.scdn.co/mp3-preview/9dd6be486b50901f025c02827b049c993b6103a2?cid=482df960948342ed811b96a82a808ddd";
//            "track_number" = 7;
//            type = track;
//            uri = "spotify:track:0ryvcwVp5kO6CuhmlJ9YS6";
//        },
//        
//    );
//}
