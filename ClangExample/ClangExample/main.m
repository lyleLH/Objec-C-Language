//
//  main.m
//  ClangExample
//
//  Created by lyleKP on 2017/4/18.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import <objc/runtime.h>
#import <objc/message.h>
#import "MTTStudent.h"

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        MTTStudent * tom = [[MTTStudent alloc] initWithName:@"Tom liu"];
        objc_msgSend(tom,@selector(reportName));
        
        
    }
    return 0;
}
