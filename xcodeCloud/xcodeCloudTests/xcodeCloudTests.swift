//
//  xcodeCloudTests.swift
//  xcodeCloudTests
//
//  Created by Philipp Saminger on 07.09.23.
//

import XCTest
@testable import NCAXcodeCloudDemo

class CalculatorTests: XCTestCase {

    var calculator: Calculator!

    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }

    override func tearDown() {
        calculator = nil
        super.tearDown()
    }

    func testAddition() {
        XCTAssertEqual(calculator.add(2, 3), 5, "Addition is incorrect")
        XCTAssertEqual(calculator.add(-2, 3), 1, "Addition with negative numbers is incorrect")
    }

    func testSubtraction() {
        XCTAssertEqual(calculator.subtract(5, 3), 2, "Subtraction is incorrect")
        XCTAssertEqual(calculator.subtract(3, 5), -2, "Subtraction with negative result is incorrect")
    }

    func testMultiplication() {
        XCTAssertEqual(calculator.multiply(2, 3), 6, "Multiplication is incorrect")
        XCTAssertEqual(calculator.multiply(0, 5), 0, "Multiplication by zero is incorrect")
    }

    func testDivision() {
        XCTAssertEqual(calculator.divide(6, 3), 2, "Division is incorrect")
        XCTAssertEqual(calculator.divide(5, 2), 2, "Division with remainder is incorrect")
        
        // Test division by zero
        XCTAssertNil(calculator.divide(4, 0), "Division by zero should return nil")
    }
}
