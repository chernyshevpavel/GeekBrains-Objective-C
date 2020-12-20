//
//  main.m
//  Conditional operators and functions
//
//  Created by Павел Чернышев on 20.12.2020.
//

/**
 1. Создание функции, которая будет проверять, входит ли переданная буква в английский алфавит.

 2. Разделение метода calculate (из практической задачи 2) на несколько методов (отдельно сложение, вычитание, умножение и деление).
 */

#import <Foundation/Foundation.h>

void checkCharOnEnglish() {
    NSString * engLetters = @"qwertyuiopasdfghjklzxcvbnm";
    char sympol;
    NSLog(@"Enter a character:");
    scanf("%c", &sympol);
    NSString * stringChar = [NSString stringWithFormat:@"%c" , sympol];
    BOOL isContains = [engLetters containsString:[stringChar lowercaseString]];
    if (isContains) {
        NSLog(@"It is an English character");
    } else {
        NSLog(@"It isn't an English character");
    }
}

int sum(int a, int b) {
    return a + b;
}

int mult(int a, int b) {
    return a * b;
}

int diff(int a, int b) {
    return a - b;
}

float division(float a, float b) {
    return a / b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        checkCharOnEnglish();
    }
    return 0;
}
