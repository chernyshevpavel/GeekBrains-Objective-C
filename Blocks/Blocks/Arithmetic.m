//
//  Arithmetic.m
//  Blocks
//
//  Created by Павел Чернышев on 05.02.2021.
//

#import "Arithmetic.h"

ArithmeticBlock sum = ^(int a, int b) {
    return a + b;
};

ArithmeticBlock substraction = ^(int a, int b) {
    return a - b;
};

ArithmeticBlock multiplication = ^(int a, int b) {
    return a * b;
};

ArithmeticBlock division = ^(int a, int b) {
    return a / b;
};

ArithmeticBlock remainderOfTheDivision = ^(int a, int b) {
    return a % b;
};

@implementation Arithmetic
+ (int)beginWithAction:(ActionType)action firstNumber:(int)first secondNumber:(int)second {
    
    switch (action) {
        case ActionTypeSum:
            return sum(first, second);
            break;
        case ActionTypeSubstraction:
            return substraction(first, second);
            break;
        case ActionTypeMultiplication:
            return multiplication(first, second);
            break;
        case ActionTypeDivision:
            return division(first, second);
            break;
        case ActionTypeRemainderOfTheDivision:
            return remainderOfTheDivision(first, second);
            break;
    }
    
}
@end
