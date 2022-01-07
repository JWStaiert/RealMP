//  RealMP/FloatMP+NumberPowerFunctions.swift
//
//  Created by Jason William Staiert on 1/6/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

extension FloatMP: NumberPowerFunctions {

  public var root2: FloatMP {

    get {

      let rop = FloatMP()

      mpfr_sqrt(&rop._mpfr, &_mpfr, Self._roundingMode)

      return rop
    }
  }

  public static func multiply(coefficient: FloatMP, byPowerOf10: Int) -> FloatMP {

    let base10 = FloatMP(10)

    let power10 = FloatMP()

    mpfr_pow_si(&power10._mpfr, &base10._mpfr, byPowerOf10, Self._roundingMode)

    let rop = FloatMP()

    mpfr_mul(&rop._mpfr, &coefficient._mpfr, &power10._mpfr, Self._roundingMode)

    return rop
  }
}
