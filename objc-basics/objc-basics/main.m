//
//  main.m
//  objc-basics
//
//  Created by Павел Чернышев on 18.12.2020.
//
/**
    1. Создать калькулятор на основе практической задачи 3.

    2. Улучшить калькулятор благодаря выводу результата, а также переменных в консоль одной строкой (как в практической задаче 2)

    3. *Создать приложение, которое будет вычислять среднее число из двух переменных без применения специальных функций.
*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int first = 0;
        int second = 0;
        printf("Calculator, enter two numbers.\n");
        printf("First number: ");
        scanf("%d", &first);
        while (second == 0) {
            printf("Second number: ");
            scanf("%d", &second);
        }
        NSLog(@"\n%d + %d = %d\n%d - %d = %d\n%d * %d = %d\n%d / %d = %f",
              first, second, first + second,
              first, second, first - second,
              first, second, first * second,
              first, second, (float)first / (float)second);
        printf("Average, enter three numbers.\n");
        printf("First number: ");
        scanf("%d", &first);
        printf("Second number: ");
        scanf("%d", &second);
        int third = 0;
        printf("Third number: ");
        scanf("%d", &third);
        NSLog(@"\navg: %f", (float)(first + second + third) / 3);
    }
    return 0;
}
