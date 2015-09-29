//
//  UITestingDemoUITests.m
//  UITestingDemoUITests
//
//  Created by Serene IT on 29/09/2015.
//  Copyright © 2015 Serene IT. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UITestingDemoUITests : XCTestCase

@end

@implementation UITestingDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

/*!
 @brief  Tests the creation of a new record, and deleting of that record.
 @discussion Most of the code was inserted by the UI recording tool.
 */
-(void)testAddAndRemoveRecord{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *masterNavigationBar = app.navigationBars[@"Master"];
    XCUIElementQuery *tablesQuery = app.tables;
    NSUInteger numberOfRowsAtStart = tablesQuery.cells.count;

    [masterNavigationBar.buttons[@"Add"] tap];
    XCTAssertEqual(tablesQuery.cells.count, numberOfRowsAtStart+1);
    [masterNavigationBar.buttons[@"Edit"] tap];
    
    //The following code was added by the recording tool, but is label dependent and will not match any subsequently created records, rendering the test un-repeatable.
//    [tablesQuery.buttons[@"Delete 2015-09-28 23:38:49 +0000"] tap];

    //We'll use the following element selector instead, which will always tap on the first row's delete button.
    [[tablesQuery.buttons elementBoundByIndex:0] tap];

    [tablesQuery.buttons[@"Delete"] tap];
    XCTAssertEqual(tablesQuery.cells.count, numberOfRowsAtStart);
    [masterNavigationBar.buttons[@"Done"] tap];
    
}
@end
