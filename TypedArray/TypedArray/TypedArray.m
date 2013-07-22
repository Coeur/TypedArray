//
//  TypedArray.m
//  TypedArray
//
//  Created by Antoine Vigier on 19/07/13.
//  Copyright (c) 2013 Coeur. All rights reserved.
//

#import "TypedArray.h"


@interface TypedArray ()

@property (nonatomic, retain) NSArray *array;

@end


@implementation TypedArray

#pragma mark Init

- (instancetype)init
{
    self = [super init];
    if (!self)
        return nil;
    self.array = [[NSArray alloc] init];
    if (!_array)
        self = nil;
    return self;
}
- (instancetype)initWithObjects:(const id [])objects count:(NSUInteger)count
{
    self = [super init];
    if (!self)
        return nil;
    self.array = [[NSArray alloc] initWithObjects:objects count:count];
    if (!_array)
        self = nil;
    return self;
}

#pragma mark Methods only defined for abstract class

- (NSUInteger)count
{
    return [_array count];
}
- (id)objectAtIndex:(NSUInteger)index
{
    return [_array objectAtIndex:index];
}

/*
#pragma mark Forward Invocations to Array

// implementation not required... I think
- (void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:_array];
}
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    return [NSArray instanceMethodSignatureForSelector:aSelector];
}
*/

#pragma mark -

@end
