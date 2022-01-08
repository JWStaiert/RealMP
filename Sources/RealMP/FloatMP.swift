//  RealMP/FloatMP.swift
//
//  Created by Jason William Staiert on 1/3/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

public final class FloatMP: Real {

  // ///////////////////////////////////////////////////////////////////////////
  //
  // Object Members
  //
  // ///////////////////////////////////////////////////////////////////////////

  internal var _mpfr = mpfr_t()

  deinit {

    mpfr_clear(&_mpfr)
  }

  public init() {

    mpfr_init(&_mpfr)
  }

  public convenience init(_ other: FloatMP) {

    self.init()

    mpfr_set(&_mpfr, &other._mpfr, Self._roundingMode)
  }

  public convenience init(_ special: SpecialValueInitializer, sign: Sign = .plus) {

    self.init()

    switch special {

      case .toNaN:      mpfr_set_nan(&_mpfr)
      case .toInfinity: mpfr_set_inf(&_mpfr, (sign == .plus) ? 1 : -1 )
      case .toZero:     mpfr_set_zero(&_mpfr, (sign == .plus) ? 1 : -1 )
    }
  }

  // ///////////////////////////////////////////////////////////////////////////
  //
  // Class Members
  //
  // ///////////////////////////////////////////////////////////////////////////

  public static var roundingMode: RoundingMode = .toNearestEven

  internal static var _roundingMode: mpfr_rnd_t {

    get {

      switch (roundingMode) {

        case .toNearestEven: return MPFR_RNDN
        case .towardMinusInfinity: return MPFR_RNDD
        case .towardPlusInfinity: return MPFR_RNDU
        case .towardZero: return MPFR_RNDZ
        case .awayFromZero: return MPFR_RNDA
      }
    }
  }

  public static var defaultPrecision: Int {

    get { mpfr_get_default_prec() }

    set { mpfr_set_default_prec(mpfr_prec_t(newValue)) }
  }

  // ///////////////////////////////////////////////////////////////////////////
  //
  // Number Protocol Members
  //
  // ///////////////////////////////////////////////////////////////////////////

  public convenience init?<S>(_ value: S) where S : StringProtocol {

    self.init()

    if !mpfr_nsstring_assign(&_mpfr, value.lowercased()) {

      return nil
    }
  }
  
  public var description: String {

    get {

      mpfr_get_reproducible_nsstring(&_mpfr)
    }
  }

  public func write<Target>(to target: inout Target) where Target : TextOutputStream {

    target.write(mpfr_get_reproducible_nsstring(&_mpfr))
  }

  // ///////////////////////////////////////////////////////////////////////////
  //
  // Numeric Protocol
  //
  // ///////////////////////////////////////////////////////////////////////////

  public convenience init?<T>(exactly source: T) where T : BinaryInteger {

    self.init()

    if (T.isSigned) {

      if mpfr_set_si(&_mpfr, Int(source), Self._roundingMode) != 0 {

        return nil
      }
    }
    else {

      if mpfr_set_ui(&_mpfr, UInt(source), Self._roundingMode) != 0 {

        return nil
      }
    }
  }

  public typealias Magnitude = FloatMP

  public var magnitude: FloatMP {

    get {

      let rop = FloatMP()

      mpfr_abs(&rop._mpfr, &self._mpfr, Self._roundingMode)

      return rop
    }
  }
}

extension String.StringInterpolation {

  public mutating func appendInterpolation(_ value: FloatMP, digits: Int = 6, _ point: DecimalPoint = .float) {

    var str: String

    switch point {
      case .float: str = mpfr_get_float_nsstring(&value._mpfr, digits, FloatMP._roundingMode)
      case .fixed: str = mpfr_get_fixed_nsstring(&value._mpfr, digits, FloatMP._roundingMode)
    }

    appendLiteral(str)
  }
}
