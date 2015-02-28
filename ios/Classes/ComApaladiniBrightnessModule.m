/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
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

-(id)getSystemBrightLevel:(id)args
{
	float brightness = [[UIScreen mainScreen] brightness];
	return NUMFLOAT(brightness);
}

-(id)setSystemBrightLevel:(id)args
{
    float f = [TiUtils floatValue:args];
    float answer = ((int)(f * 100 + .5) / 100.0);
    
    UIScreen *mainScreen = [UIScreen mainScreen];
    float oldBrightness = mainScreen.brightness;
    mainScreen.brightness = answer;
    
    return NUMFLOAT(oldBrightness);
}

@end
