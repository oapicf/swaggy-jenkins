//
// HudsonMasterComputerexecutors.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HudsonMasterComputerexecutors: Codable, JSONEncodable, Hashable {

    public var currentExecutable: FreeStyleBuild?
    public var idle: Bool?
    public var likelyStuck: Bool?
    public var number: Int?
    public var progress: Int?
    public var _class: String?

    public init(currentExecutable: FreeStyleBuild? = nil, idle: Bool? = nil, likelyStuck: Bool? = nil, number: Int? = nil, progress: Int? = nil, _class: String? = nil) {
        self.currentExecutable = currentExecutable
        self.idle = idle
        self.likelyStuck = likelyStuck
        self.number = number
        self.progress = progress
        self._class = _class
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentExecutable
        case idle
        case likelyStuck
        case number
        case progress
        case _class
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentExecutable, forKey: .currentExecutable)
        try container.encodeIfPresent(idle, forKey: .idle)
        try container.encodeIfPresent(likelyStuck, forKey: .likelyStuck)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(progress, forKey: .progress)
        try container.encodeIfPresent(_class, forKey: ._class)
    }
}

