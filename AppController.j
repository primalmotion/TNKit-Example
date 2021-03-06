/*
 * AppController.j
 * TNKit-Example
 *
 * Created by You on October 29, 2010.
 * Copyright 2010, Your Company All rights reserved.
 */

@import <Foundation/Foundation.j>
@import <AppKit/AppKit.j>
@import <TNKit/TNKit.j>


@implementation AppController : CPObject
{
    @outlet CPWindow            theWindow;
    @outlet CPWindow            windowTooltip;
    @outlet CPButton            buttonShowQuickEditView;
    @outlet CPButton            buttonToolTip;
    @outlet CPTextField         title;
    @outlet CPTextField         fieldUserDefault;
    @outlet TNTextFieldStepper  stepper;
    @outlet CPScrollView        scrollViewTable;
    @outlet CPSearchField       filterField;
    
    TNTableViewDataSource       _datasource;
    CPTableView                 _tableView;
    BOOL                        _stepperImplemented;
    
}

- (void)awakeFromCib
{
    if (typeof(CPStepper) == "undefined")
    {
        var message = @"If you want to see CPStepper you need to have a version of Cappuccino that implement it. "
            + "you can find one at http://github.com/primalmotion/cappuccino on branch 'integ'";
            
        [TNAlert showAlertWithTitle:@"CPStepper" message:message];
        _stepperImplemented = NO;
    }
    else
        _stepperImplemented = YES;
    
    [title setFont:[CPFont boldSystemFontOfSize:32]];
    [title sizeToFit];
    
    // TNUserDefault
    var defaults = [TNUserDefaults standardUserDefaults];
    
    [defaults setStorageType:TNUserDefaultStorageTypeHTML5];
    
    [defaults registerDefaults:[CPDictionary dictionaryWithObjectsAndKeys:
            @"Default", @"TNKitDefaultFieldValue"
    ]];

    [fieldUserDefault setStringValue:[defaults objectForKey:@"TNKitDefaultFieldValue"]];
    
    
    // TNTableViewDataSource
    _datasource  = [[TNTableViewDataSource alloc] init];
    _tableView   = [[CPTableView alloc] initWithFrame:[scrollViewTable bounds]];

    [scrollViewTable setDocumentView:_tableView];
    [scrollViewTable setAutohidesScrollers:YES];

    var colA = [[CPTableColumn alloc] initWithIdentifier:@"name"],
        colB = [[CPTableColumn alloc] initWithIdentifier:@"surname"];

    [[colA headerView] setStringValue:@"Name"];
    [[colB headerView] setStringValue:@"Surname"];

    [_tableView addTableColumn:colA];
    [_tableView addTableColumn:colB];

    [_datasource setSearchableKeyPaths:[@"name", @"surname"]];
    [_datasource setTable:_tableView];
    [_tableView setDataSource:_datasource];
    
    var content= [
                    [CPDictionary dictionaryWithObjectsAndKeys:@"Antoine", @"name", @"Mercadal", @"surname"],
                    [CPDictionary dictionaryWithObjectsAndKeys:@"Foo", @"name", @"Bar", @"surname"],
                    [CPDictionary dictionaryWithObjectsAndKeys:@"Spam", @"name", @"Egg", @"surname"]
                    ];
    
    [_datasource setContent:content];
    [_tableView reloadData];
    
    [filterField setTarget:_datasource];
    [filterField setAction:@selector(filterObjects:)];
    
    // TNToolbar
    var toolbar = [[TNToolbar alloc] init],
        bundle  = [CPBundle mainBundle];
    
    
    [toolbar addItemWithIdentifier:@"id1" label:@"Archipel" icon:[bundle pathForResource:@"item1.png"] target:self action:@selector(didToolbarItemClick:)];
    [toolbar addItemWithIdentifier:@"id2" label:@"Logout" icon:[bundle pathForResource:@"item2.png"] target:self action:@selector(didToolbarItemClick:)];
    
    [toolbar setPosition:1 forToolbarItemIdentifier:@"id1"];
    [toolbar setPosition:2 forToolbarItemIdentifier:@"id2"];
    
    [toolbar reloadToolbarItems];
    [theWindow setToolbar:toolbar];
    
    //TNToolTip
    [buttonToolTip setToolTip:@"Hello world! I'm a tooltip!"];
    [windowTooltip orderFront:nil];
}


- (IBAction)showQuickEditViewWhite:(id)sender
{
    var quickEditView = [[TNAttachedWindow alloc] initWithContentRect:CPRectMake(0.0, 0.0, 200.0, 150.0)],
        label = [CPTextField labelWithTitle:@"Hello World"];

    [label sizeToFit];
    [label setCenter:[[quickEditView contentView] center]];
    [[quickEditView contentView] addSubview:label];
    
    [quickEditView attachToView:sender];
}

- (IBAction)showQuickEditViewDark:(id)sender
{
    var quickEditView = [[TNAttachedWindow alloc] initWithContentRect:CPRectMake(0.0, 0.0, 200.0, 150.0) themeColor:TNAttachedWindowThemeBlack],
        label = [CPTextField labelWithTitle:@"Hello World"];

    [label sizeToFit];
    [label setTextColor:[CPColor whiteColor]];
    [label setCenter:[[quickEditView contentView] center]];
    [[quickEditView contentView] addSubview:label];
    
    [quickEditView attachToView:sender];
}

- (IBAction)saveDefault:(id)sender
{
    var defaults = [TNUserDefaults standardUserDefaults];
    
    [defaults setObject:[fieldUserDefault stringValue] forKey:@"TNKitDefaultFieldValue"];
}

- (IBAction)clearDefault:(id)sender
{
    // TNAlert example
    var alert = [TNAlert alertWithTitle:@"Clear defaults ?"
                                message:@"You will erase all data in defaults. Are you sure man ?"
                                 target:self
                                 actions:[["Yes", @selector(performClearDefault:)], ["No", @selector(performLooser:)]]];
    
    [alert runModal];
}

- (void)performClearDefault:(id)someUserInfo
{
    var defaults = [TNUserDefaults standardUserDefaults];
    
    [defaults clear];
    [fieldUserDefault setStringValue:[defaults objectForKey:@"TNKitDefaultFieldValue"]];
}

- (void)performLooser:(id)someUserInfo
{
    [TNAlert showAlertWithTitle:@"Hehe" message:@"Be a man!"];
}

- (IBAction)didToolbarItemClick:(id)sender
{
    [[sender toolbar] selectToolbarItem:sender];
}
@end
