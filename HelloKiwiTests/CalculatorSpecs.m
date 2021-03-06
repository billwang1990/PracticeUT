#import "Kiwi.h"
#import "Calculator.h"

SPEC_BEGIN(CalculatorSPEC)
describe(@"Calculator", ^{
    context(@"validate calculate summary function", ^{
        it(@"1 plus 3 should equal to 4", ^{
            NSInteger a = 1;
            NSInteger b = 3;
            Calculator *cal = [Calculator new];
            [[theValue([cal plus:a and:b]) should] equal:theValue(4)];
        });
    });
});

SPEC_END
