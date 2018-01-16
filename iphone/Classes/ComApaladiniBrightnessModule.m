/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2016 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComApaladiniBrightnessModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation ComApaladiniBrightnessModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"0a311e93-3d22-4982-b537-a6803c5e4849";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.apaladini.brightness";
}

#pragma Public APIs

- (id)systemBrightLevel
{
	return NUMFLOAT([[UIScreen mainScreen] brightness]);
}

- (id)setSystemBrightLevel:(id)value
{
    ENSURE_TYPE(value, NSNumber);
    float newBrightness = (([TiUtils floatValue:value] * 100 + .5) / 100.0);
    
    UIScreen *mainScreen = [UIScreen mainScreen];
    float oldBrightness = mainScreen.brightness;
    [mainScreen setBrightness:newBrightness];
    
    return NUMFLOAT(oldBrightness);
}

@end
