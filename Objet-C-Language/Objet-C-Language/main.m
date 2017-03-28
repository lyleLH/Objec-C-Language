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
//        struct gstudent tom = {"tom liu",25,170};
//    
//        changeStudentHeight(&tom,180);//tom两个月后长到了180公分
//        
//        printf("tom现在的身高是%f\n",tom.height);
//        
//        MTTStudent * Kangkang = [[MTTStudent alloc] init];
//        Kangkang->_age = 25;
//        
//        Student tom2 ={"tom liu",25,170};
        
//        struct objc_class * class;
        
        
        Class clas ;
        //任何一个OC对象的类 都需要两步来判断这个类是不是元类metaclass
        NSObject *object = [[NSObject alloc] init];
        Class class = [NSObject class];
        MTTStudent * Kangkang = [[MTTStudent alloc] init];
        
       // 如果一个对象是类对象，那么object_getClass 可以得到这个对象的类的isa 指针是指向与其相对应的元类metaclass
        BOOL yup = class_isMetaClass(object_getClass(class));
        //NSObject的实例，那么object_getClass 可以得到这个对象的类是NSObject
        BOOL nope = class_isMetaClass(object_getClass(object));
        //如果一个对象是继承自NSObject的某一个类的实例，那么object_getClass 可以得到这个类
        BOOL what = class_isMetaClass(object_getClass(Kangkang));
      
//        NSMutableArray *arr = [[NSMutableArray alloc] init];
//        
//        [arr addObject:[NSObject class]];
//        [arr addObject:[NSValue class]];
//        [arr addObject:[NSNumber class]];
//        [arr addObject:[NSPredicate class]];
//        [arr addObject:@"not a class object"];
//        
//        for (int i; i<[arr count]; i++) {
//            id obj = [arr objectAtIndex:i];
//            
//            if(class_isMetaClass(object_getClass(obj)))
//            {
//                //do sth
//                NSLog(@"Class: %@", obj);
//            }
//            else
//            {
//                NSLog(@"Instance: %@", obj);
//            }
//        }
//
    
        
        
        
    }
    return 0;
}
