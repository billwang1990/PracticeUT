//
//  ViewModel.h
//  HelloKiwi
//
//  Created by mac on 16/10/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Calculator;

@interface ViewModel : NSObject

@property (nonatomic, strong) Calculator *calculator;

- (NSString *)doCalculate: (NSString* )num1 with:(NSString *)num2;

@end
