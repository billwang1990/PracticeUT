//
//  ViewController.m
//  HelloKiwi
//
//  Created by mac on 16/10/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberOne;
@property (weak, nonatomic) IBOutlet UITextField *numberTwo;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self bindViewModel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)bindViewModel {
    @weakify(self);
    [[self.vm observeResult] subscribeNext:^(id x) {
        @strongify(self);
        self.result.text = x;
    }];
}

- (IBAction)calculate:(id)sender {
    [self.vm doCalculate:self.numberOne.text with:self.numberTwo.text];
}

- (ViewModel *)vm {
    if (!_vm) {
        _vm = [ViewModel new];
    }
    return _vm;
}


@end

