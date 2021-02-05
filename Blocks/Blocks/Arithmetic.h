//
//  Arithmetic.h
//  Blocks
//
//  Created by Павел Чернышев on 05.02.2021.
//
typedef int (^ArithmeticBlock) (int a, int b);

typedef enum ActionType {
    ActionTypeSum,
    ActionTypeSubstraction,
    ActionTypeMultiplication,
    ActionTypeDivision,
    ActionTypeRemainderOfTheDivision
} ActionType ;

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Arithmetic : NSObject
+ (int)beginWithAction:(ActionType)action firstNumber: (int)first secondNumber: (int)second;
@end

NS_ASSUME_NONNULL_END
