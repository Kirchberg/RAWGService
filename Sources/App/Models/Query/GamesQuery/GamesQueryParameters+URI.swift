//
//  GamesQueryParameters+URI.swift
//
//
//  Created by Kostarev Kirill on 18.11.2023.
//

import Vapor

extension GamesQueryParameters {
    func makeURL() -> URI {
        var components = URLComponents(string: "https://api.rawg.io/api/games")!
        var queryItems = [URLQueryItem]()

        let apiKey = Environment.get("RAWG_API_KEY")

        queryItems.append(URLQueryItem(name: "key", value: apiKey))
        queryItems.append(URLQueryItem(name: "page", value: String(page)))
        queryItems.append(URLQueryItem(name: "page_size", value: String(pageSize)))

        if let search = search { queryItems.append(URLQueryItem(name: "search", value: search)) }
        if let searchPrecise = searchPrecise { queryItems.append(URLQueryItem(name: "search_precise", value: String(searchPrecise))) }
        if let searchExact = searchExact { queryItems.append(URLQueryItem(name: "search_exact", value: String(searchExact))) }
        if let parentPlatforms = parentPlatforms { queryItems.append(URLQueryItem(name: "parent_platforms", value: parentPlatforms)) }
        if let platforms = platforms { queryItems.append(URLQueryItem(name: "platforms", value: platforms)) }
        if let stores = stores { queryItems.append(URLQueryItem(name: "stores", value: stores)) }
        if let developers = developers { queryItems.append(URLQueryItem(name: "developers", value: developers)) }
        if let publishers = publishers { queryItems.append(URLQueryItem(name: "publishers", value: publishers)) }
        if let genres = genres { queryItems.append(URLQueryItem(name: "genres", value: genres)) }
        if let tags = tags { queryItems.append(URLQueryItem(name: "tags", value: tags)) }
        if let creators = creators { queryItems.append(URLQueryItem(name: "creators", value: creators)) }
        if let dates = dates { queryItems.append(URLQueryItem(name: "dates", value: dates)) }
        if let updated = updated { queryItems.append(URLQueryItem(name: "updated", value: updated)) }
        if let platformsCount = platformsCount { queryItems.append(URLQueryItem(name: "platforms_count", value: String(platformsCount))) }
        if let metacritic = metacritic { queryItems.append(URLQueryItem(name: "metacritic", value: metacritic)) }
        if let excludeCollection = excludeCollection { queryItems.append(URLQueryItem(name: "exclude_collection", value: String(excludeCollection))) }
        if let excludeAdditions = excludeAdditions { queryItems.append(URLQueryItem(name: "exclude_additions", value: String(excludeAdditions))) }
        if let excludeParents = excludeParents { queryItems.append(URLQueryItem(name: "exclude_parents", value: String(excludeParents))) }
        if let excludeGameSeries = excludeGameSeries { queryItems.append(URLQueryItem(name: "exclude_game_series", value: String(excludeGameSeries))) }
        if let excludeStores = excludeStores { queryItems.append(URLQueryItem(name: "exclude_stores", value: excludeStores)) }
        if let ordering = ordering { queryItems.append(URLQueryItem(name: "ordering", value: ordering)) }

        components.queryItems = queryItems

        guard let url = components.url else {
            fatalError("Invalid URL")
        }

        return URI(string: url.absoluteString)
    }
}
