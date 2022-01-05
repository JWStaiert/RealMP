//  RealMP/IntegerMP.swift
//
//  Created by Jason William Staiert on 1/3/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

public class IntegerMP {

  internal let _mpz = UnsafeMutablePointer<__mpz_struct>(nil)

  public init() {

    __gmpz_init(_mpz)
  }

  deinit {

    __gmpz_clear(_mpz)
  }
}
