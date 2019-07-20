//
//  DrawDelegate.m
//  delegate_test
//
//  Created by Civet on 2019/7/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "DrawDelegate.h"

@implementation DrawDelegate

- (void) write{
    if ([_delegate respondsToSelector:@selector(draw)]) {
        [_delegate draw];
        NSLog(@"drawDelegate Ok");
    }
}

@end
