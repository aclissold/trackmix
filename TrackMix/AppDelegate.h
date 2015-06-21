//
//  AppDelegate.h
//  TrackMix
//
//  Created by Andrew Clissold on 6/21/15.
//  Copyright (c) 2015 Andrew Clissold. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;

@end

