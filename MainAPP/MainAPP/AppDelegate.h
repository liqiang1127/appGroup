//
//  AppDelegate.h
//  MainAPP
//
//  Created by ADMIN on 2019/4/15.
//  Copyright © 2019年 ADMIN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

