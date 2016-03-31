//
//  MainApp.m
//  TestApp
//
//  Created by Peter Hale on 3/31/16.
//  Copyright © 2016 Peter Hale. All rights reserved.
//

#import "MainApp.h"

@implementation MainApp

-(long) stringToLong:(NSString *)s {
    // start at the last number, going right to left, and add it,
    // while multiplying by 10 each time
    int multiplier = 1;
    long res = 0;
    for (NSUInteger i = s.length;i > 0;i--) {
        unichar c = [s characterAtIndex:(i - 1)];
        int ci = (c - 48);
        res = res + (ci * multiplier);
        multiplier = multiplier * 10;
    }
    return res;
}
@end
