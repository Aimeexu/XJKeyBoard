//
//  ViewController.m
//  TestKeyBoard
//
//  Created by 许杰 on 2017/2/9.
//  Copyright © 2017年 novunda. All rights reserved.
//

#import "ViewController.h"
#import <XJKeyBoard/XJKeyBoard.h>

@interface ViewController () <KeyBoardViewDelegate>

@property (nonatomic, strong) KeyBoardView *keyBoard;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _keyBoard = [[KeyBoardView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 216, self.view.bounds.size.width, 216)];
    [self.view addSubview:_keyBoard];
    _keyBoard.delegate = self;
}

- (BOOL)keyBoardView:(KeyBoardView *)keyBoardView shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSLog(@"%@", keyBoardView.string);
    return YES;
}

@end
