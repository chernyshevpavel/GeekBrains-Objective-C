//
//  main.m
//  loops_arrays_structs_enums
//
//  Created by Павел Чернышев on 25.01.2021.
//
/**
 1. Создать массив строк и вывести его в консоль используя цикл.

 2. Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния;

 3. *Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gender”(NS_Enum). Создать несколько экземпляров структуры и вывести их в консоль.
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

typedef NS_ENUM(NSInteger, Actions) {
    SUM  = '+',
    MULT = '*',
    DIFF = '-',
    DIV  = '/'
};

typedef NS_ENUM(NSInteger, Gender) {
    MALE,
    FEMALE
};

struct Human {
    NSString *name;
    NSNumber *age;
    Gender gender;
};

typedef struct Human Human;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray <NSString *> *stringList = @[@"first", @"second", @"third"];
        for (NSString *value in stringList) {
            NSLog(@"%@", value);
        }
        
        Human paul;
        paul.age = @25;
        paul.name = @"Paul";
        paul.gender = MALE;
        
        Human lola;
        lola.age = @24;
        lola.name = @"Lola";
        lola.gender = FEMALE;
        
        NSLog(@"%@, %@, %ld", paul.age, paul.name, (long)paul.gender);
        NSLog(@"%@, %@, %ld", lola.age, lola.name, (long)lola.gender);
        
        int first;
        NSLog(@"Enter first num");
        scanf("%i", &first);
        
        int second;
        char miss;
        NSLog(@"Enter second num");
        scanf("%i", &second);
        scanf("%c", &miss);
        
        char action;
        NSLog(@"Enter an action:");
        scanf("%c", &action);
        float result = 0;
        switch (action) {
            case SUM:
                result = (float)sum(first, second);
                break;
            case DIV:
                result = (float)division(first, second);
                break;
            case MULT:
                result = (float)mult(first, second);
                break;
            case DIFF:
                result = (float)diff(first, second);
                break;
            
            default:
                break;
        }
        NSLog(@"%f", result);
        
    }
    return 0;
}
