//
//  AppDelegate.m
//  TrackMix
//
//  Created by Andrew Clissold on 6/21/15.
//  Copyright (c) 2015 Andrew Clissold. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)mute:(id)sender {
    NSLog(@"received a mute: message");
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    NSString *senderName = nil;

    if (sender == self.textField) {
        senderName = @"textField";
    } else {
        senderName = @"slider";
    }
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
}

@end
