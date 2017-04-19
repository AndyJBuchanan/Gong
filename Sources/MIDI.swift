//
//  MIDI.swift
//  Gong
//
//  Created by Daniel Clelland on 17/04/17.
//  Copyright © 2017 Daniel Clelland. All rights reserved.
//

import Foundation
import CoreMIDI

public protocol MIDIObserver: MIDINotificationObserver, MIDIPacketObserver { }

public protocol MIDINotificationObserver: class {
    
    func observe(_ notification: MIDIClient.Notification)
    
}

public protocol MIDIPacketObserver: class {
    
    func observe(_ packet: MIDIPacket, from source: MIDIEndpoint<Source>)
    
}

public struct MIDI {
    
    public static var client: MIDIClient? = {
        do {
            return try MIDIClient(name: "Default client") { notification in
                process(notification)
            }
        } catch let error {
            print(error)
            return nil
        }
    }()
    
    public static var input: MIDIPort<Input>? = {
        do {
            return try client?.createInput(name: "Default input") { (source, packet) in
                process(packet, from: source)
            }
        } catch let error {
            print(error)
            return nil
        }
    }()
    
    public static var output: MIDIPort<Output>? = {
        do {
            return try client?.createOutput(name: "Default output")
        } catch let error {
            print(error)
            return nil
        }
    }()
    
    public static func connect() {
        for source in MIDIEndpoint<Source>.all {
            do {
                try input?.connect(source)
            } catch let error {
                print(error)
            }
        }
    }
    
    public static func disconnect() {
        for source in MIDIEndpoint<Source>.all {
            do {
                try input?.disconnect(source)
            } catch let error {
                print(error)
            }
        }
    }
    
    public static func addObserver(_ observer: MIDIObserver) {
        addNotificationObserver(observer)
        addPacketObserver(observer)
    }
    
    public static func removeObserver(_ observer: MIDIObserver) {
        removeNotificationObserver(observer)
        removePacketObserver(observer)
    }
    
    private static var notificationObservers = [MIDINotificationObserver]()
    
    public static func addNotificationObserver(_ observer: MIDINotificationObserver) {
        notificationObservers.append(observer)
    }
    
    public static func removeNotificationObserver(_ observer: MIDINotificationObserver) {
        notificationObservers = notificationObservers.filter { $0 !== observer }
    }
    
    private static func process(_ notification: MIDIClient.Notification) {
        do {
            switch notification {
            case .objectAdded(_, let source as MIDIEndpoint<Source>):
                try input?.connect(source)
            case .objectRemoved(_, let source as MIDIEndpoint<Source>):
                try input?.disconnect(source)
            default:
                break
            }
        } catch let error {
            print(error)
        }
        
        for observer in notificationObservers {
            observer.observe(notification)
        }
    }
    
    private static var packetObservers = [MIDIPacketObserver]()
    
    public static func addPacketObserver(_ observer: MIDIPacketObserver) {
        packetObservers.append(observer)
    }
    
    public static func removePacketObserver(_ observer: MIDIPacketObserver) {
        packetObservers = packetObservers.filter { $0 !== observer }
    }
    
    private static func process(_ packet: MIDIPacket, from source: MIDIEndpoint<Source>) {
        for observer in packetObservers {
            observer.observe(packet, from: source)
        }
    }

}

extension MIDIDevice {
    
    public func receive(_ packet: MIDIPacket) {
        for entity in entities {
            entity.receive(packet)
        }
    }
    
    public func send(_ packet: MIDIPacket, via output: MIDIPort<Output>? = MIDI.output) {
        for entity in entities {
            entity.send(packet, via: output)
        }
    }
    
}

extension MIDIEntity {
    
    public func receive(_ packet: MIDIPacket) {
        for source in sources {
            source.receive(packet)
        }
    }
    
    public func send(_ packet: MIDIPacket, via output: MIDIPort<Output>? = MIDI.output) {
        for destination in destinations {
            destination.send(packet, via: output)
        }
    }
    
}

extension MIDIEndpoint where Type == Source {
    
    public func receive(_ packet: MIDIPacket) {
        do {
            try received(packet)
        } catch let error {
            print(error)
        }
    }

}

extension MIDIEndpoint where Type == Destination {
    
    public func send(_ packet: MIDIPacket, via output: MIDIPort<Output>? = MIDI.output) {
        guard let output = output else {
            return
        }
        
        do {
            try output.send(packet, to: self)
        } catch let error {
            print(error)
        }
    }
    
}
