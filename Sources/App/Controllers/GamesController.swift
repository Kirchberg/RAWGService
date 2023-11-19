//
//  GamesController.swift
//
//
//  Created by Kostarev Kirill on 18.11.2023.
//

import Vapor

struct GamesController: RouteCollection {

    func boot(routes: RoutesBuilder) throws {
        let gamesRoute = routes.grouped("games")
        gamesRoute.get(use: fetchGames)
    }

    func fetchGames(req: Request) async throws -> GamesResponse {
        let queryParams = try req.query.decode(GamesQueryParameters.self)
        let rawgService = RAWGService(app: req.application)
        return try await rawgService.fetchGames(queryParams: queryParams)
    }

}
