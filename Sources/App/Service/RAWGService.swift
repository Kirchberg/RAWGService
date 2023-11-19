//
//  RAWGService.swift
//
//
//  Created by Kostarev Kirill on 18.11.2023.
//

import Vapor

struct RAWGService {
    let app: Application

    init(app: Application) {
        self.app = app
    }

    func fetchGames(queryParams: GamesQueryParameters) async throws -> GamesResponse {
        let url = queryParams.makeURL()
        let response = try await app.client.get(url).content.decode(GamesResponse.self)
        return response
    }

}
