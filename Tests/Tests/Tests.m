@import XCTest;

#import "NSDate+HYPConvenience.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testDateForDayMonthYear
{
    NSDate *date = [NSDate hyp_dateForDay:1 month:1 year:2010];
    XCTAssertEqualObjects(@"2010-01-01 00:00:00 +0000", [self localDateDescription:date]);
}

- (void)testTimeForHourMinute
{
    NSDate *date = [NSDate hyp_timeForHour:10 minute:10];
    XCTAssertEqualObjects(@"2000-01-01 10:10:00 +0000", [self localDateDescription:date]);
}

#pragma mark - Helpers

- (NSString *)localDateDescription:(NSDate *)date
{
    NSTimeZone *timezone = [NSTimeZone localTimeZone];
    NSInteger seconds = [timezone secondsFromGMTForDate:date];
    NSDate *localDate = [NSDate dateWithTimeInterval:seconds sinceDate:date];

    return [localDate description];
}

@end
