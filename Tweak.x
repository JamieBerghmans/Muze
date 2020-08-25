#import <Cephei/HBPreferences.h>

@interface CSAdjunctItemView: UIView
-(void)setSizeToMimic:(CGSize)arg1;
@end

@interface PLPlatter: UIView
@end

HBPreferences * pfs;
NSInteger widthPercentage;
NSInteger xPos;
NSInteger yPos;
float screenWidth = 0;
float screenHeight = 0;

%hook CSAdjunctItemView
-(void)setSizeToMimic:(CGSize)arg1 {
	screenWidth = arg1.width;
	screenHeight = arg1.height;
	CGSize size = CGSizeMake(screenWidth / 100 * widthPercentage, arg1.height);
	%orig(size);
}

-(void) layoutSubviews {
	%orig;
	[self setFrame:CGRectMake(xPos + self.frame.origin.x, yPos + self.frame.origin.y, screenWidth / 100 * widthPercentage, self.frame.size.height)];
}
%end

%ctor {
	pfs = [[HBPreferences alloc] initWithIdentifier:@"com.devvix.muzeprefs"];
	[pfs registerInteger:&widthPercentage default:100 forKey:@"widthPercentage"];
	[pfs registerInteger:&xPos default:100 forKey:@"xPos"];
	[pfs registerInteger:&yPos default:100 forKey:@"yPos"];

	%init;
}