//
//  main.m
//  OC方法的本质
//
//  Created by bel on 2021/6/4.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"

// 1,静态调试和动态调试

// 1调试 person方法调用
// 2，调试 alloc 方法

/*
 (lldb) register read x0
       x0 = 0x0000000100ae5630  (void *)0x0000000100ae5608: Person
 (lldb) register read x1
       x1 = 0x00000001f1b5aa5c
 (lldb) p (SEL)0x00000001f1b5aa5c
 (SEL) $0 = "person"
 -------------------------------
 (lldb) po 0x0000000281240000
 <Person: 0x281240000>

 (lldb) p (SEL)0x00000001f169b6e2
 (SEL) $2 = "init"
 */


/*
 objc_storeStrong: 第二个参数为 nil， 将p变量置为nil
 */
int main(int argc, char * argv[]) {
   
//    Person *p = [Person person];
    
//    void(^block)(void) = ^(){
//        NSLog(@"block");
//    };
//
//    block();
    int a = 10;
    void(^block)(void) = ^(){
        NSLog(@"block--%d", a);
    };
    
    block();
    
    
    return 0;
}
