//  RealMP/Decimal32.swift
//
//  Created by Jason William Staiert on 2/28/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import LibDFP
import Real

public struct Decimal32
: Number {

  // MARK: Decimal32

  let bid32: BID_UINT32

  public init() {

    fatalError("not implemented")
  }

  public init(_ other: Decimal32) {

    fatalError("not implemented")
  }

  // MARK: CustomDebugStringConvertible

  public var debugDescription: String {

    get {

      fatalError("not implemented")
    }
  }

  // MARK: ExpressibleByStringLiteral

  public typealias StringLiteralType = String

  public init(stringLiteral: String) {

    fatalError("not implemented")
  }

  #if false
  // MARK: ExpressibleByIntegerLiteral

  public typealias IntegerLiteralType = Int32

  public init(integerLiteral value: Int32) {

    fatalError("not implemented")
  }

  // MARK: ExpressibleByFloatLiteral

  public typealias FloatLiteralType = Float

  public init(floatLiteral value: Float) {

    fatalError("not implemented")
  }
  #endif

  // MARK: CustomStringConvertible Protocol

  public var description: String { get { debugDescription } }

  // MARK: LosslessStringConvertible Protocol

  public init?(_ description: String) {

    fatalError("not implemented")
  }

  // MARK: TextOutputStreamable Protocol

  public func write<Target>(to target: inout Target) where Target : TextOutputStream {

    target.write(debugDescription)
  }

  // MARK: Decodable Protocol

  public init(from decoder: Decoder) throws {

    fatalError("not implemented")
  }

  // MARK: Encodable Protocol

  public func encode(to encoder: Encoder) throws {

    fatalError("not implemented")
  }

  // MARK: Equatable Protocol

  public static func == (lhs: Decimal32, rhs: Decimal32) -> Bool {

    fatalError("not implemented")
  }

  // MARK: Comparable Protocol

  public static func < (lhs: Decimal32, rhs: Decimal32) -> Bool {

    fatalError("not implemented")
  }

  // MARK: Number Protocol

  public typealias BitPatternType = UInt32

  public var bitPattern: UInt32 { get { 0 } }

  public init(bitPattern: UInt32) {

    fatalError("not implemented")
  }

  public init(from string: String) throws {

    fatalError("not implemented")
  }

  public func toString(withFormat: NumberFormat) -> String {

    fatalError("not implemented")
  }

  public static let hasExponent: Bool = true

  public static let hasFraction: Bool = true

  public static let isSigned: Bool = true

  public static let one: Decimal32 = "1"

  public static let precision: Int = 7

  public static let radix: Int = 10

  public static let zero: Decimal32 = "0"
}
