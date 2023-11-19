import Fluent
import Vapor

func routes(_ app: Application) throws {
    let rawgService = RAWGService(app: app)

    app.get("games") { req async throws -> GamesResponse in
        let queryParams = try req.query.decode(GamesQueryParameters.self)
        return try await rawgService.fetchGames(queryParams: queryParams)
    }

    try app.register(collection: GamesController())
}
