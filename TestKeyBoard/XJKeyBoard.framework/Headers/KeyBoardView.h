//
//  KeyBoardView.h
//  NovnudaCloud
//
//  Created by 许杰 on 2017/1/18.
//  Copyright © 2017年 wtt. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KeyBoardView;

@protocol KeyBoardViewDelegate <NSObject>

- (BOOL)keyBoardView:(KeyBoardView *)keyBoardView shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

@end

@interface KeyBoardView : UIView

@property (nonatomic, assign) id <KeyBoardViewDelegate> delegate;

/**
 字符串
 */
@property (nonatomic, strong) NSMutableString *string;

@end
