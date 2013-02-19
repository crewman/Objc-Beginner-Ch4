//
//  main.m
//  Objc-Chapter4
//  Calculator Class - this is designed to be a simple calculator object, as well as 
//  dabble with data types.
//
//  Created by Leif Petersen on 13-02-18.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


//  @interface section for Calculator object:

@interface Calculator : NSObject

//  accumulator methods

-(void)     setAccumulator: (double) value;
-(void)     clear;
-(double)   accumulator;

//  arithmetic methods

-(void) add:        (double) value;
-(void) subtract:   (double) value;
-(void) multiply:   (double) value;
-(void) divide:     (double) value;

@end

//  @implementation section

@implementation Calculator
{
    double accumulator;
}

//  the setters...
-(void) setAccumulator:(double)value
{
    accumulator = value;
}
-(void) clear
{
    accumulator = 0;
}
//  the getters...
-(double) accumulator
{
    return accumulator;
}
//  Writing these methods in order of declaration - even though I am pretty sure these are setters...

-(void) add:(double)value
{
    accumulator += value; // tinkering with this syntax, this is equal to: accumulator = accumulator + value
}
-(void) subtract:(double)value
{
    accumulator -= value; // accumulator = accumulator - value;
}
-(void) multiply:(double)value
{
    accumulator *= value; // accumulator = accumulator * (value);
}
-(void) divide:(double)value
{
    accumulator /= value; // accumulator = accumulator / (value);
}


@end

// Program follows - man it'd be swell when I can get to inputs instead of hardcoding this crap in. But it's cool
// I ain't bitter (yes I am). 


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Calculator *tiCalc = [[Calculator alloc] init];
        
        [tiCalc setAccumulator: 100.0];
        
        NSLog(@"The first input is set to: %g", [tiCalc accumulator] );
        
        [tiCalc add: 200];
        
        NSLog(@"Add 200: %g", [tiCalc accumulator] );
        
        [tiCalc divide: 15.0];
        
        NSLog(@"Divide by 15: %g", [tiCalc accumulator] );
        
        [tiCalc multiply: 5];
        
        NSLog(@"Multiply by 5: %g", [tiCalc accumulator]);
        
        [tiCalc subtract:50];
        
        NSLog(@"Subtract by 50: %g", [tiCalc accumulator]);
        NSLog(@"The total: %g", [tiCalc accumulator]);
        
    }
    return 0;
}

