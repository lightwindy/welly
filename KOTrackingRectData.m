//
//  KOTrackingRectData.m
//  Welly
//
//  Created by K.O.ed on 08-10-15.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "KOTrackingRectData.h"


@implementation KOTrackingRectData

+ (KOTrackingRectData *)ipRectData: (NSString *)ipAddr
						   toolTip: (NSString *)toolTip {
	KOTrackingRectData *data = [[self alloc] init];
	data->type = IPADDR;
	data->ipAddr = [ipAddr retain];
	data->toolTip = [toolTip retain];
	return data;
}

+ (KOTrackingRectData *)postEntryRectData: (NSString *)postTitle
									atRow: (int)row {
	KOTrackingRectData *data = [[self alloc] init];
	data->type = POSTENTRY;
	data->postTitle = [postTitle retain];
	data->row = row;
	return data;
}

@end