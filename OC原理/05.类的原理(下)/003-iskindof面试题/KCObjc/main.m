//
//  main.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "LGPerson.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BOOL re1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];       //
        BOOL re2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];     //
        BOOL re3 = [(id)[LGPerson class] isKindOfClass:[LGPerson class]];       //
        BOOL re4 = [(id)[LGPerson class] isMemberOfClass:[LGPerson class]];     //
        NSLog(@" re1 :%hhd\n re2 :%hhd\n re3 :%hhd\n re4 :%hhd\n",re1,re2,re3,re4);

        BOOL re5 = [(id)[NSObject alloc] isKindOfClass:[NSObject class]];       //
        BOOL re6 = [(id)[NSObject alloc] isMemberOfClass:[NSObject class]];     //
        BOOL re7 = [(id)[LGPerson alloc] isKindOfClass:[LGPerson class]];       //
        BOOL re8 = [(id)[LGPerson alloc] isMemberOfClass:[LGPerson class]];     //
        NSLog(@" re5 :%hhd\n re6 :%hhd\n re7 :%hhd\n re8 :%hhd\n",re5,re6,re7,re8);
        // 1000 1111
        // 1000 0000
        // 1011 0001
        // 1110 1110
        // 作业: 面试题 1 + 2的分析
        //
    }
    return 0;
}
