//
// CauseUserIdCause.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CauseUserIdCause: Codable, JSONEncodable, Hashable {

    public var _class: String?
    public var shortDescription: String?
    public var userId: String?
    public var userName: String?

    public init(_class: String? = nil, shortDescription: String? = nil, userId: String? = nil, userName: String? = nil) {
        self._class = _class
        self.shortDescription = shortDescription
        self.userId = userId
        self.userName = userName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _class
        case shortDescription
        case userId
        case userName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_class, forKey: ._class)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(userName, forKey: .userName)
    }
}

