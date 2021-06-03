//
//  main.m
//  Pointer
//
//  Created by bel on 2021/6/3.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


// 指针的自增自减和执行的数据类型的宽度有关
void func() {
    int *a;
    a = (int *)100;
    a++;
    printf("%d", a);
}

void funcA() {
    int **a;
    a = (int **)100;
    a++;
    printf("%d", a);
}

void funcB(){
    int *a;
    a = (int *)100;
    
    int *b;
    b = (int *)200;
    
    int x = a - b;
    
    printf("%d", x);
}


//MARK: --- 汇编
void funcD(){
    int *a;
    int b = 10;
    a = &b;
    
    printf("hello");
}

void funcE(){
    
    // int *a == &arr[0] == arr
    int arr[5] = {1,2,3,4,5};
//    for (int i = 0; i < 5; i++) {
//        printf("%d", *(arr + i));
//    }
    
    int *a = arr;
    for (int i = 0; i < 5; i++) {
        printf("%d", *(a++));
    }
    
    printf("hello");
}

void funcf(){
    
    char *p1;
    char c = *p1; // 报野指针
}

//指针的指针汇编
// 两次寻址
void funcG(){
    
    char ** p1;
    char c = **p1;
    
    char c1 = **(p1 + 2); // 0x10 p1 为指向指针的指针 偏移 0x10
    char c2 = *(*(p1 + 2) + 2); // 0x10 0x2, 先偏移 0x10 ，在偏移 0x2
    
    char c3 = p1[1][2]; // 0x8 0x2
}




int main(int argc, char * argv[]) {
   
    funcE();
    
    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
}
