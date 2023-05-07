/*

sample UI test that taps on a cell in a table view, navigates to another screen, and checks that a label on that screen displays the correct text:
swift

*/


import XCTest

class MyUITests: XCTestCase {
  
  var app: XCUIApplication!

  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }

  func testTableViewSelectionNavigatesToDetailScreen() {
    let table = app.tables["myTable"]
    let cell = table.cells.element(boundBy: 0) // select first cell
    cell.tap()
    
    let detailLabel = app.staticTexts["detailLabel"]
    XCTAssertEqual(detailLabel.label, "Detail screen content")
  }

  override func tearDown() {
    app = nil
    super.tearDown()
  }
}


/*

In this example, we first set up the test by launching the app. Then, we find the table view and select the first cell by index (assuming the table view has at least one cell). We simulate a tap on the cell, which should navigate to a detail screen. Finally, we find a label on the detail screen using its accessibility identifier and use XCTAssertEqual to check that its text is "Detail screen content".

*/
