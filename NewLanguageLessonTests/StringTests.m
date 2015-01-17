//
//  StringsTests.m
//  NewLanguageLesson
//
//  Created by Martin Nash on 1/16/15.
//  Copyright (c) 2015 UW PCE. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface StringTests : XCTestCase
@end

@implementation StringTests



#pragma mark - Methods

-(NSString*)yourName
{
    return nil;
}

-(NSString*)stringFromInt:(int)input
{
    return nil;
}

-(NSUInteger)countOfString:(NSString*)input
{
    return 0;
}

-(BOOL)string:(NSString*)whole beginsWith:(NSString*)prefix
{
    return NO;
}

-(BOOL)string:(NSString*)whole endsWith:(NSString*)prefix
{
    return NO;
}

-(BOOL)string:(NSString*)whole containsSubstring:(NSString*)substring
{
    return NO;
}






#pragma mark - Tests

-(void)testYourName
{
    NSString *result = [self yourName];
    XCTAssertNotNil(result);
}

-(void)testStringFromInt
{
    NSString *result = [self stringFromInt:1];
    XCTAssertNotNil(result);
    XCTAssertEqualObjects(result, @"1");
}

-(void)testCountOfString
{
    NSUInteger zeroResult = [self countOfString:@""];
    XCTAssert(zeroResult == 0);
}

-(void)testPrefixChecker
{
    NSString *subject = @"fantastic";

    BOOL beginsWithFan = [self string:subject beginsWith:@"fan"];
    XCTAssertTrue(beginsWithFan);
    
    BOOL beginsWithBoo = [self string:subject beginsWith:@"boo"];
    XCTAssertFalse(beginsWithBoo);
}

-(void)testSuffixChecker
{
    NSString *jennysNumber = @"867-5309";
    
    BOOL beginsWith206 = [self string:jennysNumber beginsWith:@"206"];
    XCTAssertFalse(beginsWith206);
    
    BOOL beginsWith867 = [self string:jennysNumber beginsWith:@"867"];
    XCTAssertTrue(beginsWith867);
}

-(void)testSubstringChecker
{
    NSString *subject = @"This is teh fun times";
    
    BOOL hasMisspelledThe = [self string:subject containsSubstring:@"teh"];
    XCTAssertTrue(hasMisspelledThe);
    
    BOOL containsCorrectThe = [self string:subject containsSubstring:@"the"];
    XCTAssert(containsCorrectThe == NO); // same as XCTassertFalse ;)
}


@end
