import XCTest
@testable import UIViewAPI

final class UIViewAPITests: XCTestCase {
    #if canImport(UIKit)
    
    func test_shouldReturn_false_for_hiddenViews() {
        // Arrange
        let sut = UIView()
        
        // Act
        sut.isHidden = true
        
        // Assert
        XCTAssertFalse(sut.isVisible)
        XCTAssertTrue(sut.isNotVisible)
    }
    
    func test_shouldReturn_true_for_visibleViews() {
        // Arrange
        let sut = UIView()
        
        // Act
        sut.isHidden = false
        
        // Assert
        XCTAssertTrue(sut.isVisible)
        XCTAssertFalse(sut.isNotVisible)
    }
    
    func test_shouldSetAndGet_isVisible_property() {
        // Arrange
        let sut = UIView()
        sut.isHidden = false
        
        // Act & Assert
        XCTAssertTrue(sut.isVisible)
        
        sut.isVisible = false
        XCTAssertTrue(sut.isHidden)
        XCTAssertFalse(sut.isNotHidden)
        
        XCTAssertFalse(sut.isVisible)
        XCTAssertTrue(sut.isNotVisible)
        
        sut.isVisible = true
        XCTAssertFalse(sut.isHidden)
        XCTAssertTrue(sut.isNotHidden)
        
        XCTAssertTrue(sut.isVisible)
        XCTAssertFalse(sut.isNotVisible)
    }
    
    func test_shouldSetAndGet_isNotVisible_property() {
        // Arrange
        let sut = UIView()
        sut.isHidden = false
        
        // Act & Assert
        XCTAssertTrue(sut.isVisible)
        
        sut.isNotVisible = false
        XCTAssertFalse(sut.isHidden)
        XCTAssertTrue(sut.isVisible)
        XCTAssertFalse(sut.isNotVisible)
        
        sut.isNotVisible = true
        XCTAssertTrue(sut.isHidden)
        XCTAssertFalse(sut.isVisible)
        XCTAssertTrue(sut.isNotVisible)
    }
    
    func test_shouldSetAndGet_isNotHidden_property() {
        // Arrange
        let sut = UIView()
        sut.isHidden = false
        
        // Act & Assert
        XCTAssertTrue(sut.isVisible)
        
        sut.isNotHidden = false
        XCTAssertTrue(sut.isHidden)
        XCTAssertFalse(sut.isVisible)
        XCTAssertTrue(sut.isNotVisible)
        
        sut.isNotHidden = true
        XCTAssertFalse(sut.isHidden)
        XCTAssertTrue(sut.isVisible)
        XCTAssertFalse(sut.isNotVisible)
    }
    
    #endif
}
