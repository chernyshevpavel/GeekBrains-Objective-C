//
//  main.m
//  classes
//
//  Created by Павел Чернышев on 26.01.2021.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *paul = [[Student alloc] initWithName:@"Paul"
                                              surname:@"Black"
                                                  age:@25];
        Student *lola = [[Student alloc] initWithName:@"Lola"
                                              surname:@"Black"
                                                  age:@23];
        [lola setCustomAge:@24];
        NSArray <Student *> *studentList = @[paul, lola];
        for (Student *student in studentList) {
            NSLog(@"%@", student.fullName);
            NSLog(@"%@", student);
        }
    }
    return 0;
}
