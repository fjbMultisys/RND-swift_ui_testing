
import XCTest

class MyUITests: XCTestCase {
  
  var app: XCUIApplication!

  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }

  func testButtonTapChangesLabelText() {
    let button = app.buttons["myButton"]
    let label = app.staticTexts["myLabel"]
    button.tap()
    XCTAssertEqual(label.label, "Button tapped!")
  }

  override func tearDown() {
    app = nil
    super.tearDown()
  }
}


