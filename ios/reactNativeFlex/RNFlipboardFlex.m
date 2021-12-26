//
//  RNFlipboardFlex.m
//  RNFlipboardFlex
//
//  Created by Francisco Javier Trujillo Mata on 08/03/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNFlipboardFlex.h"
#ifdef DEBUG
#import "FLEXManager.h"
#endif


@implementation RNFlipboardFlex

// To export a module named RNFlipboardFlex
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showExplorer)
{
    #ifdef DEBUG
    dispatch_async(dispatch_get_main_queue(), ^{
        [[FLEXManager sharedManager] showExplorer];
    });
    #endif
}

RCT_EXPORT_METHOD(hideExplorer)
{
    #ifdef DEBUG
    dispatch_async(dispatch_get_main_queue(), ^{
        [[FLEXManager sharedManager] hideExplorer];
    });
    #endif
}

RCT_EXPORT_METHOD(toggleExplorer)
{
    #ifdef DEBUG
    dispatch_async(dispatch_get_main_queue(), ^{
        [[FLEXManager sharedManager] toggleExplorer];
    });
    #endif
}

@end
