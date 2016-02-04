//
//  MetaTest.m
//  ObjcRuntimeTest
//
//  Created by baidu on 15/11/20.
//  Copyright © 2015年 com.MyCompany. All rights reserved.
//

#import "MetaTest.h"
#import <objc/runtime.h>
#import <objc/message.h>


void TestMetaClass(id self, SEL _cmd) {
    NSLog(@"This object is %p ", self);
    NSLog(@"Class is %@, super class is %@", [self class], [self superclass]);
    
    Class currentClass = [self class];
    for (int i= 0; i<4; i++) {
        NSLog(@"Following the isa pointer %d times gives %p", i, currentClass);
        currentClass = objc_getClass((__bridge void*)currentClass);
    }
    
    NSLog(@"NSObject's class is %p", [NSObject class]);
    NSLog(@"NSObject's meta class is %p", objc_getClass((__bridge void*)[NSObject class]));
}

@implementation MetaTest

-(void)ex_registerClassPair {
    Class newClass = objc_allocateClassPair([NSError class], "TestClass", 0);
    class_addMethod(newClass, @selector(testMetaClass), (IMP)TestMetaClass, "v@:");
    objc_registerClassPair(newClass);
    
    id instance = [[newClass alloc] initWithDomain:@"some domain" code:0 userInfo:nil];
    [instance performSelector:@selector(testMetaClass) ];
}

@end










