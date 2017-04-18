//
//  MIDIPort.swift
//  Gong
//
//  Created by Daniel Clelland on 15/04/17.
//  Copyright © 2017 Daniel Clelland. All rights reserved.
//

import Foundation
import CoreMIDI

public protocol MIDIPortType {}

public enum Input: MIDIPortType {}
public enum Output: MIDIPortType {}

public class MIDIPort<Type: MIDIPortType>: MIDIObject {
    
    public func dispose() throws {
        try MIDIPortDispose(reference).check("Disposing of MIDIPort")
    }
    
}

extension MIDIPort where Type == Input {
    
    public func connect(_ source: MIDIEndpoint<Source>) throws {
        let context = UnsafeMutablePointer.wrap(source.reference)
        try MIDIPortConnectSource(reference, source.reference, context).check("Connecting MIDIPort to source")
    }
    
    public func connect(_ entity: MIDIEntity) throws {
        for source in entity.sources {
            try connect(source)
        }
    }
    
    public func connect(_ device: MIDIDevice) throws {
        for entity in device.entities {
            try connect(entity)
        }
    }
    
    public func disconnect(_ source: MIDIEndpoint<Source>) throws {
        try MIDIPortDisconnectSource(reference, source.reference).check("Disconnecting MIDIPort from source")
    }
    
    public func disconnect(_ entity: MIDIEntity) throws {
        for source in entity.sources {
            try disconnect(source)
        }
    }
    
    public func disconnect(_ device: MIDIDevice) throws {
        for entity in device.entities {
            try disconnect(entity)
        }
    }

}

extension MIDIPort where Type == Output {
    
    public func send(packet: MIDIPacket, to destination: MIDIEndpoint<Destination>) throws {
        var packets = MIDIPacketList(packet: packet)
        try MIDISend(reference, destination.reference, &packets).check("Sending packets to endpoint with MIDIPort")
    }
    
    public func send(packet: MIDIPacket, to entity: MIDIEntity) throws {
        for destination in entity.destinations {
            try send(packet: packet, to: destination)
        }
    }
    
    public func send(packet: MIDIPacket, to device: MIDIDevice) throws {
        for entity in device.entities {
            try send(packet: packet, to: entity)
        }
    }
    
}
