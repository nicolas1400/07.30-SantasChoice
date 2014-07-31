//
//  ToyViewController.m
//  SantasChoice
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ToyViewController.h"

@interface ToyViewController ()

@end

@implementation ToyViewController

- (IBAction)onAcceptTrain:(id)sender {
    [self.delegate childAcceptedTrain];
}

- (IBAction)onRejectTrain:(id)sender {
    [self.delegate childDemandedPS4];
}
@end
