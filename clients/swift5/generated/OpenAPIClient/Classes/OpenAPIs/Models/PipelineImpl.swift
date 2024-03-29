//
// PipelineImpl.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PipelineImpl: Codable, JSONEncodable, Hashable {

    public var _class: String?
    public var displayName: String?
    public var estimatedDurationInMillis: Int?
    public var fullName: String?
    public var latestRun: String?
    public var name: String?
    public var organization: String?
    public var weatherScore: Int?
    public var links: PipelineImpllinks?

    public init(_class: String? = nil, displayName: String? = nil, estimatedDurationInMillis: Int? = nil, fullName: String? = nil, latestRun: String? = nil, name: String? = nil, organization: String? = nil, weatherScore: Int? = nil, links: PipelineImpllinks? = nil) {
        self._class = _class
        self.displayName = displayName
        self.estimatedDurationInMillis = estimatedDurationInMillis
        self.fullName = fullName
        self.latestRun = latestRun
        self.name = name
        self.organization = organization
        self.weatherScore = weatherScore
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _class
        case displayName
        case estimatedDurationInMillis
        case fullName
        case latestRun
        case name
        case organization
        case weatherScore
        case links = "_links"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_class, forKey: ._class)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(estimatedDurationInMillis, forKey: .estimatedDurationInMillis)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encodeIfPresent(latestRun, forKey: .latestRun)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(organization, forKey: .organization)
        try container.encodeIfPresent(weatherScore, forKey: .weatherScore)
        try container.encodeIfPresent(links, forKey: .links)
    }
}

