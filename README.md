TypedArray
==========

concrete subclass of NSArray with Type filtering

Usage
=====

What you can import: you will need to declare an interface and an implementation for each filtering class

    #import "TypedArray.h"

    TYPED_ARRAY_INTERFACE(NSString)
    TYPED_ARRAY_IMPLEMENTATION(NSString)

What you can create: anything like a normal NSArray

    // this will produce an NSStringArray with only @"foo" and @"bar"
    NSStringArray *myArray = [NSStringArray arrayWithObjects:@"foo", @(true), @"bar", @[], nil];
