#import <Simplify/SIMCardType.h>
#import <Simplify/SIMAddress.h>
@protocol SIMChargeCardModelDelegate

-(void)paymentFailedWithError:(NSError *)error;
-(void)paymentProcessedWithPaymentID:(NSString *)paymentID;

@end

@interface SIMChargeCardModel : NSObject
@property (nonatomic, weak) id<SIMChargeCardModelDelegate> delegate;
@property (nonatomic, strong, readonly) NSString *cardNumber;
@property (nonatomic, strong, readonly) NSString *expirationDate;
@property (nonatomic, strong, readonly) NSString *expirationMonth;
@property (nonatomic, strong, readonly) NSString *expirationYear;
@property (nonatomic, strong, readonly) NSString *formattedCardNumber;
@property (nonatomic, strong, readonly) NSString *formattedExpirationDate;
@property (nonatomic, strong, readonly) NSString *cvcCode;
@property (nonatomic, strong, readonly) NSString *cardTypeString;
@property (nonatomic, strong, readonly) SIMAddress *address;
@property (nonatomic, strong, readonly) SIMCardType *cardType;

-(BOOL)isCardChargePossible;
-(BOOL)isCardNumberValid;
-(BOOL)isExpirationDateValid;
-(BOOL)isCVCCodeValid;
-(void)updateCardNumberWithString:(NSString *)newString;
-(void)updateExpirationDateWithString:(NSString *)newString;
-(void)updateCVCNumberWithString:(NSString *)newString;
-(void)retrieveToken;
@end