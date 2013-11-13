//
//  TempConverterTests.m
//  TempConverterTests
//
//  Created by user on 11/11/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MyConverter.h" 

@interface TempConverterTests : XCTestCase

@end

@implementation TempConverterTests
{
    MyConverter *converter;
}
- (void)setUp
{
    
    [super setUp];
    
    converter = [[MyConverter alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCelsiusToFahrenheit
{
    converter.temperature = 100.0;
    converter.temperatureScale = C;
    float f;
    f= [converter convert:F];
    XCTAssertTrue(f == 212.0);
}

- (void)testFahrenheitToCelsius
{
    converter.temperatureScale = F;
    converter.temperature = 32.0;
    float c;
    c= [converter convert:C];
    XCTAssertTrue(c == 0);
}
@end
