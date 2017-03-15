//
//  main.m
//  Objet-C-Language
//
//  Created by lyleKP on 2017/3/11.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/objc.h>
#import <objc/runtime.h>

#import "MTTStudent.h"

struct gstudent {
    char name[20];
    int age;
    float height;
    
};

typedef struct {
    char name[20];
    int age;
    float height;
    
}Student;

//编写一个函数，用来修改某一个学生的身高
/*接受的参数为:
    struct gstudent *   类型（一个结构体指针）
    int                 类型
 */
void changeStudentHeight (struct gstudent * student,int height) {
    
    //
    student->height = height;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //结构体的初始化
        struct gstudent tom = {"tom liu",25,170};
    
        changeStudentHeight(&tom,180);//tom两个月后长到了180公分
        
        printf("tom现在的身高是%f\n",tom.height);
        
        MTTStudent * Kangkang = [[MTTStudent alloc] init];
        Kangkang->_age = 25;
        
        Student tom2 ={"tom liu",25,170};
        
        
    }
    return 0;
}
