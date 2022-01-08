//  RealMPTests/FloatMP+Number+Tests.swift
//
//  Created by Jason William Staiert on 1/7/22.
//
//  Copyright © 2022 by Jason William Staiert. All Rights Reserved.

import RealMP

import Real
import RealTestSupport
import XCTest

extension FloatMP: NumberTestExpectations {

  public static let writeResult: String = "1.0000000000000000e+00"

  public static let descriptionResult: String = "1.0000000000000000e+00"
}

final class FloatMP_Number_Tests: Tests_Number<FloatMP> {

}
