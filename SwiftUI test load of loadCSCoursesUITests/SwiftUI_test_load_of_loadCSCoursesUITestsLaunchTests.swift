//
//  SwiftUI_test_load_of_loadCSCoursesUITestsLaunchTests.swift
//  SwiftUI test load of loadCSCoursesUITests
//
//  Created by Ted Cowan on 5/24/22.
//

import XCTest

class SwiftUI_test_load_of_loadCSCoursesUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
