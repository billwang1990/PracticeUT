#import "ViewController.h"
#import "ViewModel.h"
#import "Kiwi.h"
#import "Calculator.h"

SPEC_BEGIN(ViewModelSpec)

describe(@"ViewModel", ^{
    context(@"validate calculate summary function", ^{
        it(@"view model should parse string '1' and '3' and pass it to Calculator", ^{
            NSString *num1 = @"1";
            NSString *num2 = @"4";
        });
    });
});

SPEC_END
