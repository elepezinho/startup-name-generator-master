//
//  Keyword+CoreDataProperties.m
//  StartupNameGenerator
//
//  Created by Marcelo Moscone on 4/26/17.
//  Copyright © 2017 Agendor. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Keyword+CoreDataProperties.h"

@implementation Keyword (CoreDataProperties)

+ (NSFetchRequest<Keyword *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Keyword"];
}

@dynamic name;
@dynamic type;

@end
