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
/*
// implementation not required as it's just a wrapper for initWithObjects:count:
- (instancetype)initWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION
{
    self = [super init];
    if (!self)
        return nil;
    
    va_list args;
    
    va_start(args, firstObj);
    NSUInteger count = 0;
    for (id obj = firstObj; obj != nil; obj = va_arg(args, id)) {
        count++;
    }
    va_end(args);
    
    if (count == 0)
    {
        self.array = [[NSArray alloc] initWithObjects:nil count:count];
    }
    else
    {
        id cArray[count];
        
        va_start(args, firstObj);
        NSUInteger i = 0;
        for (id obj = firstObj; obj != nil; obj = va_arg(args, id)) {
            cArray[i++] = obj;
        }
        va_end(args);
        
        self.array = [[NSArray alloc] initWithObjects:cArray count:count];
    }
    
    if (!_array)
        self = nil;
    return self;
}
*/
- (instancetype)initWithArray:(NSArray *)anArray
{
    self = [super init];
    if (!self)
        return nil;
    self.array = [[NSArray alloc] initWithArray:anArray];
    if (!_array)
        self = nil;
    return self;
}
- (instancetype)initWithArray:(NSArray *)anArray copyItems:(BOOL)flag
{
    self = [super init];
    if (!self)
        return nil;
    self.array = [[NSArray alloc] initWithArray:anArray copyItems:flag];
    if (!_array)
        self = nil;
    return self;
}
- (instancetype)initWithContentsOfFile:(NSString *)aPath
{
    self = [super init];
    if (!self)
        return nil;
    self.array = [[NSArray alloc] initWithContentsOfFile:aPath];
    if (!_array)
        self = nil;
    return self;
}
- (instancetype)initWithContentsOfURL:(NSURL *)aURL
{
    self = [super init];
    if (!self)
        return nil;
    self.array = [[NSArray alloc] initWithContentsOfURL:aURL];
    if (!_array)
        self = nil;
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)decoder;
{
    self = [super init];
    if (!self)
        return nil;
    self.array = [[NSArray alloc] initWithCoder:decoder];
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
