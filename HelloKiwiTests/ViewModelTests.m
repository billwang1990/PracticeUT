#import "ViewController.h"
#import "ViewModel.h"
#import "Kiwi.h"
#import "Calculator.h"

SPEC_BEGIN(ViewModelSpec)

describe(@"ViewModel", ^{
    context(@"validate calculate summary function", ^{
        it(@"view model should parse string '1' and '3' and pass it to Calculator", ^{
            NSString *num1 = @"1";
            NSString *num2 = @"3";
            Calculator *cal = [Calculator mock];
            [[cal should] receive:@selector(plus:and:) andReturn:@4];
            
            ViewModel *vm = [ViewModel new];
            vm.calculator = cal;
            
            [vm doCalculate:num1 with:num2];
        });
    });
    
    context(@"validate result signal", ^{
        it(@"should send 10 when 5 plus 5", ^{
            NSString *num1 = @"5";
            NSString *num2 = @"5";
            Calculator *cal = [Calculator mock];
            [[cal should] receive:@selector(plus:and:) andReturn:theValue(10)];
            
            ViewModel *vm = [ViewModel new];
            vm.calculator = cal;
            [vm doCalculate:num1 with:num2];
            [[vm observeResult] subscribeNext:^(id x) {
                [[expectFutureValue(x) shouldEventually] equal:@"10"];
            }];
            
        });
    });
});

SPEC_END
