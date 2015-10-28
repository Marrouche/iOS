//
//  DataParser.h
//  HouseHunter
//
//
//  Copyright (c) 2015 MandMBadgers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBXMLEx.h"
#import "AppDelegate.h"

@interface DataParser : MGParser

+(NSMutableArray*)parseDataFromURLFormatJSON:(NSString*)urlStr;

+(NSMutableArray*)parseCarDataXMLFromURL:(NSString*)urlStr;

+(void)fetchServerData;

@end
