//
//  ViewController.m
//  delegate_test
//
//  Created by Civet on 2019/7/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"
#import "DrawDelegate.h"

@interface ViewController ()<defDrawDelegate>
@property (nonatomic, strong) DrawDelegate *draw1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _draw1 = [[DrawDelegate alloc] init];
    _draw1.delegate = self;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"delegateClick" forState:UIControlStateNormal];
    btn.frame = CGRectMake(150, 200, 150, 50);
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor grayColor];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)click{
    [_draw1 write];
}

- (void)draw{
    NSLog(@"Hello");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
