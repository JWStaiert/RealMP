//  RealMP/FloatMP.swift
//
//  Created by Jason William Staiert on 1/3/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import Real
import GnuMPFR

public final class FloatMP: Number {

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

  internal var _mpfr = mpfr_t()

  public init() {

    mpfr_init(&_mpfr)
  }

  public convenience init(_ special: SpecialValue, sign: Sign = .plus) {

    self.init()

    switch special {

      case .nan:      mpfr_set_nan(&_mpfr)
      case .infinity: mpfr_set_inf(&_mpfr, (sign == .plus) ? 1 : -1 )
      case .zero:     mpfr_set_zero(&_mpfr, (sign == .plus) ? 1 : -1 )
    }
  }

  public convenience init?(_ value: String) {

    self.init()

    if mpfr_set_str(&_mpfr, value, 10, Self._roundingMode) != 0 {

      return nil
    }
  }

  deinit {

    mpfr_clear(&_mpfr)
  }

  /*

  public static var defaultPrecision: Int32 {

    get { Int32(mpfr_get_default_prec()) }

    set { mpfr_set_default_prec(mpfr_prec_t(newValue)) }
  }

  public static var precisionMaximum: Int { get { get_MPFR_PREC_MAX() } }

  public static var precisionMinimum: Int { get { get_MPFR_PREC_MIN() } }

  internal let _mpfr = UnsafeMutablePointer<__mpfr_struct>(nil)

  public var precision: Int32 { get { Int32(mpfr_get_prec(_mpfr)) } }

  public init() {

    mpfr_init(_mpfr)
  }

  public init(withPrecision precision: Int32) {

    precondition(Self.precisionMinimum <= precision)
    precondition(precision <= Self.precisionMaximum)

    mpfr_init2(_mpfr, mpfr_prec_t(precision))
  }

  public convenience init(_ value: FloatMP) {

    self.init()

    mpfr_set(_mpfr, value._mpfr, Self._roundingMode)
  }

  public convenience init(withPrecision precision: Int32, _ value: FloatMP) {

    self.init(withPrecision: precision)

    mpfr_set(_mpfr, value._mpfr, Self._roundingMode)
  }

  public convenience init(_ value: UInt) {

    self.init()

    mpfr_set_ui(_mpfr, value, Self._roundingMode)
  }

  public convenience init(withPrecision precision: Int32, _ value: UInt) {

    self.init(withPrecision: precision)

    mpfr_set_ui(_mpfr, value, Self._roundingMode)
  }

  public convenience init(_ value: Int) {

    self.init()

    mpfr_set_si(_mpfr, value, Self._roundingMode)
  }

  public convenience init(withPrecision precision: Int32, _ value: Int) {

    self.init(withPrecision: precision)

    mpfr_set_si(_mpfr, value, Self._roundingMode)
  }

  public convenience init(_ value: Float) {

    self.init()

    mpfr_set_flt(_mpfr, value, Self._roundingMode)
  }

  public convenience init(withPrecision precision: Int32, _ value: Float) {

    self.init(withPrecision: precision)

    mpfr_set_flt(_mpfr, value, Self._roundingMode)
  }

  public convenience init(_ value: Double) {

    self.init()

    mpfr_set_d(_mpfr, value, Self._roundingMode)
  }

  public convenience init(withPrecision precision: Int32, _ value: Double) {

    self.init(withPrecision: precision)

    mpfr_set_d(_mpfr, value, Self._roundingMode)
  }

  convenience init(_ value: String) {

    self.init()

    mpfr_set_str(_mpfr, value, 10, Self._roundingMode)
  }

  convenience init(withPrecision precision: Int32, _ value: String) {

    self.init(withPrecision: precision)

    mpfr_set_str(_mpfr, value, 10, Self._roundingMode)
  }

  convenience init(_ value: IntegerMP) {

    self.init()

    mpfr_set_z(_mpfr, value._mpz, Self._roundingMode)
  }

  convenience init(withPrecision precision: Int32, _ value: IntegerMP) {

    self.init(withPrecision: precision)

    mpfr_set_z(_mpfr, value._mpz, Self._roundingMode)
  }

  convenience init(_ value: RationalMP) {

    self.init()

    mpfr_set_q(_mpfr, value._mpq, Self._roundingMode)
  }

  convenience init(withPrecision precision: Int32, _ value: RationalMP) {

    self.init(withPrecision: precision)

    mpfr_set_q(_mpfr, value._mpq, Self._roundingMode)
  }

  deinit {

    mpfr_clear(_mpfr)
  }
   */
}

public extension String.StringInterpolation {

  mutating func appendInterpolation(_ value: FloatMP, digits: Int32 = 6, _ point: DecimalPoint = .float) {
    switch point {
      case .float:
        #warning("TODO: Implement float string.")
        appendLiteral("float")
      case.fixed:
        #warning("TODO: Implement fixed string.")
        appendLiteral("fixed")
    }
  }
}
