//  RealMP/FloatMP+NumberMultiplicative.swift
//
//  Created by Jason William Staiert on 1/5/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

extension FloatMP: NumberMultiplicative {

  public static func *(lhs: FloatMP, rhs: FloatMP) -> FloatMP {

    let rop = FloatMP()

    mpfr_mul(&rop._mpfr, &lhs._mpfr, &rhs._mpfr, Self._roundingMode)

    return rop
  }

  public static func *=(lhs: inout FloatMP, rhs: FloatMP) {

    mpfr_mul_assign(&lhs._mpfr, &rhs._mpfr, Self._roundingMode)
  }

  public static func /(lhs: FloatMP, rhs: FloatMP) -> FloatMP {

    let rop = FloatMP()

    mpfr_div(&rop._mpfr, &lhs._mpfr, &rhs._mpfr, Self._roundingMode)

    return rop
  }

  public static func /=(lhs: inout FloatMP, rhs: FloatMP) {

    mpfr_div_assign(&lhs._mpfr, &rhs._mpfr, Self._roundingMode)
  }
}
