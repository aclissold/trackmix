//
//  AppDelegate.m
//  TrackMix
//
//  Created by Andrew Clissold on 6/21/15.
//  Copyright (c) 2015 Andrew Clissold. All rights reserved.
//

#import "AppDelegate.h"

#import "Track.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    Track *aTrack = [[Track alloc] init];
    self.track = aTrack;
    [self updateUserInterface];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)mute:(id)sender {
    self.track.volume = 0.0;
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    self.track.volume = newValue;
    [self updateUserInterface];
}

- (void)updateUserInterface {
    float volume = self.track.volume;
    self.textField.floatValue = volume;
    self.slider.floatValue = volume;
}

@end
