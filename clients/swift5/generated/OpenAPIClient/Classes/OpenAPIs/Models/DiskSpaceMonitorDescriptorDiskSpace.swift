//
// DiskSpaceMonitorDescriptorDiskSpace.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DiskSpaceMonitorDescriptorDiskSpace: Codable, JSONEncodable, Hashable {

    public var _class: String?
    public var timestamp: Int?
    public var path: String?
    public var size: Int?

    public init(_class: String? = nil, timestamp: Int? = nil, path: String? = nil, size: Int? = nil) {
        self._class = _class
        self.timestamp = timestamp
        self.path = path
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _class
        case timestamp
        case path
        case size
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_class, forKey: ._class)
        try container.encodeIfPresent(timestamp, forKey: .timestamp)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(size, forKey: .size)
    }
}

