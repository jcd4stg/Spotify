//
//  AllCategoriesResponse.swift
//  Spotify
//
//  Created by lynnguyen on 01/02/2024.
//

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}


//{
//    categories =
//    {
//        href = "https://api.spotify.com/v1/browse/categories?offset=0&limit=2&locale=en-GB%2Cen-US%3Bq%3D0.9%2Cen%3Bq%3D0.8";
//        items =
//        (
//            {
//                href = "https://api.spotify.com/v1/browse/categories/0JQ5DAqbMKFz6FAsUtgAab";
//                icons =                 (
//                    {
//                        height = "<null>";
//                        url = "https://t.scdn.co/images/728ed47fc1674feb95f7ac20236eb6d7.jpeg";
//                        width = "<null>";
//                    }
//                );
//                id = 0JQ5DAqbMKFz6FAsUtgAab;
//                name = "New Releases";
//            },
//            {
//                href = "https://api.spotify.com/v1/browse/categories/0JQ5DAqbMKFLIOWOrpNSUR";
//                icons =                 (
//                    {
//                        height = "<null>";
//                        url = "https://t.scdn.co/images/6e1202d14b1f400592532c10d10871ef.jpeg";
//                        width = "<null>";
//                    }
//                );
//                id = 0JQ5DAqbMKFLIOWOrpNSUR;
//                name = "Vietnamese Music";
//            }
//        );
//        limit = 2;
//        next = "https://api.spotify.com/v1/browse/categories?offset=2&limit=2&locale=en-GB%2Cen-US%3Bq%3D0.9%2Cen%3Bq%3D0.8";
//        offset = 0;
//        previous = "<null>";
//        total = 56;
//    };
//}
