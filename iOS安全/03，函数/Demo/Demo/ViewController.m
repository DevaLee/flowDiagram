//
//  ViewController.m
//  Demo
//
//  Created by bel on 2021/5/31.
//

#import "ViewController.h"

@interface ViewController ()

@end

int funcA(int a, int b);



struct str {
    int a;
    int b;
    int c;
    int d;
    int f;
    int g;
};

struct str getStr(int a, int b, int c, int d, int f, int g){
    struct str  str1;
    str1.a = a;
    str1.b = b;
    str1.c = c;
    str1.d = d;
    str1.f = f;
    str1.g = g;
    return  str1;
}


//int funcB(int a, int b) {
//    int c = 6;
//    return  a + b + c;
//}

//MARK: -------

int funcSum(int a, int b, int c) {
    int d = a + b + c;
    
    return d;
}

int funcB(int a, int b) {
    int c = 6;
    
    int d = funcSum(a, b, c);
    int e = funcSum(a, b, c);
    return  c + d + e;
}



//void func () {
//    int a = 1;
//    int b = 2;
//
//    if (a == b) {
//        printf("a==b\n");
//    }else {
//        printf("error\n");
//    }
//}


void func() {
    asm(
        "mov w0, "
        );
}


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//    int a = funcA(10, 20);
//    printf("%d", a);
    
    
    
    struct str str2 = getStr(1, 2, 3, 4, 5, 6);
}


@end
