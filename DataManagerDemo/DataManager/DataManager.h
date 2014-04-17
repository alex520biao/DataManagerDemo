//
//  DataManager.h
//
//  Created by alex on 11-3-23.
//  Copyright 2011. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBManager.h"
#import "Plist+Add.h"
#import "JSONLocal+Add.h"
@interface DataManager : NSObject {
    DBManager *_dbManager;   //数据库管理器
    Plist *_plist;           //本地Plist管理器
    JSONLocal *_jsonLocal;   //本地JSON管理器
}
+(DataManager*)sharedDataManager;
@property (nonatomic, strong) DBManager *dbManager;
@property (nonatomic, strong) Plist *plist;
@property (nonatomic, strong) JSONLocal *jsonLocal;


//直接从数据库获取Feature表中的数据
-(void)queryFeatureList;
@end
