//
//  MatchDetailsViewModelTest.swift
//  Basketball Score AppTests
//
//  Created by Neenu on 17/06/24.
//

import Foundation
import Alamofire
import XCTest
@testable import Basketball_Score_App

class MatchDetailsViewModelTest: XCTestCase {
    
    var viewModel: MatchDetailsViewModel!
    var mockNetworkManager: MockNetworkManager!
    var mockDelegate: MockMatchViewModelDelegate!
    
    
    override func setUp() {
        super.setUp()
        mockNetworkManager = MockNetworkManager()
        viewModel = MatchDetailsViewModel(networkManager: mockNetworkManager)
        mockDelegate = MockMatchViewModelDelegate()
        viewModel.delegate = mockDelegate
    }
    
    override func tearDown() {
        viewModel = nil
        mockDelegate = nil
        mockNetworkManager = nil
        super.tearDown()
    }
    
    func testFetchMatchDetails_Success() {
        // Given
        let data = matchDataMock
        mockNetworkManager.responseData = data.data(using: .utf8)!
        print("Test: Mock data set")
        
        // When
        viewModel.fetchMatchDetails(matchId: "123")
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            XCTAssertTrue(self.mockDelegate.didReceiveMatchDetailsCalled, "Delegate didReceiveMatchDetails should be called")
            XCTAssertFalse(self.mockDelegate.didReceiveErrorCalled, "Delegate didReceiveError should not be called")
            XCTAssertNotNil(self.viewModel.matchDetails, "Match list should be set")
            
        }
    }
    
        func testFetchMatchDetails_Failure() {
            // Given
            let mockError = NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Mock error"])
            mockNetworkManager.responseError = mockError
            print("Test: Mock error set")
    
            // When
            viewModel.fetchMatchDetails(matchId: "123")
    
            // Then
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                XCTAssertTrue(self.mockDelegate.didReceiveErrorCalled, "Delegate didReceiveMatchDetails should not be called")
                XCTAssertTrue(self.mockDelegate.didReceiveErrorCalled, "Delegate didReceiveError should be called")
                XCTAssertEqual(self.mockDelegate.receivedError as NSError?, mockError, "Received error should be the mock error")
            }
        }

    
    func testConvertTimestampToReadableDate() {
        // Given
        let timestamp: TimeInterval = 1609459200 // January 1, 2021 12:00:00 AM GMT
        let expectedDate = "12:00 AM, Friday, Jan 1, 2021"
        
        // When
        let readableDate = viewModel.convertTimestampToReadableDate(timestamp)
        
        // Then
        XCTAssertEqual(readableDate, expectedDate, "The readable date should be \(expectedDate)")
    }
}

class MockMatchViewModelDelegate: MatchViewModelDelegate {
    var didReceiveMatchDetailsCalled = false
    var didReceiveErrorCalled = false
    var receivedError: Error?
    
    func didReceiveMatchDetails() {
        didReceiveMatchDetailsCalled = true
    }
    
    func didReceiveError(_ error: Error) {
        didReceiveErrorCalled = true
        receivedError = error
    }
}
