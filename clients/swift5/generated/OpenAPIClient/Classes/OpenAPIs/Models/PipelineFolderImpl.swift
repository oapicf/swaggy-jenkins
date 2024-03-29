//
// PipelineFolderImpl.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PipelineFolderImpl: Codable, JSONEncodable, Hashable {

    public var _class: String?
    public var displayName: String?
    public var fullName: String?
    public var name: String?
    public var organization: String?
    public var numberOfFolders: Int?
    public var numberOfPipelines: Int?

    public init(_class: String? = nil, displayName: String? = nil, fullName: String? = nil, name: String? = nil, organization: String? = nil, numberOfFolders: Int? = nil, numberOfPipelines: Int? = nil) {
        self._class = _class
        self.displayName = displayName
        self.fullName = fullName
        self.name = name
        self.organization = organization
        self.numberOfFolders = numberOfFolders
        self.numberOfPipelines = numberOfPipelines
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _class
        case displayName
        case fullName
        case name
        case organization
        case numberOfFolders
        case numberOfPipelines
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_class, forKey: ._class)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(organization, forKey: .organization)
        try container.encodeIfPresent(numberOfFolders, forKey: .numberOfFolders)
        try container.encodeIfPresent(numberOfPipelines, forKey: .numberOfPipelines)
    }
}

