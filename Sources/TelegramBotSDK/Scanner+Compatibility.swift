//
// Scanner+Compatibility.swift
//
// This source file is part of the SMUD open source project
//
// Copyright (c) 2016 SMUD project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information
// See AUTHORS.txt for the list of SMUD project authors
//

import Foundation

extension Scanner {

//    public var atEnd: Bool { return atEnd }

    

    public func scanInteger() -> Int? {
        var result: Int = 0
        return scanInt(&result) ? result : nil
    }



    public func scanInt32() -> Int32? {
        var result: Int32 = 0
        return scanInt32(&result) ? result : nil
    }



    public func scanInt64() -> Int64? {
        var result: Int64 = 0
        return scanInt64(&result) ? result : nil
    }


    public func scanUInt64() -> UInt64? {
        var result: UInt64 = 0
        return scanUnsignedLongLong(&result) ? result : nil
    }
    

    public func scanFloat() -> Float? {
        var result: Float = 0.0
        return scanFloat(&result) ? result : nil
    }

    

    public func scanDouble() -> Double? {
        var result: Double = 0.0
        return scanDouble(&result) ? result : nil
    }



    public func scanHexUInt32() -> UInt32? {
        var result: UInt32 = 0
        return scanHexInt32(&result) ? result : nil
    }
    


    public func scanHexUInt64() -> UInt64? {
        var result: UInt64 = 0
        return scanHexInt64(&result) ? result : nil
    }


    public func scanHexFloat() -> Float? {
        var result: Float = 0.0
        return scanHexFloat(&result) ? result : nil
    }

    public func scanHexDouble() -> Double? {
        var result: Double = 0.0
        return scanHexDouble(&result) ? result : nil
    }

    #if os(OSX)
    public func scanString(_ searchString: String) -> String? {
        var result: NSString?
        
        guard scanString(searchString, into: &result) else { return nil }
        return result as String?
    }
    #endif


    #if os(OSX)
    public func scanCharacters(from: CharacterSet) -> String? {
        var result: NSString?
        guard scanCharacters(from: from, into: &result) else { return nil }
        return result as String?
    }
    #else
    public func scanCharacters(from: CharacterSet) -> String? {
        return  scanCharactersFromSet(from)
    }
    #endif

    #if os(OSX)
    public func scanUpTo(_ string: String) -> String? {
        var result: NSString?
        guard scanUpTo(string, into: &result) else { return nil }
        return result as String?
    }
    #else
    public func scanUpTo(_ string: String) -> String? {
        return scanUpToString(string)
    }
    #endif

    #if os(OSX)
    public func scanUpToCharacters(from set: CharacterSet) -> String? {
        var result: NSString?
        guard scanUpToCharacters(from: set, into: &result) else { return nil }
        return result as String?
    }
    #else
    public func scanUpToCharacters(from set: CharacterSet) -> String? {
        var result: String?
        guard scanUpToCharacters(from: set, into: &result) else { return nil }
        return result
    }
    #endif
}


