//
//  MethodTest.m
//  ObjcRuntimeTest
//
//  Created by baidu on 15/12/2.
//  Copyright © 2015年 com.MyCompany. All rights reserved.
//

#import "MethodTest.h"

@interface MethodTest () {
    NSInteger _instance1;
    NSString *_instance2;
}

@property (nonatomic, assign) NSUInteger integer;

- (void)method3WithArg1:(NSInteger)arg1 arg2:(NSString *)arg2;

@end


@implementation MethodTest

+ (void)classMethod1 {
    
}
-(void)method1 {
    NSLog(@"call method method1");
}

-(void)method2 {
    
}

-(void)method3WithArg1:(NSInteger)arg1 arg2:(NSString *)arg2 {
    NSLog(@"arg1:%ld, arg2:%@", arg1, arg2);
    
}

@end














