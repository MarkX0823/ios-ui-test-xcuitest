//
//  XCUITestRNUITests.swift
//  XCUITestRNUITests
//
//  Created by PChome-9322 on 2019/5/9.
//  Copyright © 2019 Facebook. All rights reserved.
//

import XCTest

class XCUITestRNUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      
      let app = XCUIApplication()
      
      let myText5 = app.textFields["myText5"]
      let myText5Exists = myText5.waitForExistence(timeout: 10)
      XCTAssert(myText5Exists)
      
      myText5.tap()
      myText5.typeText("UI Test")
      
      XCTAssert((myText5.value as! String).elementsEqual("UI Test") )
    }

}
