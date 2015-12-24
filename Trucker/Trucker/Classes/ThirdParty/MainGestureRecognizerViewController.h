#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, MoveType)
{
    MoveTypeScale,
    moveTypeMove
};

@interface MainGestureRecognizerViewController : UIViewController

@property (nonatomic,assign) BOOL canDragBack;

@property (nonatomic,assign) MoveType moveType;

- (void)addViewController2Main:(UIViewController *)viewController;

+ (MainGestureRecognizerViewController *)getMainGRViewCtrl;

@end
