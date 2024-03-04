import Foundation
import XCTest

struct Book: Decodable {
    let abbrev: String
    let chapters: [[String]]
    let name: String
}

final class JsonParseTest: XCTestCase {

    func testConvertJsonToModel() throws {}
}
