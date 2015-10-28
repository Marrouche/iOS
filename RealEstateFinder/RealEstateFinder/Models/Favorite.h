//
//  Favorite.h
//  HouseHunter
//
//
//  Copyright (c) 2015 MandMBadgers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Favorite : NSManagedObject

@property (nonatomic, retain) NSNumber * favorite_id;
@property (nonatomic, retain) NSNumber * realestate_id;

@end
