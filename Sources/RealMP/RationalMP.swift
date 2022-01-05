//  RealMP/RationalMP.swift
//
//  Created by Jason William Staiert on 1/3/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

public class RationalMP {

  internal let _mpq = UnsafeMutablePointer<__mpq_struct>(nil)

  public init() {

    __gmpq_init(_mpq)
  }

  deinit {

    __gmpq_clear(_mpq)
  }
}
