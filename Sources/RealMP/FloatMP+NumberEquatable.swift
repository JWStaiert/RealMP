//  RealMP/FloatMP+NumberEquatable.swift
//
//  Created by Jason William Staiert on 1/5/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

extension FloatMP: NumberEquatable {

  public static func ==(lhs: FloatMP, rhs: FloatMP) -> Bool {

    mpfr_equal_p(&lhs._mpfr, &rhs._mpfr) != 0
  }

  public static func !=(lhs: FloatMP, rhs: FloatMP) -> Bool {

    mpfr_equal_p(&lhs._mpfr, &rhs._mpfr) == 0
  }
}
