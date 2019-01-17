import XCTest

extension EjectIntegrationTests {
    static let __allTests = [
        ("testFailsIfNotScript", testFailsIfNotScript),
        ("testFilenameDirectoryClash", testFilenameDirectoryClash),
        ("testForce", testForce),
        ("testRelativePath", testRelativePath),
    ]
}

extension LibraryTests {
    static let __allTests = [
        ("testStrerror", testStrerror),
    ]
}

extension RunIntegrationTests {
    static let __allTests = [
        ("testConventional", testConventional),
        ("testNamingMismatch", testNamingMismatch),
        ("testNSHipsterExample", testNSHipsterExample),
        ("testRelativePath", testRelativePath),
        ("testStandardInputCanBeUsedInScript", testStandardInputCanBeUsedInScript),
        ("testTestableFullySpecifiedURL", testTestableFullySpecifiedURL),
        ("testTestableImport", testTestableImport),
    ]
}

extension UnitTests {
    static let __allTests = [
        ("testCanDoSpecifiedImports", testCanDoSpecifiedImports),
        ("testCanOverrideImportName", testCanOverrideImportName),
        ("testCanProvideFullURL", testCanProvideFullURL),
        ("testCanUseTestable", testCanUseTestable),
        ("testExact", testExact),
        ("testMinimalSpaces", testMinimalSpaces),
        ("testMoreSpaces", testMoreSpaces),
        ("testWigglyArrow", testWigglyArrow),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EjectIntegrationTests.__allTests),
        testCase(LibraryTests.__allTests),
        testCase(RunIntegrationTests.__allTests),
        testCase(UnitTests.__allTests),
    ]
}
#endif