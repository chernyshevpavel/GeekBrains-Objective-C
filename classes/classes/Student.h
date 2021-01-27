//
//  Student.h
//  classes
//
//  Created by Павел Чернышев on 26.01.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong, readonly) NSNumber *age;
@property (nonatomic, strong, readonly) NSString *fullName;

- (Student *)initWithName:(NSString *)name
                surname:(NSString *)surname
                 age:(NSNumber *)age;
- (void)setCustomAge:(NSNumber *)age;

@end

NS_ASSUME_NONNULL_END
