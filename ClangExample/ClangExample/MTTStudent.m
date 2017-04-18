//
//  MTTStudent.m
//  ClangExample
//
//  Created by lyleKP on 2017/4/18.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import "MTTStudent.h"

@interface MTTStudent ()

@property (nonatomic,copy)NSString *fullName;

@end

@implementation MTTStudent
- (instancetype)initWithName:(NSString*)fullName{
    if(self =[super init]){
        _fullName = fullName;
    }
    return self;
}


- (void)reportName {
    NSLog(@"my name is %@",_fullName);
}


@end
