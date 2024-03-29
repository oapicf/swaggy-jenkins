//
// BranchImplpermissions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BranchImplpermissions: Codable, JSONEncodable, Hashable {

    public var create: Bool?
    public var read: Bool?
    public var start: Bool?
    public var stop: Bool?
    public var _class: String?

    public init(create: Bool? = nil, read: Bool? = nil, start: Bool? = nil, stop: Bool? = nil, _class: String? = nil) {
        self.create = create
        self.read = read
        self.start = start
        self.stop = stop
        self._class = _class
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case create
        case read
        case start
        case stop
        case _class
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(create, forKey: .create)
        try container.encodeIfPresent(read, forKey: .read)
        try container.encodeIfPresent(start, forKey: .start)
        try container.encodeIfPresent(stop, forKey: .stop)
        try container.encodeIfPresent(_class, forKey: ._class)
    }
}

