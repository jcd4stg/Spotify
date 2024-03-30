//
//  FeaturedPlaylistsResponse.swift
//  Spotify
//
//  Created by lynnguyen on 23/01/2024.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct CategoryPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}

//{
//    message = "Popular Playlists";
//    playlists =     
//    {
//        href = "https://api.spotify.com/v1/browse/featured-playlists?country=VN&timestamp=2024-01-23T08%3A19%3A05&offset=0&limit=20";
//        items =         (
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng g\U00ec m\U00e0 ng\U01b0\U1eddi b\U00ean c\U1ea1nh b\U1ea1n \U0111ang nghe. \U1ea2nh b\U00eca: Kai \U0110inh, GREY D, Ho\U00e0ng Th\U00f9y Linh";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWVOaOWiVD1Lf";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVOaOWiVD1Lf";
//                id = 37i9dQZF1DWVOaOWiVD1Lf;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000387b06cba671f078987a44fdd";
//                        width = "<null>";
//                    }
//                );
//                name = "Thi\U00ean H\U1ea1 Nghe G\U00ec";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTg5MDMyMSwwMDAwMDAwMDAwNjFkMTZkYmJhNjY1ZmM3YWQwZjJkNzdkY2QyMjli;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVOaOWiVD1Lf/tracks";
//                    total = 100;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWVOaOWiVD1Lf";
//            },
//            {
//                collaborative = 0;
//                description = "\U0110\U00f4ng t\U1edbi T\U00e2y, \U0111\U00e2y l\U00e0 nh\U1eefng ca kh\U00fac th\U1ecbnh h\U00e0nh nh\U1ea5t \U1edf Vi\U1ec7t Nam. \U1ea2nh b\U00eca: Wren Evans";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX0F4i7Q9pshJ";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX0F4i7Q9pshJ";
//                id = 37i9dQZF1DX0F4i7Q9pshJ;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003b56dd31bb91dc73bd2f43098";
//                        width = "<null>";
//                    }
//                );
//                name = "Hot Hits Vietnam";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNDA3ODQwNywwMDAwMDAwMGVlZDUyYmEwZmM5YTU4YjYxZDM1NDRmZTU5YTFjMTIw;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX0F4i7Q9pshJ/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX0F4i7Q9pshJ";
//            },
//            {
//                collaborative = 0;
//                description = "V-Pop n\U1edf hoa tr\U00ean nh\U1eefng ca kh\U00fac n\U00e0y. \U1ea2nh b\U00eca: V\U0169.";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX4g8Gs5nUhpp";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX4g8Gs5nUhpp";
//                id = 37i9dQZF1DX4g8Gs5nUhpp;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000301554429aca882a7440beb8f";
//                        width = "<null>";
//                    }
//                );
//                name = "V-Pop Kh\U00f4ng Th\U1ec3 Thi\U1ebfu";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNDYxODI2OCwwMDAwMDAwMGM3NWJmOTgyNTM3ZjlmMmNjNzU4MTBjZjljNjUzNGEz;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX4g8Gs5nUhpp/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX4g8Gs5nUhpp";
//            },
//            {
//                collaborative = 0;
//                description = "D\U00f2ng ch\U1ea3y c\U1ee7a rap Vi\U1ec7t lu\U00f4n cu\U1ed3n cu\U1ed9n. \U1ea2nh b\U00eca: \U0110en";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWYLMi9ZNZUaz";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWYLMi9ZNZUaz";
//                id = 37i9dQZF1DWYLMi9ZNZUaz;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000031200bb7811edb121a06937b3";
//                        width = "<null>";
//                    }
//                );
//                name = "Hip-hop Vi\U1ec7t";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTk4MzU0NiwwMDAwMDAwMDFlOGRkMmFhY2Y0ZjgxMzY3MmZlYmQyMjQ4OWNhNGU5;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWYLMi9ZNZUaz/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWYLMi9ZNZUaz";
//            },
//            {
//                collaborative = 0;
//                description = "Qu\U00e1n quen, nh\U1ea1c c\U0169, c\U1ea3m gi\U00e1c l\U1ea1. ";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX1e2VSJFudND";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX1e2VSJFudND";
//                id = 37i9dQZF1DX1e2VSJFudND;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003bb725c5d5937b5ad9424a920";
//                        width = "<null>";
//                    }
//                );
//                name = "C\U00e0 Ph\U00ea Qu\U00e1n Quen";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTAyNDcyNSwwMDAwMDAwMDE4MjdmMDU1M2Y0NWU0OTQ0MzNiYzlmYWVkOWE4NDU0;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX1e2VSJFudND/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX1e2VSJFudND";
//            },
//            {
//                collaborative = 0;
//                description = "the beat of your drift";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWWY64wDtewQt";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWWY64wDtewQt";
//                id = 37i9dQZF1DWWY64wDtewQt;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003753e85b6b1cef8a8da190b6a";
//                        width = "<null>";
//                    }
//                );
//                name = phonk;
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTY4MTkzMSwwMDAwMDAwMDc0NDExZGYxOGEwZTliYzdlZmEzMDVjNzk1N2E2Nzdj;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWWY64wDtewQt/tracks";
//                    total = 100;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWWY64wDtewQt";
//            },
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng \Ud83c\Udfb6 l\U00e3ng \U0111\U00e3ng kh\U00f3 phai. ";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX5HzXEElAlcz";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX5HzXEElAlcz";
//                id = 37i9dQZF1DX5HzXEElAlcz;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003b8d4b3c31e3c26dde1ec3917";
//                        width = "<null>";
//                    }
//                );
//                name = "lofi th\U1eadt l\U00e2u phai";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTk4MTE3NSwwMDAwMDAwMDAwNzEwNDgzNjE2YmMyZTQ0YzEzNzQ4MzI0ZmQzMmI5;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX5HzXEElAlcz/tracks";
//                    total = 75;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX5HzXEElAlcz";
//            },
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng ca kh\U00fac hay nh\U1ea5t t\U1eeb d\U00f2ng nh\U1ea1c \U0111a d\U1ea1ng. \U1ea2nh b\U00eca: Chillies";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWT2oR9BciC32";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWT2oR9BciC32";
//                id = 37i9dQZF1DWT2oR9BciC32;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003a56c9d07dd2b0c4543720036";
//                        width = "<null>";
//                    }
//                );
//                name = "In\U0111\U1eadm Indie";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTkwNDMwOCwwMDAwMDAwMGMzZWUyZWM3Zjc2NzA0ODRhYmQ4MGNlNWEyNTEyMzk3;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWT2oR9BciC32/tracks";
//                    total = 51;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWT2oR9BciC32";
//            },
//            {
//                collaborative = 0;
//                description = "Jack Harlow is on top of the Hottest 50!";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXcBWIGoYBM5M";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXcBWIGoYBM5M";
//                id = 37i9dQZF1DXcBWIGoYBM5M;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000036d7b14f72609c7f5fdf07d4a";
//                        width = "<null>";
//                    }
//                );
//                name = "Today\U2019s Top Hits";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTY0MDQwMCwwMDAwMDAwMGQ1MWY2NzJiNmM4MzU2M2VkNTQ5OTZlMDI5OWI2YzU3;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXcBWIGoYBM5M/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXcBWIGoYBM5M";
//            },
//            {
//                collaborative = 0;
//                description = "C\U00f9ng t\U00f4n vinh t\U00e0i n\U0103ng v\U00e0 \U00e2m nh\U1ea1c c\U1ee7a nh\U1eefng n\U1eef ngh\U1ec7 s\U0129 Vi\U1ec7t. \U1ea2nh b\U00eca: M\U1ef9 T\U00e2m";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXbbp0uiGXEBw";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXbbp0uiGXEBw";
//                id = 37i9dQZF1DXbbp0uiGXEBw;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000392540a55f8c61d831297c738";
//                        width = "<null>";
//                    }
//                );
//                name = "EQUAL Vietnam";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTQxMDYxMywwMDAwMDAwMDI4NDNkMWQyMWNjZDQ1N2YyNDMwYTBiMjcyZjgxNGM1;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXbbp0uiGXEBw/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXbbp0uiGXEBw";
//            },
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng nam th\U1ea7n c\U1ee7a l\U00e0ng nh\U1ea1c Vi\U1ec7t. \U1ea2nh b\U00eca: Ho\U00e0ng D\U0169ng";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX3e9b2XMiQ6I";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX3e9b2XMiQ6I";
//                id = 37i9dQZF1DX3e9b2XMiQ6I;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000037f37b56fc6719955e9cd0021";
//                        width = "<null>";
//                    }
//                );
//                name = "Anh H\U00e0o Nh\U1ea1c Vi\U1ec7t";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTkxOTQ1NSwwMDAwMDAwMGQyNzgxYTNlZjJhNjQ4NmUzY2RjNmFjYzBlMWY4Y2M2;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX3e9b2XMiQ6I/tracks";
//                    total = 53;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX3e9b2XMiQ6I";
//            },
//            {
//                collaborative = 0;
//                description = "M\U1ed9t n\U1eeda m\U1ec1m m\U1ea1i c\U1ee7a l\U00e0ng nh\U1ea1c Vi\U1ec7t. \U1ea2nh b\U00eca: Ph\U01b0\U01a1ng Ly";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX5UMwGFV95IS";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX5UMwGFV95IS";
//                id = 37i9dQZF1DX5UMwGFV95IS;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003e015463c78f46a013d0bf326";
//                        width = "<null>";
//                    }
//                );
//                name = "\U0110\U00f3a H\U1ed3ng Nh\U1ea1c Vi\U1ec7t";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTQxMDQ2MiwwMDAwMDAwMDNiZjQ5ZDQzOGZlOWFkM2I4NTI4ZTRhNGIxOGQzZGQ0;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX5UMwGFV95IS/tracks";
//                    total = 53;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX5UMwGFV95IS";
//            },
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng d\U1ea5u \U1ea5n In\U0111\U1eadm Indie n\U1ed5i b\U1eadt n\U0103m 2023. \U1ea2nh b\U00eca: V\U0169.";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWXyWQDPxZbns";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXyWQDPxZbns";
//                id = 37i9dQZF1DWXyWQDPxZbns;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003711e87893529bd65ad345e73";
//                        width = "<null>";
//                    }
//                );
//                name = "Best of In\U0111\U1eadm Indie 2023";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwMTI2MjY2MCwwMDAwMDAwMDE1ZGY2NDU0YjZjYzU2M2RhMzAzYzY0M2M0ZjhkNmUw;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXyWQDPxZbns/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWXyWQDPxZbns";
//            },
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng ca kh\U00fac qu\U1ed1c t\U1ebf th\U1ecbnh h\U00e0nh nh\U1ea5t \U1edf Vi\U1ec7t Nam. \U1ea2nh b\U00eca: Ariana Grande";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXa2nn7lGnkjR";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXa2nn7lGnkjR";
//                id = 37i9dQZF1DXa2nn7lGnkjR;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003dc09b03f62148b8c5ca29523";
//                        width = "<null>";
//                    }
//                );
//                name = "Big in Vietnam";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTk3OTIyNCwwMDAwMDAwMGRhMDAxMmE3ZmYyNjMwMTkzMGY0MGRkNGIxNjkyNDJk;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXa2nn7lGnkjR/tracks";
//                    total = 54;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXa2nn7lGnkjR";
//            },
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng con track Hip-hop Vi\U1ec7t n\U1ed5i b\U1eadt n\U0103m 2023. \U1ea2nh b\U00eca: Ph\U00fac Du";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWVKJhbs54cBh";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVKJhbs54cBh";
//                id = 37i9dQZF1DWVKJhbs54cBh;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003a0bd130d41d65d8af061b9ac";
//                        width = "<null>";
//                    }
//                );
//                name = "Best of Hip-hop Vi\U1ec7t 2023";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwMTI2MDEwMCwwMDAwMDAwMGFjODAzNmY0OTg4ZDJmNjRiNWM3NzM4ZDYzZjFiZjRl;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVKJhbs54cBh/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWVKJhbs54cBh";
//            },
//            {
//                collaborative = 0;
//                description = "Turn on the movement with the latest and greatest in K-Pop! Cover: (G)I-DLE";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX9tPFwDMOaN1";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX9tPFwDMOaN1";
//                id = 37i9dQZF1DX9tPFwDMOaN1;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003a13f3eb6788e3537eafa2af9";
//                        width = "<null>";
//                    }
//                );
//                name = "K-Pop ON! (\Uc628)";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTkxNDY3NiwwMDAwMDAwMGFlZTJhYjA5OGQ5NDM3YTQwMGRhOTdiNzk3ZWM4YjQ4;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX9tPFwDMOaN1/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX9tPFwDMOaN1";
//            },
//            {
//                collaborative = 0;
//                description = "A mega mix of 75 favorites from the last few years! ";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXbYM3nMM0oPk";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXbYM3nMM0oPk";
//                id = 37i9dQZF1DXbYM3nMM0oPk;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000038aa213d23c60645e2649a350";
//                        width = "<null>";
//                    }
//                );
//                name = "Mega Hit Mix";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwMTQ1NzY3NCwwMDAwMDAwMDYwZWMzYWIxYzY5YmFkZjhiOTFjOWU5YjM3YjcyNWNl;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXbYM3nMM0oPk/tracks";
//                    total = 75;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXbYM3nMM0oPk";
//            },
//            {
//                collaborative = 0;
//                description = "Qu\U1ea9y tung s\U00e0n c\U00f9ng nh\U1eefng b\U1ea3n remix th\U1ecbnh h\U00e0nh t\U00f3p t\U00f3p cho t\U1edbi vinahouse \U0111\U1ec9nh cao. ";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWUTZW9htiAv9";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWUTZW9htiAv9";
//                id = 37i9dQZF1DWUTZW9htiAv9;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000035dc7b1fb8e8892e735545de6";
//                        width = "<null>";
//                    }
//                );
//                name = "Remix \U0110\U1ec9nh C\U1ee7a \U0110\U1ec9nh";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTg5MTg2MiwwMDAwMDAwMGZiYTlmMWVkMWQ3Mjc5ZWJmOWQzY2U2ODMyNGVjMDI3;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWUTZW9htiAv9/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWUTZW9htiAv9";
//            },
//            {
//                collaborative = 0;
//                description = "H\U00e3y \U0111\U1ec3 ti\U1ebfng h\U00e1t c\U1ee7a b\U1ea1n \U00e1t ti\U1ebfng karaoke c\U1ee7a h\U00e0ng x\U00f3m. \U1ea2nh b\U00eca: JustaTee";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWVbRrSFENdgA";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVbRrSFENdgA";
//                id = 37i9dQZF1DWVbRrSFENdgA;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000340db976dff3d8df28cf81656";
//                        width = "<null>";
//                    }
//                );
//                name = "Ti\U1ebfng H\U00e1t \U00c1t Ti\U1ebfng Ka";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNDcwMzg3NiwwMDAwMDAwMDYwYzg3Mzk1ZmQyMWQyNGRkODY3YTczOWJiMjdjNDg1;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVbRrSFENdgA/tracks";
//                    total = 75;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWVbRrSFENdgA";
//            },
//            {
//                collaborative = 0;
//                description = "Nh\U1eefng ca kh\U00fac qu\U1ed1c t\U1ebf tr\U00ean \U0111\U01b0\U1eddng th\U00e0nh hit. \U1ea2nh b\U00eca: Kygo, Ava Max";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX39t8KGTcoSG";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX39t8KGTcoSG";
//                id = 37i9dQZF1DX39t8KGTcoSG;
//                images =                 (
//                    {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000032bf061181b1c2b08a2881803";
//                        width = "<null>";
//                    }
//                );
//                name = "Pop Rising Vietnam";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTcwNTk3OTg1NCwwMDAwMDAwMGQxMDI2NjE4ZDFiYTI0YmYzOTY3ODNhNDFhZjkyOTdm;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX39t8KGTcoSG/tracks";
//                    total = 57;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX39t8KGTcoSG";
//            }
//        );
//        limit = 20;
//        next = "https://api.spotify.com/v1/browse/featured-playlists?country=VN&timestamp=2024-01-23T08%3A19%3A05&offset=20&limit=20";
//        offset = 0;
//        previous = "<null>";
//        total = 24;
//    };
//}
