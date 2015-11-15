//
//  ViewController.m
//  Category
//
//  Created by kenn on 2015/11/15.
//  Copyright © 2015年 kenn. All rights reserved.
//

#import "ViewController.h"
#import "UIBarButtonItem+Badge.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title=@"我的測試";
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIImage *image = [UIImage imageNamed:@"someImage"];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0,0,image.size.width, image.size.height);
    [button addTarget:self action:@selector(btnLeft_clicked:) forControlEvents:UIControlEventTouchDown];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    
    UIBarButtonItem *navLeftButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = navLeftButton;
    self.navigationItem.leftBarButtonItem.badgeValue = @"99";
    self.navigationItem.leftBarButtonItem.badgeBGColor = [UIColor redColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)btnLeft_clicked:(id)sender
{
    NSLog(@"btnLeft_clicked");
}

-(void)btnRight_clicked:(id)sender
{
    NSLog(@"btnRight_clicked");
}

@end
