//
//  ViewController.m
//  SubAPP
//
//  Created by ADMIN on 2019/4/15.
//  Copyright © 2019年 ADMIN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myLable;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [self.myButton addTarget:self action:@selector(subTest) forControlEvents:UIControlEventTouchUpInside];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)subTest{
    NSLog(@"子程序开始");
    NSURL *groupURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.com.imedia.hmedemo"];
    NSURL *fileURL = [groupURL URLByAppendingPathComponent:@"demo.txt"];
    NSString *str = [NSString stringWithContentsOfURL:fileURL encoding:NSUTF8StringEncoding error:nil];
    self.myLable.text = str;
    NSLog(@"str = %@", str);
    NSLog(@"子程序结束");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
