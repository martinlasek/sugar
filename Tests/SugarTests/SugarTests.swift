import XCTest
@testable import Sugar

final class SugarTests: XCTestCase {

  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct
    // results.

    // XCTAssertEqual(Sugar().text, "Hello, World!")
  }

  // MARK: UIKit required tests

  func testTableView() {
    let _ = TableView()
  }

  func testPaddingLabel() {
    let _ = PaddingLabel(padding: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
  }

  func testViewAnchor() {
    let viewOne = UIView()
    let viewTwo = UIView()
    viewOne.addSubview(viewTwo)
    viewTwo.anchor(
      top: viewOne.topAnchor,
      leading: viewOne.leadingAnchor,
      bottom: viewOne.bottomAnchor,
      trailing: viewOne.trailingAnchor,
      centerY: viewOne.centerYAnchor,
      centerX: viewOne.centerXAnchor,
      padding: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1),
      size: CGSize(width: 1, height: 1)
    )
  }

  // MARK: All Tests

  static var allTests: [(String, (SugarTests) -> () -> ())] {
    // Cross Platform
    var testList = [
      ("testExample", testExample)
    ]

    // iOS Only
    #if canImport(UIKit)
    testList.append(contentsOf: [
      ("testTableView", testTableView),
      ("testPaddingLabel", testPaddingLabel),
      ("testViewAnchor", testViewAnchor)
    ])
    #endif

    return testList
  }
}
