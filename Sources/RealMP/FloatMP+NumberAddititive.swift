//  RealMP/FloatMP+NumberAdditive.swift
//
//  Created by Jason William Staiert on 1/5/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

extension FloatMP: NumberAdditive {

  public static let zero: FloatMP = FloatMP(.toZero)

  public static prefix func +(rhs: FloatMP) -> FloatMP {

    rhs
  }

  public static func +(lhs: FloatMP, rhs: FloatMP) -> FloatMP {

    let rop = FloatMP()

    mpfr_add(&rop._mpfr, &lhs._mpfr, &rhs._mpfr, Self._roundingMode)

    return rop
  }

  public static func +=(lhs: inout FloatMP, rhs: FloatMP) {

    mpfr_add_assign(&lhs._mpfr, &rhs._mpfr, Self._roundingMode)
  }

  public static prefix func -(rhs: FloatMP) -> FloatMP {

    mpfr_negate(&rhs._mpfr, Self._roundingMode)
    
    return rhs
  }

  public static func -(lhs: FloatMP, rhs: FloatMP) -> FloatMP {

    let rop = FloatMP()

    mpfr_sub(&rop._mpfr, &lhs._mpfr, &rhs._mpfr, Self._roundingMode)

    return rop
  }

  public static func -=(lhs: inout FloatMP, rhs: FloatMP) {

    mpfr_sub_assign(&lhs._mpfr, &rhs._mpfr, Self._roundingMode)
  }
}
