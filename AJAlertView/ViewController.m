//
//  ViewController.m
//  AJAlertView
//
//  Created by 钟宝健 on 15/10/14.
//  Copyright © 2015年 钟宝健. All rights reserved.
//

#import "ViewController.h"
#import "AJAlertView.h"
#import "AJPopupView.h"

@interface ViewController () <AJAlertViewDelegate>
- (IBAction)showAlert1:(id)sender;
- (IBAction)showAlert2:(id)sender;
- (IBAction)showAlert3:(id)sender;
- (IBAction)showAlert4:(id)sender;

- (IBAction)showBaseAlert:(id)sender;
- (IBAction)defaultStyleBtnClick:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showAlert1:(id)sender
{
    NSAttributedString *confirmTitle = [[NSAttributedString alloc] initWithString:@"确定"];
    NSAttributedString *cancelTitle = [[NSAttributedString alloc] initWithString:@"取消"];
    
    AJAlertView *alert1 = [[AJAlertView alloc] initWithAlertType:AlertViewTypeSingleText];
    alert1.tag = 1001;
    alert1.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!"];
    alert1.buttonTitles = @[confirmTitle, cancelTitle];
    alert1.delegate = self;
    [alert1 show];
    
    // block形式的回调
    alert1.callBack = ^(NSInteger index){
        NSLog(@"回调：%ld", index);
    };
}

- (IBAction)showAlert2:(id)sender
{
    NSMutableAttributedString *attrConfirmBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"好咧,返回"];
    [attrConfirmBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:220/255.0 green:60/255.0 blue:0/255.0 alpha:1] range:NSMakeRange(0,[attrConfirmBtnTitle length])];
    
    NSMutableAttributedString *attrCancelBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"取消"];
    [attrCancelBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1] range:NSMakeRange(0,[attrCancelBtnTitle length])];
    
    AJAlertView *alert2 = [[AJAlertView alloc] initWithAlertType:AlertViewTypeSingleTextContainTitle];
    alert2.tag = 1002;
    alert2.title = [[NSAttributedString alloc] initWithString:@"警告"];
    alert2.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!"];
    alert2.buttonTitles = @[attrConfirmBtnTitle, attrCancelBtnTitle];
    alert2.titleColor = [UIColor redColor];
    alert2.delegate = self;
    [alert2 show];
}

- (IBAction)showAlert3:(id)sender
{
    NSAttributedString *confirmTitle = [[NSAttributedString alloc] initWithString:@"确定"];
    NSAttributedString *cancelTitle = [[NSAttributedString alloc] initWithString:@"取消"];
    
    AJAlertView *alert3 = [[AJAlertView alloc] initWithAlertType:AlertViewTypeTextAndImage];
    alert3.tag = 1003;
    alert3.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!"];
    alert3.logoImage = [UIImage imageNamed:@"ic_cat"];
    alert3.buttonTitles = @[confirmTitle, cancelTitle];
    alert3.delegate = self;
    alert3.animationDirection = AnimationDirectionDown;
    [alert3 show];
}

- (IBAction)showAlert4:(id)sender
{
    NSMutableAttributedString *attrConfirmBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"好咧,返回"];
    [attrConfirmBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:220/255.0 green:60/255.0 blue:0/255.0 alpha:1] range:NSMakeRange(0,[attrConfirmBtnTitle length])];
    
    NSMutableAttributedString *attrCancelBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"取消"];
    [attrCancelBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1] range:NSMakeRange(0,[attrCancelBtnTitle length])];
    
    AJAlertView *alert4 = [[AJAlertView alloc] initWithAlertType:AlertViewTypeTextAndImageContainTitle];
    alert4.tag = 1004;
    alert4.title = [[NSAttributedString alloc] initWithString:@"提现警告"];
    alert4.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!"];
    alert4.logoImage = [UIImage imageNamed:@"ic_cat"];
    alert4.buttonTitles = @[attrConfirmBtnTitle, attrCancelBtnTitle];
    alert4.delegate = self;
    [alert4 show];
}

- (IBAction)showBaseAlert:(id)sender
{
    AJPopupView *popup = [[AJPopupView alloc] init];
    popup.popupSize = CGSizeMake(300.0, 120.0);
    popup.dismissOnTap = YES;
    popup.animationDirection = AnimationDirectionDown;
    [popup show];
}

- (IBAction)defaultStyleBtnClick:(UIButton *)sender
{
    AJAlertView *exitPageAlertView = [[AJAlertView alloc] initWithAlertType:AlertViewTypeSingleTextContainTitle];
    exitPageAlertView.tag = 1006;
    exitPageAlertView.simpleTitle = @"提示";
    exitPageAlertView.simpleButtonTitles = @[@"确定", @"取消"];
    exitPageAlertView.simgpleAlertContent = @"你编辑的信息还未发布，是否确认退出该页面?";
    exitPageAlertView.delegate = self;
    
    [exitPageAlertView show];
}


- (void)alertView:(AJAlertView *)alertView buttonClick:(NSInteger)index
{
    NSLog(@"%ld -- %ld", alertView.tag, index);
}
@end
