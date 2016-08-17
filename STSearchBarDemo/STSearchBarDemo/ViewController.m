//
//  ViewController.m
//  STSearchBar
//
//  Created by 沈兆良 on 16/8/17.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

#import "ViewController.h"
#import "STSearchBar.h"
@interface ViewController ()<STSearchBarDelegate>
/** 1.自定义的搜索框 */
@property (nonatomic, strong) STSearchBar *searchBar;
/** 2.系统的搜索框 */
@property (nonatomic, strong) UISearchBar *searchBarSystem;
@end

@implementation ViewController

#pragma mark - --- lift cycle 生命周期 ---
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.searchBar];
    [self.view addSubview:self.searchBarSystem];
}
#pragma mark - --- delegate 视图委托 ---

-(BOOL)searchBarShouldBeginEditing:(STSearchBar *)searchBar{
    return YES;
}                     // return NO to not become first responder
- (void)searchBarTextDidBeginEditing:(STSearchBar *)searchBar{

}                    // called when text starts editing
- (BOOL)searchBarShouldEndEditing:(STSearchBar *)searchBar{
    return YES;
}                       // return NO to not resign first responder
- (void)searchBarTextDidEndEditing:(STSearchBar *)searchBar{

}                       // called when text ends editing
- (void)searchBar:(STSearchBar *)searchBar textDidChange:(NSString *)searchText{

}   // called when text changes (including clear)

- (BOOL)searchBar:(STSearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    return YES;
} // called before text changes

- (void)searchBarSearchButtonClicked:(STSearchBar *)searchBar{

}                    // called when keyboard search button pressed
- (void)searchBarCancelButtonClicked:(STSearchBar *)searchBar{

}                  // called when cancel button pressed
// called when cancel button pressed

#pragma mark - --- event response 事件相应 ---

#pragma mark - --- private methods 私有方法 ---

#pragma mark - --- setters 属性 ---

#pragma mark - --- getters 属性 ---
- (STSearchBar *)searchBar
{
    if (!_searchBar) {
        _searchBar = [[STSearchBar alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 0)];
        _searchBar.delegate = self;
        _searchBar.placeholder = @"this is a test";
        _searchBar.text = @"123";
    }
    return _searchBar;
}

- (UISearchBar *)searchBarSystem
{
    if (!_searchBarSystem) {
        _searchBarSystem = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, 44)];
        [_searchBarSystem setShowsCancelButton:YES animated:YES];
        [_searchBarSystem setPlaceholder:@"this is a system"];
        _searchBarSystem.text = @"123";
    }
    return _searchBarSystem;
}
@end
