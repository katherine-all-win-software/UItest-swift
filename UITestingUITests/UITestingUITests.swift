//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by User-K02 on 8/11/22.
//

import XCTest
@testable import UITesting

class UITestingUITests: XCTestCase {

    func testAddNoiseMaker(){
    
        let app = XCUIApplication()
        app.launch()
        
        let newNameBtn = app.navigationBars["Noise Makers"].buttons["Add"]
        let nameField = app.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews.textFields["Shaggy"]
        let addBtn = app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"]
        let addedCell = app.tables.staticTexts["Sergio"]
        
        newNameBtn.tap()
        nameField.tap()
        nameField.typeText("Sergio")
        XCTAssertFalse(addedCell.exists)
        addBtn.tap()
        
        
        //XCTAssertFalse(addedCell.exists)
    }
    
    func testDeleteNoiseMaker() {
        let app = XCUIApplication()
        app.launch()
        
        let newNameBtn = app.navigationBars["Noise Makers"].buttons["Add"]
        let nameField = app.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews.textFields["Shaggy"]
        let addBtn = app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"]
        let addedCell = app.tables.staticTexts["Sergio"]
        let deleteBtn = app.buttons["Delete"]
        //let tablesQuery = app.tables
        
        newNameBtn.tap()
        nameField.tap()
        nameField.typeText("Sergio")
        addBtn.tap()
        
        addedCell.swipeLeft()
        deleteBtn.tap()
        XCTAssertFalse(addedCell.exists)
        
        
        
        
    }
}
