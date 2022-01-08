//  RealMP/FloatMP+NumberLiteral.swift
//
//  Created by Jason William Staiert on 1/6/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

extension FloatMP: NumberLiteral {

  public convenience init(_ value: Double) {

    self.init()

    mpfr_set_d(&_mpfr, value, Self._roundingMode)
  }

  public typealias FloatLiteralType = Double

  public convenience init(floatLiteral value: FloatLiteralType) {

    self.init()

    #warning("TODO: Should return value be evaluated?")
    mpfr_set_d(&_mpfr, value, Self._roundingMode)
  }

  public typealias IntegerLiteralType = Int

  public convenience init(integerLiteral value: IntegerLiteralType) {

    self.init()

    #warning("TODO: Should return value be evaluated?")
    mpfr_set_si(&_mpfr, value, Self._roundingMode)
  }
}
