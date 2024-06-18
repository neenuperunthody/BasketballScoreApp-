//
//  MatchListViewModelTests.swift
//  Basketball Score AppTests
//
//  Created by Neenu on 17/06/24.
//

import Foundation
import Alamofire
import XCTest
@testable import Basketball_Score_App

class MatchListViewModelTests: XCTestCase {
    
    var viewModel: MatchListViewModel!
    var mockDelegate: MockMatchListDelegate!
    var mockNetworkManager: MockNetworkManager!
    
    override func setUp() {
        super.setUp()
        mockNetworkManager = MockNetworkManager()
        viewModel = MatchListViewModel(networkManager: mockNetworkManager)
        mockDelegate = MockMatchListDelegate()
        viewModel.delegate = mockDelegate
    }
    
    override func tearDown() {
        viewModel = nil
        mockDelegate = nil
        mockNetworkManager = nil
        super.tearDown()
    }
    
    func testFetchMatchListDataSuccess() {
        // Given
        let data = mockData
        
        mockNetworkManager.responseData = data.data(using: .utf8)!
        
        // When
        viewModel.fetchMatchListData()
        
        // Then
        XCTAssertTrue(mockDelegate.didReceiveMatchDetailsCalled, "Delegate didReceiveMatchDetails should be called")
        XCTAssertFalse(mockDelegate.didReceiveErrorCalled, "Delegate didReceiveError should not be called")
        XCTAssertNotNil(viewModel.matchList, "Match list should be set")
    }
    
    func testFetchMatchListDataFailure() {
        // Given
        let mockError = NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Mock error"])
        mockNetworkManager.responseError = mockError
        
        // When
        viewModel.fetchMatchListData()
        
        // Then
        XCTAssertFalse(mockDelegate.didReceiveMatchDetailsCalled, "Delegate didReceiveMatchDetails should not be called")
        XCTAssertTrue(mockDelegate.didReceiveErrorCalled, "Delegate didReceiveError should be called")
        XCTAssertEqual(mockDelegate.receivedError as NSError?, mockError, "Received error should be the mock error")
    }
}

class MockMatchListDelegate: MatchListDelegate {
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

