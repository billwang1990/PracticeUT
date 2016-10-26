//
//  ViewModel.m
//  HelloKiwi
//
//  Created by mac on 16/10/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewModel.h"
#import "ViewController.h"
#import "Calculator.h"

@interface ViewModel()
@property (nonatomic, strong) NSString *resultValue;
@end

@implementation ViewModel


- (RACSignal*) observeResult {
    return RACObserve(self, self.resultValue);
}

- (NSString *)doCalculate:(NSString *)num1 with:(NSString *)num2 {
    NSInteger ret = [self.calculator plus:[num1 integerValue] and:[num2 integerValue]];
    self.resultValue =  [@(ret) stringValue];
    return self.resultValue;
}

- (Calculator *)calculator {
    if (!_calculator) {
        _calculator = [[Calculator alloc]init];
    }
    return _calculator;
}

@end


