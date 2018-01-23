//
//  VSMPLNewsViewInput.h
//  ViperSample
//
//  Created by dmitry on 23/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "VSMPLNewsFilterConfigurationProtocol.h"

@protocol VSMPLNewsViewInput <VSMPLNewsFilterConfigurationProtocol>

/**
 @author dmitry

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

@end