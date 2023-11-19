//
//  GamesResponse.swift
//
//
//  Created by Kostarev Kirill on 17.11.2023.
//

import Vapor

struct GamesResponse: Content {
    var count: Int?
    var next: String?
    var previous: String?
    var results: [Game]?
}

struct Game: Content {
    var slug: String?
    var name: String?
    var playtime: Int?
    var platforms: [PlatformDetail]?
    var stores: [StoreDetail]?
    var released: String?
    var tba: Bool?
    var backgroundImage: String?
    var rating: Double?
    var ratingTop: Int?
    var ratings: [Rating]?
    var ratingsCount: Int?
    var reviewsTextCount: Int?
    var added: Int?
    var addedByStatus: [String: Int]?
    var metacritic: Int?
    var suggestionsCount: Int?
    var updated: String?
    var id: Int?
    var score: String?
    var clip: String?
    var tags: [Tag]?
    var esrbRating: ESRBRating?
    var userGame: String?
    var reviewsCount: Int?
    var saturatedColor: String?
    var dominantColor: String?
    var shortScreenshots: [Screenshot]?
    var parentPlatforms: [ParentPlatform]?
    var genres: [Genre]?

    enum CodingKeys: String, CodingKey {
        case slug, name, playtime, platforms, stores, released, tba, backgroundImage, rating, ratingTop, ratings, ratingsCount, reviewsTextCount, added, addedByStatus, metacritic, suggestionsCount, updated, id, score, clip, tags, esrbRating, userGame, reviewsCount, saturatedColor, dominantColor, shortScreenshots, parentPlatforms, genres
    }
}

struct PlatformDetail: Content {
    var platform: Platform?
}

struct Platform: Content {
    var id: Int?
    var name: String?
    var slug: String?
}

struct StoreDetail: Content {
    var store: Store?
}

struct Store: Content {
    var id: Int?
    var name: String?
    var slug: String?
}

struct Rating: Content {
    var id: Int?
    var title: String?
    var count: Int?
    var percent: Double?
}

struct Tag: Content {
    var id: Int?
    var name: String?
    var slug: String?
    var language: String?
    var gamesCount: Int?
    var imageBackground: String?

    enum CodingKeys: String, CodingKey {
        case id, name, slug, language, gamesCount, imageBackground
    }
}

struct ESRBRating: Content {
    var id: Int?
    var slug: String?
    var name: String?
}

struct Screenshot: Content {
    var id: Int?
    var image: String?
}

struct ParentPlatform: Content {
    var platform: PlatformDetail?
}

struct Genre: Content {
    var id: Int?
    var name: String?
    var slug: String?
}
