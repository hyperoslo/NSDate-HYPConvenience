@import Foundation;

@interface NSDate (HYPDate)

+ (NSDate *)hyp_dateForDay:(NSInteger)day month:(NSInteger)month year:(NSInteger)year;

+ (NSDate *)hyp_timeForHour:(NSInteger)hour minute:(NSInteger)minute;

@end
