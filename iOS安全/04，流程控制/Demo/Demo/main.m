//
//  main.m
//  Demo
//
//  Created by bel on 2021/5/31.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

// 反汇编分析


//int g = 12;
//
//int func (int a, int b) {
//
//    int c = a + g;
//
//    return c;
//}

//MARK： -- if

//int g = 12;
//
//void func (int a, int b) {
//    if (a > b) {
//        g = a;
//    }else {
//        g = b;
//    }
//}

//MARK: -- switch
void funcA(int a) {
    switch (a) {
        case 1:
            printf("1");
            break;
        case 2:
            printf("2");
            break;
        case 3:
            printf("3");
        case 4:
            printf("4");
            break;
        default:
            printf("none");
            break;
    }
}


int main(int argc, char * argv[]) {
    
//    func(1, 2);
    
    int nSum = 0;
    int i = 0;
//    do {
//        nSum = nSum + 1;
//        i++;
//    } while (i < 100);
    
//    while (i < 100) {
//        nSum = nSum + 1;
//        i++;
//    }
    
//    for (int i = 0; i < 100; i++) {
//        nSum = nSum + 1;
//    }
    
    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
}
