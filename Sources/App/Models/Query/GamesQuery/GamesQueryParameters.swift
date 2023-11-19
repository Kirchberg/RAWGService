//
//  GamesQueryParameters.swift
//
//
//  Created by Kostarev Kirill on 17.11.2023.
//

import Vapor

struct GamesQueryParameters: Content {

    // MARK: - Internal Properties

    /// A page number within the paginated result set.
    let page: Int

    /// Number of results to return per page.
    let pageSize: Int

    /// Search query.
    let search: String?

    /// Disable fuzziness for the search query.
    let searchPrecise: Bool?

    /// Mark the search query as exact.
    let searchExact: Bool?

    /// Filter by parent platforms, for example: "1, 2, 3".
    let parentPlatforms: String?

    /// Filter by platforms, for example: "4, 5".
    let platforms: String?

    /// Filter by stores, for example: "5, 6".
    let stores: String?

    /// Filter by developers, for example: "valve-software, feral-interactive".
    let developers: String?

    /// Filter by publishers, for example: "electronic-arts, microsoft-studios".
    let publishers: String?

    /// Filter by genres, for example: "action, indie".
    let genres: String?

    /// Filter by tags, for example: "singleplayer, multiplayer".
    let tags: String?

    /// Filter by creators, for example: "cris-velasco, mike-morasky".
    let creators: String?

    /// Filter by a release date, for example: "2010-01-01" to "2018-12-31".
    let dates: String?

    /// Filter by an update date, for example: "2020-12-01" to "2020-12-31".
    let updated: String?

    /// Filter by platforms count, for example: 1.
    let platformsCount: Int?

    /// Filter by a Metacritic rating, for example: "80" to "100".
    let metacritic: String?

    /// Exclude games from a particular collection, for example: 123.
    let excludeCollection: Int?

    /// Exclude additions.
    let excludeAdditions: Bool?

    /// Exclude games which have additions.
    let excludeParents: Bool?

    /// Exclude games which included in a game series.
    let excludeGameSeries: Bool?

    /// Exclude stores, for example: "56".
    let excludeStores: String?

    /// Ordering of the results. Available fields: "name", "released", "added", "created", "updated", "rating", "metacritic". Prefix with a hyphen ("-") to reverse the sort order, for example: "-released".
    let ordering: String?

    enum CodingKeys: String, CodingKey {
        case page, search, platforms, stores, developers, publishers, genres, tags, creators, dates, updated, metacritic, ordering
        case pageSize = "page_size"
        case searchPrecise = "search_precise"
        case searchExact = "search_exact"
        case parentPlatforms = "parent_platforms"
        case platformsCount = "platforms_count"
        case excludeCollection = "exclude_collection"
        case excludeAdditions = "exclude_additions"
        case excludeParents = "exclude_parents"
        case excludeGameSeries = "exclude_game_series"
        case excludeStores = "exclude_stores"
    }


    // MARK: -  Internal Init

    init(
        page: Int,
        pageSize: Int,
        search: String? = nil,
        searchPrecise: Bool? = nil,
        searchExact: Bool? = nil,
        parentPlatforms: String? = nil,
        platforms: String? = nil,
        stores: String? = nil,
        developers: String? = nil,
        publishers: String? = nil,
        genres: String? = nil,
        tags: String? = nil,
        creators: String? = nil,
        dates: String? = nil,
        updated: String? = nil,
        platformsCount: Int? = nil,
        metacritic: String? = nil,
        excludeCollection: Int? = nil,
        excludeAdditions: Bool? = nil,
        excludeParents: Bool? = nil,
        excludeGameSeries: Bool? = nil,
        excludeStores: String? = nil,
        ordering: String? = nil
    ) {
        self.page = page
        self.pageSize = pageSize
        self.search = search
        self.searchPrecise = searchPrecise
        self.searchExact = searchExact
        self.parentPlatforms = parentPlatforms
        self.platforms = platforms
        self.stores = stores
        self.developers = developers
        self.publishers = publishers
        self.genres = genres
        self.tags = tags
        self.creators = creators
        self.dates = dates
        self.updated = updated
        self.platformsCount = platformsCount
        self.metacritic = metacritic
        self.excludeCollection = excludeCollection
        self.excludeAdditions = excludeAdditions
        self.excludeParents = excludeParents
        self.excludeGameSeries = excludeGameSeries
        self.excludeStores = excludeStores
        self.ordering = ordering
    }

}
