//
//  MethodTest.h
//  ObjcRuntimeTest
//
//  Created by baidu on 15/12/2.
//  Copyright © 2015年 com.MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MethodTest : NSObject <NSCopying, NSCoding> {
    NSInteger number;
    NSString *id;
}

@property (nonatomic, strong) NSArray * array;
@property (nonatomic, copy) NSString *string;

- (void)method1;
- (void)method2;
+ (void)classMethod1;

@end
