//
//  MIDIKey.swift
//  Gong
//
//  Created by Daniel Clelland on 22/04/17.
//  Copyright © 2017 Daniel Clelland. All rights reserved.
//

import Foundation

public struct MIDIKey: MIDIInteger {
    
    public let value: Int
    
    public init(_ value: Int) {
        self.value = value
    }
    
}

extension MIDIKey {
    
    public static var c0: MIDIKey { return 0 }
    public static var cSharp0: MIDIKey { return 1 }
    public static var dFlat0: MIDIKey { return 1 }
    public static var d0: MIDIKey { return 2 }
    public static var dSharp0: MIDIKey { return 3 }
    public static var eFlat0: MIDIKey { return 3 }
    public static var e0: MIDIKey { return 4 }
    public static var eSharp0: MIDIKey { return 5 }
    public static var fFlat0: MIDIKey { return 4 }
    public static var f0: MIDIKey { return 5 }
    public static var fSharp0: MIDIKey { return 6 }
    public static var gFlat0: MIDIKey { return 6 }
    public static var g0: MIDIKey { return 7 }
    public static var gSharp0: MIDIKey { return 8 }
    public static var aFlat0: MIDIKey { return 8 }
    public static var a0: MIDIKey { return 9 }
    public static var aSharp0: MIDIKey { return 10 }
    public static var bFlat0: MIDIKey { return 10 }
    public static var b0: MIDIKey { return 11 }
    public static var bSharp0: MIDIKey { return 12 }
    public static var cFlat1: MIDIKey { return 11 }
    public static var c1: MIDIKey { return 12 }
    public static var cSharp1: MIDIKey { return 13 }
    public static var dFlat1: MIDIKey { return 13 }
    public static var d1: MIDIKey { return 14 }
    public static var dSharp1: MIDIKey { return 15 }
    public static var eFlat1: MIDIKey { return 15 }
    public static var e1: MIDIKey { return 16 }
    public static var eSharp1: MIDIKey { return 17 }
    public static var fFlat1: MIDIKey { return 16 }
    public static var f1: MIDIKey { return 17 }
    public static var fSharp1: MIDIKey { return 18 }
    public static var gFlat1: MIDIKey { return 18 }
    public static var g1: MIDIKey { return 19 }
    public static var gSharp1: MIDIKey { return 20 }
    public static var aFlat1: MIDIKey { return 20 }
    public static var a1: MIDIKey { return 21 }
    public static var aSharp1: MIDIKey { return 22 }
    public static var bFlat1: MIDIKey { return 22 }
    public static var b1: MIDIKey { return 23 }
    public static var bSharp1: MIDIKey { return 24 }
    public static var cFlat2: MIDIKey { return 23 }
    public static var c2: MIDIKey { return 24 }
    public static var cSharp2: MIDIKey { return 25 }
    public static var dFlat2: MIDIKey { return 25 }
    public static var d2: MIDIKey { return 26 }
    public static var dSharp2: MIDIKey { return 27 }
    public static var eFlat2: MIDIKey { return 27 }
    public static var e2: MIDIKey { return 28 }
    public static var eSharp2: MIDIKey { return 29 }
    public static var fFlat2: MIDIKey { return 28 }
    public static var f2: MIDIKey { return 29 }
    public static var fSharp2: MIDIKey { return 30 }
    public static var gFlat2: MIDIKey { return 30 }
    public static var g2: MIDIKey { return 31 }
    public static var gSharp2: MIDIKey { return 32 }
    public static var aFlat2: MIDIKey { return 32 }
    public static var a2: MIDIKey { return 33 }
    public static var aSharp2: MIDIKey { return 34 }
    public static var bFlat2: MIDIKey { return 34 }
    public static var b2: MIDIKey { return 35 }
    public static var bSharp2: MIDIKey { return 36 }
    public static var cFlat3: MIDIKey { return 35 }
    public static var c3: MIDIKey { return 36 }
    public static var cSharp3: MIDIKey { return 37 }
    public static var dFlat3: MIDIKey { return 37 }
    public static var d3: MIDIKey { return 38 }
    public static var dSharp3: MIDIKey { return 39 }
    public static var eFlat3: MIDIKey { return 39 }
    public static var e3: MIDIKey { return 40 }
    public static var eSharp3: MIDIKey { return 41 }
    public static var fFlat3: MIDIKey { return 40 }
    public static var f3: MIDIKey { return 41 }
    public static var fSharp3: MIDIKey { return 42 }
    public static var gFlat3: MIDIKey { return 42 }
    public static var g3: MIDIKey { return 43 }
    public static var gSharp3: MIDIKey { return 44 }
    public static var aFlat3: MIDIKey { return 44 }
    public static var a3: MIDIKey { return 45 }
    public static var aSharp3: MIDIKey { return 46 }
    public static var bFlat3: MIDIKey { return 46 }
    public static var b3: MIDIKey { return 47 }
    public static var bSharp3: MIDIKey { return 48 }
    public static var cFlat4: MIDIKey { return 47 }
    public static var c4: MIDIKey { return 48 }
    public static var cSharp4: MIDIKey { return 49 }
    public static var dFlat4: MIDIKey { return 49 }
    public static var d4: MIDIKey { return 50 }
    public static var dSharp4: MIDIKey { return 51 }
    public static var eFlat4: MIDIKey { return 51 }
    public static var e4: MIDIKey { return 52 }
    public static var eSharp4: MIDIKey { return 53 }
    public static var fFlat4: MIDIKey { return 52 }
    public static var f4: MIDIKey { return 53 }
    public static var fSharp4: MIDIKey { return 54 }
    public static var gFlat4: MIDIKey { return 54 }
    public static var g4: MIDIKey { return 55 }
    public static var gSharp4: MIDIKey { return 56 }
    public static var aFlat4: MIDIKey { return 56 }
    public static var a4: MIDIKey { return 57 }
    public static var aSharp4: MIDIKey { return 58 }
    public static var bFlat4: MIDIKey { return 58 }
    public static var b4: MIDIKey { return 59 }
    public static var bSharp4: MIDIKey { return 60 }
    public static var cFlat5: MIDIKey { return 59 }
    public static var c5: MIDIKey { return 60 }
    public static var cSharp5: MIDIKey { return 61 }
    public static var dFlat5: MIDIKey { return 61 }
    public static var d5: MIDIKey { return 62 }
    public static var dSharp5: MIDIKey { return 63 }
    public static var eFlat5: MIDIKey { return 63 }
    public static var e5: MIDIKey { return 64 }
    public static var eSharp5: MIDIKey { return 65 }
    public static var fFlat5: MIDIKey { return 64 }
    public static var f5: MIDIKey { return 65 }
    public static var fSharp5: MIDIKey { return 66 }
    public static var gFlat5: MIDIKey { return 66 }
    public static var g5: MIDIKey { return 67 }
    public static var gSharp5: MIDIKey { return 68 }
    public static var aFlat5: MIDIKey { return 68 }
    public static var a5: MIDIKey { return 69 }
    public static var aSharp5: MIDIKey { return 70 }
    public static var bFlat5: MIDIKey { return 70 }
    public static var b5: MIDIKey { return 71 }
    public static var bSharp5: MIDIKey { return 72 }
    public static var cFlat6: MIDIKey { return 71 }
    public static var c6: MIDIKey { return 72 }
    public static var cSharp6: MIDIKey { return 73 }
    public static var dFlat6: MIDIKey { return 73 }
    public static var d6: MIDIKey { return 74 }
    public static var dSharp6: MIDIKey { return 75 }
    public static var eFlat6: MIDIKey { return 75 }
    public static var e6: MIDIKey { return 76 }
    public static var eSharp6: MIDIKey { return 77 }
    public static var fFlat6: MIDIKey { return 76 }
    public static var f6: MIDIKey { return 77 }
    public static var fSharp6: MIDIKey { return 78 }
    public static var gFlat6: MIDIKey { return 78 }
    public static var g6: MIDIKey { return 79 }
    public static var gSharp6: MIDIKey { return 80 }
    public static var aFlat6: MIDIKey { return 80 }
    public static var a6: MIDIKey { return 81 }
    public static var aSharp6: MIDIKey { return 82 }
    public static var bFlat6: MIDIKey { return 82 }
    public static var b6: MIDIKey { return 83 }
    public static var bSharp6: MIDIKey { return 84 }
    public static var cFlat7: MIDIKey { return 83 }
    public static var c7: MIDIKey { return 84 }
    public static var cSharp7: MIDIKey { return 85 }
    public static var dFlat7: MIDIKey { return 85 }
    public static var d7: MIDIKey { return 86 }
    public static var dSharp7: MIDIKey { return 87 }
    public static var eFlat7: MIDIKey { return 87 }
    public static var e7: MIDIKey { return 88 }
    public static var eSharp7: MIDIKey { return 89 }
    public static var fFlat7: MIDIKey { return 88 }
    public static var f7: MIDIKey { return 89 }
    public static var fSharp7: MIDIKey { return 90 }
    public static var gFlat7: MIDIKey { return 90 }
    public static var g7: MIDIKey { return 91 }
    public static var gSharp7: MIDIKey { return 92 }
    public static var aFlat7: MIDIKey { return 92 }
    public static var a7: MIDIKey { return 93 }
    public static var aSharp7: MIDIKey { return 94 }
    public static var bFlat7: MIDIKey { return 94 }
    public static var b7: MIDIKey { return 95 }
    public static var bSharp7: MIDIKey { return 96 }
    public static var cFlat8: MIDIKey { return 95 }
    public static var c8: MIDIKey { return 96 }
    public static var cSharp8: MIDIKey { return 97 }
    public static var dFlat8: MIDIKey { return 97 }
    public static var d8: MIDIKey { return 98 }
    public static var dSharp8: MIDIKey { return 99 }
    public static var eFlat8: MIDIKey { return 99 }
    public static var e8: MIDIKey { return 100 }
    public static var eSharp8: MIDIKey { return 101 }
    public static var fFlat8: MIDIKey { return 100 }
    public static var f8: MIDIKey { return 101 }
    public static var fSharp8: MIDIKey { return 102 }
    public static var gFlat8: MIDIKey { return 102 }
    public static var g8: MIDIKey { return 103 }
    public static var gSharp8: MIDIKey { return 104 }
    public static var aFlat8: MIDIKey { return 104 }
    public static var a8: MIDIKey { return 105 }
    public static var aSharp8: MIDIKey { return 106 }
    public static var bFlat8: MIDIKey { return 106 }
    public static var b8: MIDIKey { return 107 }
    public static var bSharp8: MIDIKey { return 108 }
    public static var cFlat9: MIDIKey { return 107 }
    public static var c9: MIDIKey { return 108 }
    public static var cSharp9: MIDIKey { return 109 }
    public static var dFlat9: MIDIKey { return 109 }
    public static var d9: MIDIKey { return 111 }
    public static var dSharp9: MIDIKey { return 111 }
    public static var eFlat9: MIDIKey { return 111 }
    public static var e9: MIDIKey { return 112 }
    public static var eSharp9: MIDIKey { return 113 }
    public static var fFlat9: MIDIKey { return 112 }
    public static var f9: MIDIKey { return 113 }
    public static var fSharp9: MIDIKey { return 114 }
    public static var gFlat9: MIDIKey { return 114 }
    public static var g9: MIDIKey { return 115 }
    public static var gSharp9: MIDIKey { return 116 }
    public static var aFlat9: MIDIKey { return 116 }
    public static var a9: MIDIKey { return 117 }
    public static var aSharp9: MIDIKey { return 118 }
    public static var bFlat9: MIDIKey { return 118 }
    public static var b9: MIDIKey { return 119 }
    public static var bSharp9: MIDIKey { return 121 }
    public static var cFlat10: MIDIKey { return 119 }
    public static var c10: MIDIKey { return 120 }
    public static var cSharp10: MIDIKey { return 121 }
    public static var dFlat10: MIDIKey { return 121 }
    public static var d10: MIDIKey { return 123 }
    public static var dSharp10: MIDIKey { return 123 }
    public static var eFlat10: MIDIKey { return 123 }
    public static var e10: MIDIKey { return 124 }
    public static var eSharp10: MIDIKey { return 125 }
    public static var fFlat10: MIDIKey { return 124 }
    public static var f10: MIDIKey { return 125 }
    public static var fSharp10: MIDIKey { return 126 }
    public static var gFlat10: MIDIKey { return 126 }
    public static var g10: MIDIKey { return 127 }

}

