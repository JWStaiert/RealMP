//  RealMP/Decimal32#Arithmetic.swift
//
//  Created by Jason William Staiert on 2/28/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import LibDFP
import Real

extension Decimal32
: NumberΞArithmetic {

  // MARK: Addition operators.

  /// Returns a.
  public static prefix func +(_ a: Decimal32) -> Decimal32 {

    a
  }

  /// Computes the sum of two multi-precision decimal floats.
  public static func +(_ a: Decimal32, _ b: Decimal32) -> Decimal32 {

    fatalError("not implemented")
  }

  /// Assigns 'a+b' to 'a'.
  public static func +=(_ a: inout Decimal32, _ b: Decimal32) {

    a = a + b
  }

  // MARK: Subtraction operators.

  /// Computes the negation of the given multi-precision decimal float.
  public static prefix func -(_ a: Decimal32) -> Decimal32 {

    fatalError("not implemented")
  }

  /// Computes the difference of two multi-precision decimal float.
  public static func -(_ a: Decimal32, _ b: Decimal32) -> Decimal32 {

    fatalError("not implemented")
  }

  /// Assigns 'a-b' to a.
  public static func -=(_ a: inout Decimal32, _ b: Decimal32) {

    a = a - b
  }

  // MARK: Multiplication operators.

  /// Computes the product of two multi-precision decimal float.
  public static func *(_ a: Decimal32, _ b: Decimal32) -> Decimal32 {

    fatalError("not implemented")
  }

  /// Assigns 'a*b' to a.
  public static func *=(_ a: inout Decimal32, _ b: Decimal32) {

    a = a * b
  }

  // MARK: Division operators.

  /// Computes the quotient of two multi-precision decimal float.
  public static func /(_ a: Decimal32, _ b: Decimal32) -> Decimal32 {

    fatalError("not implemented")
  }

  /// Assigns 'a/b' to a.
  public static func /=(_ a: inout Decimal32, _ b: Decimal32) {

    a = a / b
  }

  /// Fused-multiply-add of three multiple-precision decimal floats.
  public static func fma(
    _ a: inout Decimal32,
    _ b: inout Decimal32,
    _ c: inout Decimal32
  ) -> Decimal32 {

    fatalError("not implemented")
  }
}
