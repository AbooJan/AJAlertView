//
//  ViewController.m
//  AJAlertView
//
//  Created by 钟宝健 on 15/10/14.
//  Copyright © 2015年 钟宝健. All rights reserved.
//

#import "ViewController.h"
#import "AJAlertView.h"

@interface ViewController () <AJAlertViewDelegate>
- (IBAction)showAlert1:(id)sender;
- (IBAction)showAlert2:(id)sender;
- (IBAction)showAlert3:(id)sender;
- (IBAction)showAlert4:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/*
 NSAttributedString *confirmTitle = [[NSAttributedString alloc] initWithString:@"确定"];
 NSAttributedString *cancelTitle = [[NSAttributedString alloc] initWithString:@"取消"];
 
 //    AJAlertView *alert1 = [[AJAlertView alloc] init];
 //    [alert1 confing];
 //    alert1.tag = 1001;
 //    alert1.alertType = AlertViewTypeSingleText;
 //    alert1.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!"];
 //    alert1.buttonTitles = @[confirmTitle, cancelTitle];
 //    alert1.delegate = self;
 //    [alert1 show];
 
 //    AJAlertView *alert2 = [[AJAlertView alloc] init];
 //    [alert2 confing];
 //    alert2.tag = 1002;
 //    alert2.alertType = AlertViewTypeSingleTextContainTitle;
 //    alert2.title = [[NSAttributedString alloc] initWithString:@"警告"];
 //    alert2.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!"];
 //    alert2.buttonTitles = @[confirmTitle, cancelTitle];
 //    alert2.titleColor = [UIColor redColor];
 //    alert2.delegate = self;
 //    [alert2 show];
 
 
 //    AJAlertView *alert3 = [[AJAlertView alloc] init];
 //    [alert3 confing];
 //    alert3.tag = 1003;
 //    alert3.alertType = AlertViewTypeTextAndImage;
 //    alert3.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!"];
 //    alert3.logoImage = [UIImage imageNamed:@"ic_cat"];
 //    alert3.buttonTitles = @[confirmTitle, cancelTitle];
 //    alert3.delegate = self;
 //    [alert3 show];
 
 //    AJAlertView *alert4 = [[AJAlertView alloc] init];
 //    [alert4 confing];
 //    alert4.tag = 1004;
 //    alert4.alertType = AlertViewTypeTextAndImageContainTitle;
 //    alert4.title = [[NSAttributedString alloc] initWithString:@"提现警告"];
 //    alert4.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!"];
 //    alert4.logoImage = [UIImage imageNamed:@"ic_cat"];
 //    alert4.buttonTitles = @[confirmTitle, cancelTitle];
 ////    alert4.titleColor = [UIColor redColor];
 //    alert4.delegate = self;
 //    [alert4 show];
 
 
 
 
 NSMutableAttributedString *attrConfirmBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"好咧,返回"];
 [attrConfirmBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:220/255.0 green:60/255.0 blue:0/255.0 alpha:1] range:NSMakeRange(0,[attrConfirmBtnTitle length])];
 
 NSMutableAttributedString *attrCancelBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"退出"];
 [attrCancelBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1] range:NSMakeRange(0,[attrCancelBtnTitle length])];
 
 AJAlertView *alert5 = [[AJAlertView alloc] init];
 [alert5 confing];
 alert5.tag = 1005;
 alert5.alertType = AlertViewTypeTextAndImageContainTitle;
 alert5.title = [[NSAttributedString alloc] initWithString:@"提现警告"];
 alert5.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!"];
 alert5.logoImage = [UIImage imageNamed:@"ic_cat"];
 alert5.buttonTitles = @[attrConfirmBtnTitle, attrCancelBtnTitle];
 alert5.delegate = self;
 [alert5 show];
 */

- (IBAction)showAlert1:(id)sender
{
    NSAttributedString *confirmTitle = [[NSAttributedString alloc] initWithString:@"确定"];
    NSAttributedString *cancelTitle = [[NSAttributedString alloc] initWithString:@"取消"];
    
    AJAlertView *alert1 = [[AJAlertView alloc] init];
    [alert1 confing];
    alert1.tag = 1001;
    alert1.alertType = AlertViewTypeSingleText;
    alert1.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!兼职猫，喵了个咪!"];
    alert1.buttonTitles = @[confirmTitle, cancelTitle];
    alert1.delegate = self;
    [alert1 show];
}

- (IBAction)showAlert2:(id)sender
{
    NSMutableAttributedString *attrConfirmBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"好咧,返回"];
    [attrConfirmBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:220/255.0 green:60/255.0 blue:0/255.0 alpha:1] range:NSMakeRange(0,[attrConfirmBtnTitle length])];
    
    NSMutableAttributedString *attrCancelBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"取消"];
    [attrCancelBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1] range:NSMakeRange(0,[attrCancelBtnTitle length])];
    
    AJAlertView *alert2 = [[AJAlertView alloc] init];
    [alert2 confing];
    alert2.tag = 1002;
    alert2.alertType = AlertViewTypeSingleTextContainTitle;
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
    
    AJAlertView *alert3 = [[AJAlertView alloc] init];
    [alert3 confing];
    alert3.tag = 1003;
    alert3.alertType = AlertViewTypeTextAndImage;
    alert3.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!"];
    alert3.logoImage = [UIImage imageNamed:@"ic_cat"];
    alert3.buttonTitles = @[confirmTitle, cancelTitle];
    alert3.delegate = self;
    [alert3 show];
}

- (IBAction)showAlert4:(id)sender
{
    NSMutableAttributedString *attrConfirmBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"好咧,返回"];
    [attrConfirmBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:220/255.0 green:60/255.0 blue:0/255.0 alpha:1] range:NSMakeRange(0,[attrConfirmBtnTitle length])];
    
    NSMutableAttributedString *attrCancelBtnTitle = [[NSMutableAttributedString alloc] initWithString:@"取消"];
    [attrCancelBtnTitle addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1] range:NSMakeRange(0,[attrCancelBtnTitle length])];
    
    AJAlertView *alert4 = [[AJAlertView alloc] init];
    [alert4 confing];
    alert4.tag = 1004;
    alert4.alertType = AlertViewTypeTextAndImageContainTitle;
    alert4.title = [[NSAttributedString alloc] initWithString:@"提现警告"];
    alert4.alertContent = [[NSAttributedString alloc] initWithString:@"兼职猫，喵了个咪!兼职猫，喵了个咪!"];
    alert4.logoImage = [UIImage imageNamed:@"ic_cat"];
    alert4.buttonTitles = @[attrConfirmBtnTitle, attrCancelBtnTitle];
    alert4.delegate = self;
    [alert4 show];
}


- (void)alertView:(AJAlertView *)alertView buttonClick:(NSInteger)index
{
    NSLog(@"%ld -- %ld", alertView.tag, index);
}
@end
