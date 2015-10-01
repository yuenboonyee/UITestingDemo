iOS: 9.0
XCode: 7.0

This project demonstrates how to set up automated UI Testing in Xcode.
This method does not use UI Automation, which is a Javascript-based framework.
Instead, it uses the XCTest and Accessibility frameworks to run and validate the tests.

Method:
- Create a new Target. Choose iOS->Test->iOS UI Testing Bundle.
	A new group and XCTestCase sub-class is created with an empty test example method.
- Record the test code in the XCTestCase file using the recorder.
- Run the test.
- That's all.

If you set up an XCode bot, you must make sure your test targets are iOS 9.0 or newer, otherwise the test will fail.

References:
UI Automation- https://developer.apple.com/library/ios/documentation/DeveloperTools/Reference/UIAutomationRef/