extension MIDIKey {
    
    public static var acousticBassDrum: MIDIKey { return 35 }
    public static var bassDrum1: MIDIKey { return 36 }
    public static var sideStick: MIDIKey { return 37 }
    public static var acousticSnare: MIDIKey { return 38 }
    public static var handClap: MIDIKey { return 39 }
    public static var electricSnare: MIDIKey { return 40 }
    public static var lowFloorTom: MIDIKey { return 41 }
    public static var closedHiHat: MIDIKey { return 42 }
    public static var highFloorTom: MIDIKey { return 43 }
    public static var pedalHiHat: MIDIKey { return 44 }
    public static var lowTom: MIDIKey { return 45 }
    public static var openHiHat: MIDIKey { return 46 }
    public static var lowMidTom: MIDIKey { return 47 }
    public static var hiMidTom: MIDIKey { return 48 }
    public static var crashCymbal1: MIDIKey { return 49 }
    public static var highTom: MIDIKey { return 50 }
    public static var rideCymbal1: MIDIKey { return 51 }
    public static var chineseCymbal: MIDIKey { return 52 }
    public static var rideBell: MIDIKey { return 53 }
    public static var tambourine: MIDIKey { return 54 }
    public static var splashCymbal: MIDIKey { return 55 }
    public static var cowbell: MIDIKey { return 56 }
    public static var crashCymbal2: MIDIKey { return 57 }
    public static var vibraslap: MIDIKey { return 58 }
    public static var rideCymbal2: MIDIKey { return 59 }
    public static var hiBongo: MIDIKey { return 60 }
    public static var lowBongo: MIDIKey { return 61 }
    public static var muteHiConga: MIDIKey { return 62 }
    public static var openHiConga: MIDIKey { return 63 }
    public static var lowConga: MIDIKey { return 64 }
    public static var highTimbale: MIDIKey { return 65 }
    public static var lowTimbale: MIDIKey { return 66 }
    public static var highAgogo: MIDIKey { return 67 }
    public static var lowAgogo: MIDIKey { return 68 }
    public static var cabasa: MIDIKey { return 69 }
    public static var maracas: MIDIKey { return 70 }
    public static var shortWhistle: MIDIKey { return 71 }
    public static var longWhistle: MIDIKey { return 72 }
    public static var shortGuiro: MIDIKey { return 73 }
    public static var longGuiro: MIDIKey { return 74 }
    public static var claves: MIDIKey { return 75 }
    public static var hiWoodBlock: MIDIKey { return 76 }
    public static var lowWoodBlock: MIDIKey { return 77 }
    public static var muteCuica: MIDIKey { return 78 }
    public static var openCuica: MIDIKey { return 79 }
    public static var muteTriangle: MIDIKey { return 80 }
    public static var openTriangle: MIDIKey { return 81 }
    
}

extension MIDIKey {
    
    public static func + (lhs: MIDIKey, rhs: MIDIInterval) -> MIDIKey {
        return MIDIKey(lhs.value + rhs.value)
    }
    
    public static func + (lhs: MIDIInterval, rhs: MIDIKey) -> MIDIKey {
        return MIDIKey(lhs.value + rhs.value)
    }
    
    public static func - (lhs: MIDIKey, rhs: MIDIInterval) -> MIDIKey {
        return MIDIKey(lhs.value - rhs.value)
    }
    
    public static func - (lhs: MIDIInterval, rhs: MIDIKey) -> MIDIKey {
        return MIDIKey(lhs.value - rhs.value)
    }
    
}
