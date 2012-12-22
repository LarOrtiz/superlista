#import "EditableDetailCell.h"

@implementation EditableDetailCell


- (id)initWithStyle:(UITableViewCellStyle)style
    reuseIdentifier:(NSString *)identifier
{
    self = [super initWithStyle:style reuseIdentifier:identifier];
    
    if (self == nil)
    { 
        return nil;
    }
        
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(10,0,100,20)];
    label.text = @"List name:";
    label.backgroundColor = [UIColor clearColor];
    [self addSubview: label];
    
    CGRect bounds = [[self contentView] bounds];
    CGRect rect = CGRectInset(bounds, 20.0, 10.0);
    self.textField = [[UITextField alloc] initWithFrame:rect];
    //  Set the keyboard's return key label to 'Next'.
    [self.textField setReturnKeyType:UIReturnKeyDone];
    [self.textField setDelegate: self];
    //  Make the clear button appear automatically.
    [self.textField setClearButtonMode:UITextFieldViewModeWhileEditing];
    [self.textField setBackgroundColor:[UIColor clearColor]];
    [self.textField setOpaque:YES];
    
    [[self contentView] addSubview:self.textField];
        
    return self;
}



@end
