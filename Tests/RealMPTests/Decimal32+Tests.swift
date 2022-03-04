//  RealMP/Decimal32+Tests.swift
//
//  Created by Jason William Staiert on 3/1/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import XCTest

@testable import RealMP

final class Decimal32_Tests: XCTestCase {

  // MARK: Memory Layout Properties

  func test_memory_layout() {

    XCTAssertEqual(MemoryLayout<Decimal32>.size, 0)
    XCTAssertEqual(MemoryLayout<Decimal32>.stride, 0)
    XCTAssertEqual(MemoryLayout<Decimal32>.alignment, 0)
  }

  // MARK: Decimal32 Tests

  func test_init() {

    XCTFail("not implemented")
  }

  func test_init_other() {

    XCTFail("not implemented")
  }

  // MARK: ExpressibleByStringLiteral Protocol Tests

  func test_init_stringLiteral() {

    var x: Decimal32

    x = "+nan"
    XCTAssertEqual(x.debugDescription, "+nan")

    x = "+inf"
    XCTAssertEqual(x.debugDescription, "+inf")

    x = "+2147483647"
    XCTAssertEqual(x.debugDescription, "+2.147484e+09")

    x = "+1"
    XCTAssertEqual(x.debugDescription, "+1.000000e+00")

    x = "+0"
    XCTAssertEqual(x.debugDescription, "+0.000000e+00")

    x = "-0"
    XCTAssertEqual(x.debugDescription, "-0.000000e+00")

    x = "-1"
    XCTAssertEqual(x.debugDescription, "-1.000000e+00")

    x = "-2147483647"
    XCTAssertEqual(x.debugDescription, "-2.147484e+09")

    x = "-nan"
    XCTAssertEqual(x.debugDescription, "-nan")

    x = "-inf"
    XCTAssertEqual(x.debugDescription, "-inf")
  }

  // MARK: LosslessStringConvertible Protocol Tests

  func test_description() {

    XCTFail("not implemented")
  }

  func test_init_description_optional() {

    var x: Decimal32?

    x = Decimal32("")
    XCTAssertNil(x)

    x = Decimal32(" ")
    XCTAssertNil(x)

    x = Decimal32(" 123")
    XCTAssertNil(x)

    x = Decimal32("+ab")
    XCTAssertNil(x)

    x = Decimal32("nan")
    XCTAssertNotNil(x)

    x = Decimal32("+inf")
    XCTAssertNotNil(x)
    XCTAssertEqual(x?.description, "+inf")
    x = Decimal32("-inf")
    XCTAssertNotNil(x)
    XCTAssertEqual(x?.description, "-inf")

    x = Decimal32("+1")
    XCTAssertNotNil(x)
    XCTAssertEqual(x?.description, "+1.000000e+00")
    x = Decimal32("-1")
    XCTAssertNotNil(x)
    XCTAssertEqual(x?.description, "-1.000000e+00")

    x = Decimal32("+0")
    XCTAssertNotNil(x)
    XCTAssertEqual(x?.description, "+0.000000e+00")
    x = Decimal32("-0")
    XCTAssertNotNil(x)
    XCTAssertEqual(x?.description, "-0.000000e+00")
  }

  // MARK: TextOutputStreamable Protocol Tests

  func test_write_to() {

    XCTFail("test not implemented")
  }

  // MARK: Codable Protocol Tests

  func test_init_from_decoder() {

    XCTFail("test not implemented")
  }

  func test_encode_to() {
    
    XCTFail("test not implemented")
  }

  // MARK: Comparable Protocol Tests

  func test_equal_op() {

    XCTFail("test not implemented")
  }

  func test_less_than_op() {

    XCTFail("test not implemented")
  }

  // MARK: Number Protocol Tests

  func test_bitPattern() {

    XCTFail("test not implemented")
  }

  func test_init_bitPattern() {

    XCTFail("test not implemented")
  }

  func test_init_from_string_throws() {

    XCTFail("test not implemented")
  }

  func test_init_toString_witFormat_binary() {

    XCTFail("test not implemented")
  }

  func test_init_toString_witFormat_hexadecimal() {

    XCTFail("test not implemented")
  }

  func test_init_toString_witFormat_decimal() {

    XCTFail("test not implemented")
  }

  func test_init_toString_witFormat_scientific() {

    XCTFail("test not implemented")
  }

  func test_init_toString_witFormat_engineeringExponent() {

    XCTFail("test not implemented")
  }

  func test_init_toString_witFormat_engineeringPrefix() {

    XCTFail("test not implemented")
  }

  func test_init_toString_witFormat_engineeringBinaryPrefix() {

    XCTFail("test not implemented")
  }

  func test_hasExponent() {

    XCTFail("test not implemented")
  }

  func test_hasFraction() {

    XCTFail("test not implemented")
  }

  func test_isSigned() {

    XCTFail("test not implemented")
  }

  func test_one() {

    XCTFail("test not implemented")
  }

  func test_precision() {

    XCTFail("test not implemented")
  }

  func test_radix() {

    XCTFail("test not implemented")
  }

  func test_zero() {

    XCTFail("test not implemented")
  }
}
