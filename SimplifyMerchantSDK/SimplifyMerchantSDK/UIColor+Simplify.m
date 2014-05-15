#import "UIColor+Simplify.h"

@implementation UIColor (Simplify)

+(UIColor *)fieldBackgroundColorValid {
    
    static UIColor *validColor = nil;
    
    if (!validColor) {
        validColor  = [UIColor colorWithRed:(235.0/255.0) green:(247.0/255.0) blue:(230.0/255.0) alpha:1.0];
    }
    
    return validColor;
}

+(UIColor *)fieldBackgroundColorInvalid {
    
    static UIColor *invalidColor;
    
    if (!invalidColor) {
        invalidColor  = [UIColor colorWithRed:(247.0/255.0) green:(230.0/255.0) blue:(230.0/255.0) alpha:1.0];
    }
    
    return invalidColor;
    
}

+ (UIColor *)buttonBackgroundColorEnabled{
    
    static UIColor *buttonEnableFillColor;
    
    if (!buttonEnableFillColor) {
        buttonEnableFillColor  = [UIColor colorWithRed:255.0/255.0 green:102.0/255.0 blue:4.0/255.0 alpha:1.0];
    }
    
    return buttonEnableFillColor;
}

+ (UIColor *)buttonHighlightColorEnabled{
    
    static UIColor *buttonEnableStrokeColor;
    
    if (!buttonEnableStrokeColor) {
        buttonEnableStrokeColor  = [UIColor colorWithRed:207.0/255.0 green:82.0/255.0 blue:4.0/255.0 alpha:1.0];
    }
    
    return buttonEnableStrokeColor;
}

+ (UIColor *)buttonBackgroundColorDisabled{
    
    static UIColor *buttonDisableFillColor;
    
    if (!buttonDisableFillColor) {
        buttonDisableFillColor  = [UIColor colorWithRed:221.0/255.0 green:221.0/255.0 blue:221.0/255.0 alpha:1.0];
    }
    
    return buttonDisableFillColor;
}

+ (UIColor *)buttonHighlightColorDisabled{
    
    static UIColor *buttonDisableStrokeColor;
    
    if (!buttonDisableStrokeColor) {
        buttonDisableStrokeColor  = [UIColor colorWithRed:179.0/255.0 green:179.0/255.0 blue:179.0/255.0 alpha:1.0];
    }
    
    return buttonDisableStrokeColor;
}


@end