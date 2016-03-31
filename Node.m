//
//  Node.m
//  TestApp
//
//  Created by Peter Hale on 3/31/16.
//  Copyright © 2016 Peter Hale. All rights reserved.
//

#import "Node.h"

@implementation Node

-(id) initWithNumber:(NSUInteger)number {
    [self setValue:number];
    return self;
}

// recursive method that either allocates a node in the
// right spot, or moves down the tree for the next
// available slot
-(void) insert:(NSUInteger)value {
    if ( value < self.value) {
        if ( _leftNode == nil ) {
            _leftNode = [[Node alloc]initWithNumber:value];
        } else {
            [_leftNode insert:value];
        }
    }
    
    if ( value == self.value) {
        if ( _middleNode == nil ) {
            _middleNode = [[Node alloc]initWithNumber:value];
        } else {
            [_middleNode insert:value];
        }
        
    }
    
    if ( value > self.value) {
        if ( _rightNode == nil ) {
            _rightNode = [[Node alloc]initWithNumber:value];
        } else {
            [_rightNode insert:value];
        }
        
    }
}

// find either myself or children.
// what's interesting is that it'll never
// return the child middle node, as it's the
// same value as myself.

// since this is used to delete the node
// it will remove the first node with the number
// that it comes across
-(Node *)findNode:(NSUInteger)number {
    if ( number == self.value ) return self;
    
    if ( number < self.value ) {
        return [_leftNode findNode:number];
    }
    if ( number > self.value ) {
        return [_rightNode findNode:number];
    }
    return nil;
}

-(void) removeMe {
    _leftNode = nil;
    _middleNode = nil;
    _rightNode =  nil;
    _value = 0;
}


@end
