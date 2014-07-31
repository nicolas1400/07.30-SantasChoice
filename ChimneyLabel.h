//
//  ChimneyLabel.h
//  SantasChoice
//
//  Created by Nicolas Semenas on 30/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ChimeyLabelDelegate

-(void)houseContaisNaughtyChildNamed:(NSString *)name;
-(void)houseContaisNiceChildNamed:(NSString *)name;


@end


@interface ChimneyLabel : UILabel

@property id<ChimeyLabelDelegate> delegate;
@property BOOL isNaughty;
    


@end
