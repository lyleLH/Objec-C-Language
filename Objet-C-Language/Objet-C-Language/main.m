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
typedef struct student {
    char name[20];
    int age;
    float height;
}SZStudent;






int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        struct {
            char name[20];
            int age;
            float height;
        } a,b;
        a.age = 20;
        a.height = 178;
        strcpy(a.name,  "Major Tom");
        
        SZStudent xiaoming ;
        xiaoming.age = 18;
    
        int tom = 180;
        int jack = 170;
        int *patrick ;
        patrick = &tom;
        *patrick = jack;
        
        printf("patrick的内容是%p，*patrick的值是:%d\n",patrick,*patrick);
        /*
         (lldb) p &tom
         (int *) $2 = 0x00007fff5fbff6f4
         (lldb) p patrick
         (int *) $3 = 0x00007fff5fbff6f4
         (lldb) p patrick
         (int *) $4 = 0x00007fff5fbff6f4
         (lldb) p *patrick
         (int) $5 = 180
         */
        
        /*
         指针patrick  指向 0x00007fff5fbff6f4
         *patrick 指向 0x00007fff5fbff6f4的别名 “tom”
         */
    }
    return 0;
}
