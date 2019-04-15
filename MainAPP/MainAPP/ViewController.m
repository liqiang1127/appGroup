//
//  ViewController.m
//  MainAPP
//
//  Created by ADMIN on 2019/4/15.
//  Copyright © 2019年 ADMIN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [self.myButton addTarget:self action:@selector(mainTest) forControlEvents:UIControlEventTouchUpInside ];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)mainTest{
    NSLog(@"主程序开始");
    NSURL *groupURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.com.imedia.hmedemo"];
    NSURL *fileURL = [groupURL URLByAppendingPathComponent:@"demo.txt"];
    NSString *content = self.myLabel.text;
    if([content writeToURL:fileURL atomically:YES encoding:NSUTF8StringEncoding error:nil]){
        NSLog(@"写入文件成功,写入内容为%@",content);
    }else{
        NSLog(@"写入失败");
    }
    NSLog(@"主程序结束");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
