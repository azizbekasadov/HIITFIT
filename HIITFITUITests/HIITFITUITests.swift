//
//  HIITFITUITests.swift
//  HIITFITUITests
//
//  Created by Azizbek Asadov on 25/02/23.
//

import XCTest

final class HIITFITUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = true
    }

    override func tearDownWithError() throws {}

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            app.terminate()
        }
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
