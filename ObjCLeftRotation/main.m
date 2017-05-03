//
//  main.m
//  ObjCLeftRotation
//
//  Created by Carlos Vazquez Gomez on 3/23/17.
//  Copyright © 2017 Globant. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
        
    int i, j, size, size_r = 0, rotations;
    int *array, *rotatedArray;
    scanf("%d %d", &size, &rotations);
    
    rotatedArray = malloc(size_r * sizeof(int));
    array = malloc(size * sizeof(int));
    
    for(i = 0; i < size; i++)
        scanf("%d", &array[i]);
    
    for(i = 0; i < rotations; i++) {
        int temporal = array[0];
        
        for(j = 0; j < size - 1; j++) {
            rotatedArray[j] = array[j + 1];
        }
        rotatedArray[size - 1] = temporal;
        array = rotatedArray;
    }
    
    for(i = 0; i < size; i++)
        printf("%d ", rotatedArray[i]);
    
    return 0;
}
