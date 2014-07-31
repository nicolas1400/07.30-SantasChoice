//
//  ViewController.m
//  SantasChoice
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ViewController.h"
#import "ChimneyLabel.h"
#import "ToyViewController.h"


@interface ViewController () <ChimeyLabelDelegate, ToyViewControllerDegelate>

@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney1;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney2;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney3;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney4;
@property (weak, nonatomic) IBOutlet ChimneyLabel *chimney5;

@end

@implementation ViewController

- (void)viewDidLoad{

    [super viewDidLoad];
    
    self.chimney1.delegate = self;
    self.chimney2.delegate = self;
    self.chimney3.delegate = self;
    self.chimney4.delegate = self;
    self.chimney5.delegate = self;
}


-(void)houseContaisNaughtyChildNamed:(NSString *)name{
    
    NSLog(@"Naughty Child %@", name);
}

-(void)houseContaisNiceChildNamed:(NSString *)name{
    
    NSLog(@"Nice Child %@", name);
    [self performSegueWithIdentifier:@"receiveAToySegue" sender:self];
}



-(IBAction)unwindFromReceiveAToy:(UIStoryboardSegue *)sender{
  
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (void)childAcceptedTrain{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)childDemandedPS4{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ToyViewController * vc = segue.destinationViewController;
    vc.delegate = self;
}

@end
