//
//  TypedArray.h
//  TypedArray
//
//  Created by Antoine Vigier on 19/07/13.
//  Copyright (c) 2013 Coeur. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TypedArray : NSArray
{
@protected
    NSArray *_array;
}
@end


#define TYPED_ARRAY_INTERFACE(classname) \
@interface classname ## Array : TypedArray\
@end\

#define TYPED_ARRAY_IMPLEMENTATION(classname) \
@implementation classname ## Array\
- (void)setArray:(NSArray *)array\
{\
NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", [classname self]];\
_array = [array filteredArrayUsingPredicate:predicate];\
}\
@end\
