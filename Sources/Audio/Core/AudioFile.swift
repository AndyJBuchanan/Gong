//
//  AudioFile.swift
//  Gong
//
//  Created by Daniel Clelland on 30/04/17.
//  Copyright © 2017 Daniel Clelland. All rights reserved.
//

import Foundation
import AudioToolbox

public class AudioFile {
    
    public let reference: AudioFileID
    
    public init(_ reference: AudioFileID) {
        self.reference = reference
    }
    
    public convenience init(url: URL, permissions: AudioFilePermissions = .readWritePermission, typeHint: AudioFileTypeID = 0) throws {
        var audioFileReference: AudioFileID? = nil
        try AudioFileOpenURL(url as CFURL, permissions, typeHint, &audioFileReference).audioError("Initializing AudioFile with URL \"\(url)\"")
        self.init(audioFileReference!)
    }
    
    
    public func value<T>(for property: AudioUnitPropertyID) -> T? {
        do {
            let (dataSize, _) = try info(for: property)
            return try value(for: property, dataSize: dataSize)
        } catch let error {
            print(error)
            return nil
        }
    }

    public func setValue<T>(_ value: T, for property: AudioUnitPropertyID) {
        do {
            let (dataSize, _) = try! info(for: property)
            return try setValue(value, for: property, dataSize: dataSize)
        } catch let error {
            print(error)
        }
    }
    
    public func info(for property: AudioFilePropertyID) throws -> (dataSize: UInt32, isWritable: Bool) {
        var dataSize: UInt32 = 0
        var isWritable: UInt32 = 0
        
        try AudioFileGetPropertyInfo(reference, property, &dataSize, &isWritable).audioError("Getting AudioFile property info")
        
        return (dataSize: dataSize, isWritable: isWritable != 0)
    }
    
    public func value<T>(for property: AudioFilePropertyID, dataSize: UInt32) throws -> T {
        var dataSize = dataSize
        var data = UnsafeMutablePointer<T>.allocate(capacity: Int(dataSize))
        defer {
            data.deallocate(capacity: Int(dataSize))
        }
        try AudioFileGetProperty(reference, property, &dataSize, data).audioError("Getting AudioFile property")
        return data.pointee
    }

    public func setValue<T>(_ value: T, for property: AudioFilePropertyID, dataSize: UInt32) throws {
        var data = value
        try AudioFileSetProperty(reference, property, dataSize, &data).audioError("Setting AudioFile property")
    }
    
}

extension AudioFile {
    
    public var properties: NSDictionary? {
        let properties: CFDictionary? = value(for: kAudioFilePropertyInfoDictionary)
        return properties as NSDictionary?
    }
    
}

