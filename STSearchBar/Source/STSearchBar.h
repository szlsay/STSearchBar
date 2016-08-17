//
//  STSearchBar.h
//  STSearchBar
//
//  Created by 沈兆良 on 16/8/17.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class STSearchBar;
@protocol STSearchBarDelegate <UIBarPositioningDelegate>

@optional

-(BOOL)searchBarShouldBeginEditing:(STSearchBar *)searchBar;                      // return NO to not become first responder
- (void)searchBarTextDidBeginEditing:(STSearchBar *)searchBar;                     // called when text starts editing
- (BOOL)searchBarShouldEndEditing:(STSearchBar *)searchBar;                        // return NO to not resign first responder
- (void)searchBarTextDidEndEditing:(STSearchBar *)searchBar;                       // called when text ends editing
- (void)searchBar:(STSearchBar *)searchBar textDidChange:(NSString *)searchText;   // called when text changes (including clear)
- (BOOL)searchBar:(STSearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text; // called before text changes

- (void)searchBarSearchButtonClicked:(STSearchBar *)searchBar;                     // called when keyboard search button pressed
- (void)searchBarCancelButtonClicked:(STSearchBar *)searchBar;                     // called when cancel button pressed
// called when cancel button pressed
@end

@interface STSearchBar : UIView<UITextInputTraits>

@property(nullable,nonatomic,weak) id<STSearchBarDelegate> delegate;             // default is nil. weak reference
@property(nullable,nonatomic,copy) NSString  *text;                  // current/starting search text
@property(nullable,nonatomic,copy) NSString  *prompt;                // default is nil
@property(nullable,nonatomic,copy) NSString  *placeholder;           // default is nil

@end

NS_ASSUME_NONNULL_END
