//
// GenericResource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GenericResource: Codable, JSONEncodable, Hashable {

    public var _class: String?
    public var displayName: String?
    public var durationInMillis: Int?
    public var id: String?
    public var result: String?
    public var startTime: String?

    public init(_class: String? = nil, displayName: String? = nil, durationInMillis: Int? = nil, id: String? = nil, result: String? = nil, startTime: String? = nil) {
        self._class = _class
        self.displayName = displayName
        self.durationInMillis = durationInMillis
        self.id = id
        self.result = result
        self.startTime = startTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _class
        case displayName
        case durationInMillis
        case id
        case result
        case startTime
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_class, forKey: ._class)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(durationInMillis, forKey: .durationInMillis)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(result, forKey: .result)
        try container.encodeIfPresent(startTime, forKey: .startTime)
    }
}

