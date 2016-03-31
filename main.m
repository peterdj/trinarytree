//
//  main.m
//  trinarytree
//
//  Created by Peter Hale on 3/31/16.
//  Copyright © 2016 Peter Hale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TrinaryTree.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TrinaryTree *tree = [[TrinaryTree alloc] init];
        // 5, 4, 9, 5, 7, 2, 2
        [tree insertNode:5];
        [tree insertNode:4];
        [tree insertNode:9];
        [tree insertNode:5];
        [tree insertNode:7];
        [tree insertNode:2];
        [tree insertNode:2];
        
        [tree deleteNode:9];
    }
    return 0;
}
