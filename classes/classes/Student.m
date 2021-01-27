//
//  Student.m
//  classes
//
//  Created by Павел Чернышев on 26.01.2021.
//

#import "Student.h"

@implementation Student

- (Student *)initWithName:(NSString *)name
                surname:(NSString *)surname
                 age:(NSNumber *)age
{
    _name = name;
    _surname = surname;
    _age = age;
    return self;
}

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

- (void)setCustomAge:(NSNumber *)age
{
    _age = age;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@ %@", self.name, self.surname, self.age];
}
@end
