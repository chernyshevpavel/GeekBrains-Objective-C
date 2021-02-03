//
//  Car.h
//  arc
//
//  Created by Павел Чернышев on 03.02.2021.
//

#import <Foundation/Foundation.h>
#import "Wheel.h"
#import "Engine.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
- (void)configWithEngine:(Engine *)engine andWheels:(NSArray *)wheels;

@property (nonatomic, strong) Engine *engine;
@property (nonatomic, strong) NSArray *wheels;


@end

NS_ASSUME_NONNULL_END
