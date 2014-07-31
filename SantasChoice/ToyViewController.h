//
//  ToyViewController.h
//  SantasChoice
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ToyViewControllerDegelate

-(void) childAcceptedTrain;
-(void) childDemandedPS4;

@end

@interface ToyViewController : UIViewController

@property id <ToyViewControllerDegelate> delegate ;


@end
