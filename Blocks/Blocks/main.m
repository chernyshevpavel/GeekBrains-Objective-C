//
//  main.m
//  Blocks
//
//  Created by Павел Чернышев on 05.02.2021.
//

#import <Foundation/Foundation.h>
#import "Arithmetic.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int first = 10;
        int second = 2;
        
        int resultSum = [Arithmetic beginWithAction:ActionTypeSum firstNumber:first secondNumber:second];
        int resultSubstraction = [Arithmetic beginWithAction:ActionTypeSubstraction firstNumber:first secondNumber:second];
        int resultMultiplication = [Arithmetic beginWithAction:ActionTypeMultiplication firstNumber:first secondNumber:second];
        int resultDivision = [Arithmetic beginWithAction:ActionTypeDivision firstNumber:first secondNumber:second];
        int resultRemainderOfTheDivision = [Arithmetic beginWithAction:ActionTypeRemainderOfTheDivision firstNumber:first secondNumber:second];
        
        NSLog(@"Result sum - %i", resultSum);
        NSLog(@"Result substraction - %i", resultSubstraction);
        NSLog(@"Result multiplication - %i", resultMultiplication);
        NSLog(@"Result division - %i", resultDivision);
        NSLog(@"Result remainder of the division - %i", resultRemainderOfTheDivision);

    }
    return 0;
}
