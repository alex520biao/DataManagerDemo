//
//  DataManager.m
//  FMDBDemo
//
//  Created by alex on 11-3-23.
//  Copyright 2011. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager
@synthesize dbManager=_dbManager;
@synthesize plist=_plist;
@synthesize jsonLocal=_jsonLocal;

static DataManager* sharedDataManager=nil;
+(DataManager*)sharedDataManager
{
	@synchronized(sharedDataManager) //单多线程访问
	{
		if (!sharedDataManager) //sharedSQL为nil则新建
		{
			sharedDataManager=[[DataManager alloc] init];//创建
		}
	}
	return sharedDataManager;
}

-(void)queryFeatureList{
    


}

@end
