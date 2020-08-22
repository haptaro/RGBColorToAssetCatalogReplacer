import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RGBColorToAssetCatalogReplacerTests.allTests),
    ]
}
#endif
