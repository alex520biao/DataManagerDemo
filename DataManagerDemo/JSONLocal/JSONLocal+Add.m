//
//  Plist+Add.m
//  BRSD
//
//  Created by Alex on 12-11-26.
//
//

#import "JSONLocal+Add.h"
#import "GroupInfo.h"
@implementation JSONLocal (Add)

#pragma mark itemList
+(NSMutableArray*)plistLoadItemList{
    NSMutableArray *itemList=[[NSMutableArray alloc] init];
    NSDictionary *dict=[JSONLocal plistLoadDict:@"groupList"];
    NSArray *list=[[dict objectForKey:@"data"] objectForKey:@"groups"];
    for (int i=0; i<list.count; i++) {
        GroupInfo *obj=[[GroupInfo alloc] initWithDicionary:[list objectAtIndex:i]];
        [itemList addObject:obj];
    }
    return itemList;
}

#pragma mark other


@end
