//
//  VSMPLchild1ModuleInput.h
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>
#import "VSMPLNewsFilterDelegate.h"

@protocol VSMPLNewsTableModuleInput <RamblerViperModuleInput, VSMPLNewsFilterDelegate>

/**
 @author dmitry

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

- (void) setEditing:(BOOL)editing;

@end
