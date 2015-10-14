//
//  AlertView.h
//  PopAnimationDemo
//
//  Created by 钟宝健 on 15/10/14.
//  Copyright © 2015年 钟宝健. All rights reserved.
//

#import "PopupView.h"

typedef NS_ENUM(NSInteger, AlertViewType) {
    AlertViewTypeSingleText,
    AlertViewTypeTextAndImage,
    AlertViewTypeSingleTextContainTitle,
    AlertViewTypeTextAndImageContainTitle,
};

@class AJAlertView;

@protocol AJAlertViewDelegate <NSObject>

- (void)alertView:(AJAlertView *)alertView buttonClick:(NSInteger)index;

@end


@interface AJAlertView : PopupView

@property (nonatomic, assign) id<AJAlertViewDelegate> delegate;
@property (nonatomic, assign) AlertViewType alertType;
@property (nonatomic, strong) NSAttributedString *title;
@property (nonatomic, strong) UIImage *logoImage;
@property (nonatomic, strong) NSAttributedString *alertContent;
@property (nonatomic, strong) NSArray<NSAttributedString *> *buttonTitles;

// 标题颜色
@property (nonatomic, strong) UIColor *titleColor;

@end
