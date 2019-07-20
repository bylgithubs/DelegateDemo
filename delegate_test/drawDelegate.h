//
//  DrawDelegate.h
//  delegate_test
//
//  Created by Civet on 2019/7/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol defDrawDelegate <NSObject>

- (void)draw;
@end

@interface DrawDelegate : UIView

@property (nonatomic, assign) id <defDrawDelegate>delegate;

- (void)write;

@end
