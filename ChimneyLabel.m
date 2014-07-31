//
//  ChimneyLabel.m
//  SantasChoice
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ChimneyLabel.h"

@implementation ChimneyLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        
        UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapped:)];
        [self addGestureRecognizer:gr];
        self.isNaughty = arc4random() % 2;
    }
    return self;
}



-(IBAction)onTapped:(UIGestureRecognizer *)sender{
    
    NSLog(@"Tapped!");
    if ( self.isNaughty) {
    
        [self.delegate houseContaisNaughtyChildNamed:self.text];
        
    } else {
        [self.delegate houseContaisNiceChildNamed:self.text];
    }


}

@end
