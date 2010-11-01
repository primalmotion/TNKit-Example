@STATIC;1.0;p;9;TNAlert.jt;3250;@STATIC;1.0;t;3231;
var _1=objj_allocateClassPair(CPObject,"TNAlert"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_alert"),new objj_ivar("_actions"),new objj_ivar("_target"),new objj_ivar("_userInfo")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("alert"),function(_3,_4){
with(_3){
return _alert;
}
}),new objj_method(sel_getUid("_setAlert:"),function(_5,_6,_7){
with(_5){
_alert=_7;
}
}),new objj_method(sel_getUid("actions"),function(_8,_9){
with(_8){
return _actions;
}
}),new objj_method(sel_getUid("_setActions:"),function(_a,_b,_c){
with(_a){
_actions=_c;
}
}),new objj_method(sel_getUid("target"),function(_d,_e){
with(_d){
return _target;
}
}),new objj_method(sel_getUid("setTarget:"),function(_f,_10,_11){
with(_f){
_target=_11;
}
}),new objj_method(sel_getUid("userInfo"),function(_12,_13){
with(_12){
return _userInfo;
}
}),new objj_method(sel_getUid("setUserInfo:"),function(_14,_15,_16){
with(_14){
_userInfo=_16;
}
}),new objj_method(sel_getUid("initWithTitle:message:target:actions:"),function(_17,_18,_19,_1a,_1b,_1c){
with(_17){
if(_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("TNAlert").super_class},"init")){
_alert=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
_actions=_1c;
_target=_1b;
objj_msgSend(_alert,"setTitle:",_19);
objj_msgSend(_alert,"setMessageText:",_1a);
objj_msgSend(_alert,"setDelegate:",_17);
for(var i=0;i<objj_msgSend(_actions,"count");i++){
objj_msgSend(_alert,"addButtonWithTitle:",objj_msgSend(objj_msgSend(_actions,"objectAtIndex:",i),"objectAtIndex:",0));
}
}
return _17;
}
}),new objj_method(sel_getUid("initWithTitle:message:informativeMessage:target:actions:"),function(_1d,_1e,_1f,_20,_21,_22,_23){
with(_1d){
if(_1d=objj_msgSend(_1d,"initWithTitle:message:target:actions:",_1f,_20,_22,_23)){
objj_msgSend(_alert,"setInformativeText:",_21);
}
return _1d;
}
}),new objj_method(sel_getUid("runModal"),function(_24,_25){
with(_24){
objj_msgSend(_alert,"runModal");
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_alert,"beginSheetModalForWindow:",_28);
}
}),new objj_method(sel_getUid("alertDidEnd:returnCode:"),function(_29,_2a,_2b,_2c){
with(_29){
var _2d=objj_msgSend(objj_msgSend(_actions,"objectAtIndex:",_2c),"objectAtIndex:",1);
CPLog.debug(_2d);
if(objj_msgSend(_target,"respondsToSelector:",_2d)){
objj_msgSend(_target,"performSelector:withObject:",_2d,_userInfo);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("showAlertWithTitle:message:"),function(_2e,_2f,_30,_31){
with(_2e){
var _32=objj_msgSend(objj_msgSend(TNAlert,"alloc"),"initWithTitle:message:target:actions:",_30,_31,nil,[["Ok",nil]]);
objj_msgSend(_32,"runModal");
}
}),new objj_method(sel_getUid("alertWithTitle:message:target:actions:"),function(_33,_34,_35,_36,_37,_38){
with(_33){
var _39=objj_msgSend(objj_msgSend(TNAlert,"alloc"),"initWithTitle:message:target:actions:",_35,_36,_37,_38);
return _39;
}
}),new objj_method(sel_getUid("alertWithTitle:message:informativeMessage:target:actions:"),function(_3a,_3b,_3c,_3d,_3e,_3f,_40){
with(_3a){
var _41=objj_msgSend(objj_msgSend(TNAlert,"alloc"),"initWithTitle:message:informativeMessage:target:actions:",_3c,_3d,_3e,_3f,_40);
return _41;
}
})]);
p;13;TNAnimation.jt;445;@STATIC;1.0;I;23;Foundation/Foundation.jt;399;
objj_executeFile("Foundation/Foundation.j",NO);
var _1=objj_allocateClassPair(CPAnimation,"TNAnimation"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setCurrentProgress:"),function(_3,_4,_5){
with(_3){
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("TNAnimation").super_class},"setCurrentProgress:",_5);
objj_msgSend(_3,"currentValue");
}
})]);
p;7;TNKit.jt;485;@STATIC;1.0;i;20;TNTextFieldStepper.ji;13;TNAnimation.ji;25;TNOutlineViewDataSource.ji;23;TNTableViewDataSource.ji;16;TNUserDefaults.ji;9;TNAlert.ji;19;TNQuickEditWindow.jt;308;
objj_executeFile("TNTextFieldStepper.j",YES);
objj_executeFile("TNAnimation.j",YES);
objj_executeFile("TNOutlineViewDataSource.j",YES);
objj_executeFile("TNTableViewDataSource.j",YES);
objj_executeFile("TNUserDefaults.j",YES);
objj_executeFile("TNAlert.j",YES);
objj_executeFile("TNQuickEditWindow.j",YES);
p;25;TNOutlineViewDataSource.jt;4537;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jt;4470;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
var _1=objj_allocateClassPair(CPObject,"TNOutlineViewDataSource"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("filterInstalled"),new objj_ivar("_contents"),new objj_ivar("_searchableKeyPaths"),new objj_ivar("_childCompKeyPath"),new objj_ivar("_parentKeyPath")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isFilterInstalled"),function(_3,_4){
with(_3){
return filterInstalled;
}
}),new objj_method(sel_getUid("setFilterInstalled:"),function(_5,_6,_7){
with(_5){
filterInstalled=_7;
}
}),new objj_method(sel_getUid("contents"),function(_8,_9){
with(_8){
return _contents;
}
}),new objj_method(sel_getUid("setContents:"),function(_a,_b,_c){
with(_a){
_contents=_c;
}
}),new objj_method(sel_getUid("searchableKeyPaths"),function(_d,_e){
with(_d){
return _searchableKeyPaths;
}
}),new objj_method(sel_getUid("setSearchableKeyPaths:"),function(_f,_10,_11){
with(_f){
_searchableKeyPaths=_11;
}
}),new objj_method(sel_getUid("childCompKeyPath"),function(_12,_13){
with(_12){
return _childCompKeyPath;
}
}),new objj_method(sel_getUid("setChildCompKeyPath:"),function(_14,_15,_16){
with(_14){
_childCompKeyPath=_16;
}
}),new objj_method(sel_getUid("parentKeyPath"),function(_17,_18){
with(_17){
return _parentKeyPath;
}
}),new objj_method(sel_getUid("setParentKeyPath:"),function(_19,_1a,_1b){
with(_19){
_parentKeyPath=_1b;
}
}),new objj_method(sel_getUid("init"),function(_1c,_1d){
with(_1c){
if(_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("TNOutlineViewDataSource").super_class},"init")){
alert("you should not use TNOutlineViewDataSource. it doesn't work very well for now");
_contents=objj_msgSend(CPArray,"array");
}
return _1c;
}
}),new objj_method(sel_getUid("count"),function(_1e,_1f){
with(_1e){
return objj_msgSend(_contents,"count");
}
}),new objj_method(sel_getUid("objects"),function(_20,_21){
with(_20){
return _contents;
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_22,_23,_24){
with(_22){
return objj_msgSend(_contents,"objectAtIndex:",_24);
}
}),new objj_method(sel_getUid("objectsAtIndexes:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(_contents,"objectsAtIndexes:",_27);
}
}),new objj_method(sel_getUid("getRootObjects"),function(_28,_29){
with(_28){
var _2a=objj_msgSend(CPArray,"array");
for(var i=0;i<objj_msgSend(_contents,"count");i++){
var _2b=objj_msgSend(_contents,"objectAtIndex:",i);
if(objj_msgSend(_2b,"valueForKeyPath:",_parentKeyPath)==nil){
objj_msgSend(_2a,"addObject:",_2b);
}
}
return _2a;
}
}),new objj_method(sel_getUid("getChildrenOfObject:"),function(_2c,_2d,_2e){
with(_2c){
var _2f=objj_msgSend(CPArray,"array");
for(var i=0;i<objj_msgSend(_contents,"count");i++){
var _30=objj_msgSend(_contents,"objectAtIndex:",i);
if(objj_msgSend(_30,"valueForKey:",_parentKeyPath)==objj_msgSend(_2e,"valueForKey:",_childCompKeyPath)){
objj_msgSend(_2f,"addObject:",_30);
}
}
return _2f;
}
}),new objj_method(sel_getUid("addObject:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_contents,"addObject:",_33);
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_34,_35){
with(_34){
objj_msgSend(_contents,"removeAllObjects");
}
}),new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"),function(_36,_37,_38,_39){
with(_36){
if(!_39){
return objj_msgSend(objj_msgSend(_36,"getRootObjects"),"count");
}else{
return objj_msgSend(objj_msgSend(_36,"getChildrenOfObject:",_39),"count");
}
}
}),new objj_method(sel_getUid("outlineView:isItemExpandable:"),function(_3a,_3b,_3c,_3d){
with(_3a){
if(!_3d){
return YES;
}
return (objj_msgSend(objj_msgSend(_3a,"getChildrenOfObject:",_3d),"count")>0)?YES:NO;
}
}),new objj_method(sel_getUid("outlineView:child:ofItem:"),function(_3e,_3f,_40,_41,_42){
with(_3e){
if(!_42){
return objj_msgSend(objj_msgSend(_3e,"getRootObjects"),"objectAtIndex:",_41);
}else{
return objj_msgSend(objj_msgSend(_3e,"getChildrenOfObject:",_42),"objectAtIndex:",_41);
}
}
}),new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"),function(_43,_44,_45,_46,_47){
with(_43){
var _48=objj_msgSend(_46,"identifier");
if(_48=="outline"){
return nil;
}
return objj_msgSend(_47,"valueForKey:",_48);
}
}),new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"),function(_49,_4a,_4b,_4c){
with(_49){
objj_msgSend(_contents,"sortUsingDescriptors:",objj_msgSend(_4b,"sortDescriptors"));
objj_msgSend(_4b,"reloadData");
}
})]);
p;19;TNQuickEditWindow.jt;5962;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jt;5895;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
var _1=objj_allocateClassPair(CPWindow,"TNQuickEditWindow"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_cursorView"),new objj_ivar("_closeButton"),new objj_ivar("_targetView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("targetView"),function(_3,_4){
with(_3){
return _targetView;
}
}),new objj_method(sel_getUid("setTargetView:"),function(_5,_6,_7){
with(_5){
_targetView=_7;
}
}),new objj_method(sel_getUid("initWithContentRect:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("TNQuickEditWindow").super_class},"initWithContentRect:styleMask:",_a,CPBorderlessWindowMask)){
var _b=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_8,"class")),_c=objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-top-left.png"),CPSizeMake(24,16)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-top.png"),CPSizeMake(3,16)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-top-right.png"),CPSizeMake(16,16)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-left.png"),CPSizeMake(24,3)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-center.png"),CPSizeMake(1,16)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-right.png"),CPSizeMake(16,3)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-bottom-left.png"),CPSizeMake(24,16)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-bottom.png"),CPSizeMake(3,16)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-bottom-right.png"),CPSizeMake(16,16))]),_d=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-arrow-left.png"),CPSizeMake(24,40)),_e=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-button-close.png"),CPSizeMake(15,15)),_f=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b,"pathForResource:","quick-edit-view/quick-edit-view-button-close-pressed.png"),CPSizeMake(15,15));
_closeButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CPRectMake(_a.size.width-14-12,10.5,14,15));
objj_msgSend(_closeButton,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_closeButton,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_closeButton,"setBordered:",NO);
objj_msgSend(_closeButton,"setValue:forThemeAttribute:",_e,"image");
objj_msgSend(_closeButton,"setValue:forThemeAttribute:inState:",_f,"image",CPThemeStateHighlighted);
objj_msgSend(_closeButton,"setTarget:",_8);
objj_msgSend(_closeButton,"setAction:",sel_getUid("close:"));
objj_msgSend(objj_msgSend(_8,"contentView"),"addSubview:",_closeButton);
_cursorView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(0,CPRectGetHeight(_a)/2-12,24,24));
objj_msgSend(_cursorView,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",_d));
objj_msgSend(objj_msgSend(_8,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",_c));
objj_msgSend(objj_msgSend(_8,"contentView"),"addSubview:",_cursorView);
objj_msgSend(_8,"setMovableByWindowBackground:",YES);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_8,sel_getUid("_editWindowDidMove:"),CPWindowDidMoveNotification,_8);
}
return _8;
}
}),new objj_method(sel_getUid("_editWindowDidMove:"),function(_10,_11,_12){
with(_10){
if(_leftMouseDownView){
objj_msgSend(_cursorView,"setHidden:",YES);
}
}
}),new objj_method(sel_getUid("positionRelativeToView:"),function(_13,_14,_15){
with(_13){
var _16=objj_msgSend(_15,"frame"),_17=_16.origin.x+CPRectGetWidth(_16),_18=_16.origin.y+(CPRectGetHeight(_16)/2)-(CPRectGetHeight(objj_msgSend(_13,"frame"))/2),_19=objj_msgSend(_15,"convertPoint:toView:",CPPointMake(0,0),nil),_1a=CPPointCreateCopy(_19),_1b=0;
_19.x+=CPRectGetWidth(_16);
_19.y+=(CPRectGetHeight(_16)/2)-(CPRectGetHeight(objj_msgSend(_13,"frame"))/2);
if(_19.y<0){
_1b=_19.y;
_19.y=0;
var _1c=objj_msgSend(_cursorView,"frameOrigin");
_1c.y+=_1b;
objj_msgSend(_cursorView,"setFrameOrigin:",_1c);
}
objj_msgSend(_13,"setFrameOrigin:",_19);
objj_msgSend(_13,"makeKeyAndOrderFront:",nil);
}
}),new objj_method(sel_getUid("attachToView:"),function(_1d,_1e,_1f){
with(_1d){
_targetView=_1f;
objj_msgSend(_1d,"positionRelativeToView:",_targetView);
}
}),new objj_method(sel_getUid("close:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_20,"close");
if(_delegate&&objj_msgSend(_delegate,"respondsToSelected:",sel_getUid("didQuickEditViewClose:"))){
objj_msgSend(_delegate,"didQuickEditViewClose:",_20);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("quickEditViewWithSize:forView:"),function(_23,_24,_25,_26){
with(_23){
var _27=objj_msgSend(objj_msgSend(TNQuickEditWindow,"alloc"),"initWithFrame:",CPRectMake(0,0,_25.width,_25.height));
objj_msgSend(_27,"attachToView:",_26);
return _27;
}
})]);
p;23;TNTableViewDataSource.jt;6104;@STATIC;1.0;t;6085;
var _1=objj_allocateClassPair(CPObject,"TNTableViewDataSource"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_content"),new objj_ivar("_searchableKeyPaths"),new objj_ivar("_table"),new objj_ivar("_filteredContent"),new objj_ivar("_searchField"),new objj_ivar("_filter")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return _content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
_content=_7;
}
}),new objj_method(sel_getUid("searchableKeyPaths"),function(_8,_9){
with(_8){
return _searchableKeyPaths;
}
}),new objj_method(sel_getUid("setSearchableKeyPaths:"),function(_a,_b,_c){
with(_a){
_searchableKeyPaths=_c;
}
}),new objj_method(sel_getUid("table"),function(_d,_e){
with(_d){
return _table;
}
}),new objj_method(sel_getUid("setTable:"),function(_f,_10,_11){
with(_f){
_table=_11;
}
}),new objj_method(sel_getUid("init"),function(_12,_13){
with(_12){
if(_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("TNTableViewDataSource").super_class},"init")){
_content=objj_msgSend(CPArray,"array");
_filteredContent=objj_msgSend(CPArray,"array");
_searchableKeyPaths=objj_msgSend(CPArray,"array");
_filter="";
}
return _12;
}
}),new objj_method(sel_getUid("filterObjects:"),function(_14,_15,_16){
with(_14){
if(!_searchField){
_searchField=_16;
}
_filteredContent=objj_msgSend(CPArray,"array");
_filter=objj_msgSend(objj_msgSend(_16,"stringValue"),"uppercaseString");
if(!(_filter)||(_filter=="")){
_filteredContent=objj_msgSend(_content,"copy");
objj_msgSend(_table,"reloadData");
return;
}
for(var i=0;i<objj_msgSend(_content,"count");i++){
var _17=objj_msgSend(_content,"objectAtIndex:",i);
for(var j=0;j<objj_msgSend(_searchableKeyPaths,"count");j++){
var _18=objj_msgSend(_17,"valueForKeyPath:",objj_msgSend(_searchableKeyPaths,"objectAtIndex:",j));
if(objj_msgSend(_18,"uppercaseString").indexOf(_filter)!=-1){
if(!objj_msgSend(_filteredContent,"containsObject:",_17)){
objj_msgSend(_filteredContent,"addObject:",_17);
}
}
}
}
objj_msgSend(_table,"reloadData");
}
}),new objj_method(sel_getUid("setContent:"),function(_19,_1a,_1b){
with(_19){
_filter="";
if(_searchField){
objj_msgSend(_searchField,"setStringValue:","");
}
_content=objj_msgSend(_1b,"copy");
_filteredContent=objj_msgSend(_1b,"copy");
}
}),new objj_method(sel_getUid("addObject:"),function(_1c,_1d,_1e){
with(_1c){
_filter="";
if(_searchField){
objj_msgSend(_searchField,"setStringValue:","");
}
objj_msgSend(_content,"addObject:",_1e);
objj_msgSend(_filteredContent,"addObject:",_1e);
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_1f,_20,_21,_22){
with(_1f){
_filter="";
if(_searchField){
objj_msgSend(_searchField,"setStringValue:","");
}
objj_msgSend(_content,"insertObject:atIndex:",_21,_22);
objj_msgSend(_filteredContent,"insertObject:atIndex:",_21,_22);
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_23,_24,_25){
with(_23){
return objj_msgSend(_filteredContent,"objectAtIndex:",_25);
}
}),new objj_method(sel_getUid("objectsAtIndexes:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(_filteredContent,"objectsAtIndexes:",_28);
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(_29,_2a,_2b){
with(_29){
var _2c=objj_msgSend(_filteredContent,"objectAtIndex:",_2b);
objj_msgSend(_filteredContent,"removeObjectAtIndex:",_2b);
objj_msgSend(_content,"removeObject:",_2c);
}
}),new objj_method(sel_getUid("removeObjectsAtIndexes:"),function(_2d,_2e,_2f){
with(_2d){
try{
var _30=objj_msgSend(_filteredContent,"objectsAtIndexes:",_2f);
objj_msgSend(_filteredContent,"removeObjectsAtIndexes:",_2f);
objj_msgSend(_content,"removeObjectsInArray:",_30);
}
catch(e){
CPLog.error(e);
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_content,"removeObject:",_33);
objj_msgSend(_filteredContent,"removeObject:",_33);
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_34,_35){
with(_34){
objj_msgSend(_content,"removeAllObjects");
objj_msgSend(_filteredContent,"removeAllObjects");
}
}),new objj_method(sel_getUid("removeLastObject"),function(_36,_37){
with(_36){
objj_msgSend(_content,"removeLastObject");
objj_msgSend(_filteredContent,"removeLastObject");
}
}),new objj_method(sel_getUid("removeFirstObject"),function(_38,_39){
with(_38){
objj_msgSend(_content,"removeFirstObject");
objj_msgSend(_filteredContent,"removeFirstObject");
}
}),new objj_method(sel_getUid("indexOfObject:"),function(_3a,_3b,_3c){
with(_3a){
return objj_msgSend(_filteredContent,"indexOfObject:",_3c);
}
}),new objj_method(sel_getUid("count"),function(_3d,_3e){
with(_3d){
return objj_msgSend(_filteredContent,"count");
}
}),new objj_method(sel_getUid("numberOfRowsInTableView:"),function(_3f,_40,_41){
with(_3f){
return objj_msgSend(_filteredContent,"count");
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(_42,_43,_44,_45,_46){
with(_42){
var _47=objj_msgSend(_45,"identifier");
return objj_msgSend(objj_msgSend(_filteredContent,"objectAtIndex:",_46),"valueForKey:",_47);
}
}),new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"),function(_48,_49,_4a,_4b){
with(_48){
var _4c=objj_msgSend(_4a,"selectedRowIndexes"),_4d=objj_msgSend(_filteredContent,"objectsAtIndexes:",_4c),_4e=objj_msgSend(objj_msgSend(CPIndexSet,"alloc"),"init");
objj_msgSend(_filteredContent,"sortUsingDescriptors:",objj_msgSend(_4a,"sortDescriptors"));
objj_msgSend(_content,"sortUsingDescriptors:",objj_msgSend(_4a,"sortDescriptors"));
objj_msgSend(_table,"reloadData");
for(var i=0;i<objj_msgSend(_4d,"count");i++){
var _4f=objj_msgSend(_4d,"objectAtIndex:",i);
objj_msgSend(_4e,"addIndex:",objj_msgSend(_filteredContent,"indexOfObject:",_4f));
}
objj_msgSend(_table,"selectRowIndexes:byExtendingSelection:",_4e,NO);
}
}),new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"),function(_50,_51,_52,_53,_54,_55){
with(_50){
var _56=objj_msgSend(_54,"identifier");
objj_msgSend(objj_msgSend(_filteredContent,"objectAtIndex:",_55),"setValue:forKey:",_53,_56);
}
})]);
p;20;TNTextFieldStepper.jt;7417;@STATIC;1.0;t;7398;
var _1=CPSizeMake(19,13);
PatternColor=function(){
if(arguments.length<3){
var _2=arguments[0],_3=[],_4=objj_msgSend(CPBundle,"bundleForClass:",TNTextFieldStepper);
for(var i=0;i<_2.length;++i){
var _5=_2[i];
_3.push(_5?objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_4,"pathForResource:",_5[0]),CGSizeMake(_5[1],_5[2])):nil);
}
if(arguments.length==2){
return objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",_3,arguments[1]));
}else{
return objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",_3));
}
}else{
if(arguments.length==3){
return objj_msgSend(CPColor,"colorWithPatternImage:",PatternImage(arguments[0],arguments[1],arguments[2]));
}else{
return nil;
}
}
};
var _6=objj_allocateClassPair(CPStepper,"TNTextFieldStepper"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_textField")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("TNTextFieldStepper").super_class},"initWithFrame:",_a)){
objj_msgSend(_buttonUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_buttonDown,"setAutoresizingMask:",CPViewMinXMargin);
_textField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,0,_a.size.width-_1.width,_a.size.height));
objj_msgSend(_textField,"setBezeled:",YES);
objj_msgSend(_textField,"setEditable:",NO);
objj_msgSend(_textField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_textField,"bind:toObject:withKeyPath:options:","doubleValue",_8,"doubleValue",nil);
objj_msgSend(_textField,"setValue:forThemeAttribute:",CGInsetMake(0,0,0,0),"bezel-inset");
objj_msgSend(_textField,"setValue:forThemeAttribute:",CGInsetMake(7,7,5,8),"content-inset");
var _b=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-up-left.png",3,13],["TNTextFieldStepper/stepper-textfield-bezel-big-up-center.png",13,13],["TNTextFieldStepper/stepper-textfield-bezel-big-up-right.png",3,13]],NO),_c=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-down-left.png",3,12],["TNTextFieldStepper/stepper-textfield-bezel-big-down-center.png",13,12],["TNTextFieldStepper/stepper-textfield-bezel-big-down-right.png",3,12]],NO),_d=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-up-left.png",3,13],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-up-center.png",13,13],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-up-right.png",3,13]],NO),_e=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-down-left.png",3,12],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-down-center.png",13,12],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-down-right.png",3,12]],NO),_f=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-highlighted-up-left.png",3,13],["TNTextFieldStepper/stepper-textfield-bezel-big-highlighted-up-center.png",13,13],["TNTextFieldStepper/stepper-textfield-bezel-big-highlighted-up-right.png",3,13]],NO),_10=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-highlighted-down-left.png",3,12],["TNTextFieldStepper/stepper-textfield-bezel-big-highlighted-down-center.png",13,12],["TNTextFieldStepper/stepper-textfield-bezel-big-highlighted-down-right.png",3,12]],NO),_11=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-0.png",2,3],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-1.png",1,3],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-2.png",2,3],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-3.png",2,1],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-4.png",1,1],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-5.png",2,1],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-6.png",2,2],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-7.png",1,2],["TNTextFieldStepper/stepper-textfield-bezel-big-bezel-square-8.png",2,2]]),_12=PatternColor([["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-0.png",2,3],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-1.png",1,3],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-2.png",2,3],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-3.png",2,1],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-4.png",1,1],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-5.png",2,1],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-6.png",2,2],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-7.png",1,2],["TNTextFieldStepper/stepper-textfield-bezel-big-disabled-bezel-square-8.png",2,2]]);
objj_msgSend(_textField,"setValue:forThemeAttribute:",_11,"bezel-color");
objj_msgSend(_textField,"setValue:forThemeAttribute:inState:",_12,"bezel-color",CPThemeStateBezeled|CPThemeStateDisabled);
objj_msgSend(_buttonUp,"setValue:forThemeAttribute:inState:",_b,"bezel-color",CPThemeStateBordered);
objj_msgSend(_buttonUp,"setValue:forThemeAttribute:inState:",_d,"bezel-color",CPThemeStateBordered|CPThemeStateDisabled);
objj_msgSend(_buttonUp,"setValue:forThemeAttribute:inState:",_f,"bezel-color",CPThemeStateBordered|CPThemeStateHighlighted);
objj_msgSend(_buttonDown,"setValue:forThemeAttribute:inState:",_c,"bezel-color",CPThemeStateBordered);
objj_msgSend(_buttonDown,"setValue:forThemeAttribute:inState:",_e,"bezel-color",CPThemeStateBordered|CPThemeStateDisabled);
objj_msgSend(_buttonDown,"setValue:forThemeAttribute:inState:",_10,"bezel-color",CPThemeStateBordered|CPThemeStateHighlighted);
objj_msgSend(_8,"addSubview:",_textField);
}
return _8;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_13,_14,_15){
with(_13){
objj_msgSendSuper({receiver:_13,super_class:objj_getClass("TNTextFieldStepper").super_class},"setEnabled:",_15);
objj_msgSend(_textField,"setEnabled:",_15);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("stepperWithInitialValue:minValue:maxValue:"),function(_16,_17,_18,_19,_1a){
with(_16){
var _1b=objj_msgSend(objj_msgSend(TNTextFieldStepper,"alloc"),"initWithFrame:",CPRectMake(0,0,100,25));
objj_msgSend(_1b,"setDoubleValue:",_18);
objj_msgSend(_1b,"setMinValue:",_19);
objj_msgSend(_1b,"setMaxValue:",_1a);
return _1b;
}
}),new objj_method(sel_getUid("stepper"),function(_1c,_1d){
with(_1c){
return objj_msgSend(TNTextFieldStepper,"stepperWithInitialValue:minValue:maxValue:",0,0,59);
}
})]);
var _6=objj_getClass("TNTextFieldStepper");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"TNTextFieldStepper\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(_1e,_1f,_20){
with(_1e){
if(_1e=objj_msgSendSuper({receiver:_1e,super_class:objj_getClass("TNTextFieldStepper").super_class},"initWithCoder:",_20)){
_textField=objj_msgSend(_20,"decodeObjectForKey:","_textField");
}
return _1e;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_21,_22,_23){
with(_21){
objj_msgSendSuper({receiver:_21,super_class:objj_getClass("TNTextFieldStepper").super_class},"encodeWithCoder:",_23);
objj_msgSend(_23,"encodeObject:forKey:",_textField,"_textField");
}
})]);
p;16;TNUserDefaults.jt;9506;@STATIC;1.0;I;23;Foundation/Foundation.jt;9459;
objj_executeFile("Foundation/Foundation.j",NO);
standardUserDefaultsInstance=nil;
currentUserDefaultsInstance=nil;
TNUserDefaultsUserStandard="TNUserDefaultsUserStandard";
TNUserDefaultStorageTypeHTML5="TNUserDefaultStorageTypeHTML5";
TNUserDefaultStorageTypeCookie="TNUserDefaultStorageTypeCookie";
TNUserDefaultStorageTypeNoStorage="TNUserDefaultStorageTypeNoStorage";
TNUserDefaultStorageType=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","TNUserDefaultStorageType");
var _1=objj_allocateClassPair(CPObject,"TNUserDefaults"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_storageType"),new objj_ivar("_appDefaults"),new objj_ivar("_defaults"),new objj_ivar("_user")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("storageType"),function(_3,_4){
with(_3){
return _storageType;
}
}),new objj_method(sel_getUid("setStorageType:"),function(_5,_6,_7){
with(_5){
_storageType=_7;
}
}),new objj_method(sel_getUid("initWithUser:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("TNUserDefaults").super_class},"init")){
_defaults=objj_msgSend(CPDictionary,"dictionary");
_appDefaults=objj_msgSend(CPDictionary,"dictionary");
_user=_a;
_storageType=TNUserDefaultStorageType;
objj_msgSend(_defaults,"setObject:forKey:",objj_msgSend(CPDictionary,"dictionary"),_user);
}
return _8;
}
}),new objj_method(sel_getUid("init"),function(_b,_c){
with(_b){
return objj_msgSend(_b,"initWithUser:",TNUserDefaultsUserStandard);
}
}),new objj_method(sel_getUid("registerDefaults:"),function(_d,_e,_f){
with(_d){
objj_msgSend(_appDefaults,"addEntriesFromDictionary:",_f);
}
}),new objj_method(sel_getUid("recoverObjectForKey:"),function(_10,_11,_12){
with(_10){
var _13,ret,_14=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleIdentifier")+"_"+_user+"_"+_12;
switch(_storageType){
case TNUserDefaultStorageTypeHTML5:
CPLog.trace("Recovering from HTML5 storage");
try{
if(_13=localStorage.getItem(_14)){
ret=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPData,"dataWithRawString:",_13));
}
if(typeof (ret)=="undefined"){
ret=nil;
}
}
catch(e){
CPLog.error("Error while trying to recovering : "+e);
}
break;
case TNUserDefaultStorageTypeCookie:
CPLog.trace("Recovering from cookie storage");
if((_13=objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:",_14))&&objj_msgSend(_13,"value")!=""){
var _15=objj_msgSend(_13,"value").replace(/__dotcoma__/g,";").replace(/__dollar__/g,"$");
ret=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPData,"dataWithRawString:",_15));
if(typeof (ret)=="undefined"){
ret=nil;
}
}
break;
case TNUserDefaultStorageTypeNoStorage:
CPLog.trace("No storage specified");
ret=nil;
break;
default:
throw new Error("Unknown storage type: "+_storageType+" storage type is unknown");
}
return ret?ret:objj_msgSend(_appDefaults,"objectForKey:",_12);
}
}),new objj_method(sel_getUid("synchronizeObject:forKey:"),function(_16,_17,_18,_19){
with(_16){
var _1a=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_18),_1b=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleIdentifier")+"_"+_user+"_"+_19,_1c=objj_msgSend(_1a,"rawString");
switch(_storageType){
case TNUserDefaultStorageTypeHTML5:
try{
localStorage.setItem(_1b,_1c);
}
catch(e){
CPLog.error("Error while trying to synchronize : "+e);
}
break;
case TNUserDefaultStorageTypeCookie:
var _1d=objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:",_1b),_1e=_1c.replace(/;/g,"__dotcoma__").replace(/$/g,"__dollar__");
CPLog.trace("saving into cookie storage");
objj_msgSend(_1d,"setValue:expires:domain:",_1e,objj_msgSend(CPDate,"distantFuture"),"");
break;
case TNUserDefaultStorageTypeNoStorage:
break;
default:
throw new Error("Unknown storage type: "+_storageType+" storage type is unknown");
}
}
}),new objj_method(sel_getUid("removeObjectForKey:"),function(_1f,_20,_21){
with(_1f){
var _22=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleIdentifier")+"_"+_user+"_"+_21;
switch(_storageType){
case TNUserDefaultStorageTypeHTML5:
CPLog.trace("clearing HTML5 storage for key "+_21);
localStorage.removeItem(_22);
break;
case TNUserDefaultStorageTypeCookie:
CPLog.trace("clearing cookie storage for key "+_21);
var _23=objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:",_22);
objj_msgSend(_23,"setValue:expires:domain:","",objj_msgSend(CPDate,"distantFuture"),"");
case TNUserDefaultStorageTypeNoStorage:
break;
default:
throw new Error("Unknown storage type: "+_storageType+" storage type is unknown");
}
}
}),new objj_method(sel_getUid("clear"),function(_24,_25){
with(_24){
switch(_storageType){
case TNUserDefaultStorageTypeHTML5:
CPLog.trace("clearing HTML5 storage");
localStorage.clear();
break;
case TNUserDefaultStorageTypeCookie||TNUserDefaultStorageTypeNoStorage:
CPLog.warn("Can't clear cookie storage or no storage");
break;
default:
throw new Error("Unknown storage type: "+_storageType+" storage type is unknown");
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("standardUserDefaults"),function(_26,_27){
with(_26){
if(!standardUserDefaultsInstance){
standardUserDefaultsInstance=objj_msgSend(objj_msgSend(TNUserDefaults,"alloc"),"init");
}
return standardUserDefaultsInstance;
}
}),new objj_method(sel_getUid("defaultsForUser:"),function(_28,_29,_2a){
with(_28){
if(!currentUserDefaultsInstance){
currentUserDefaultsInstance=objj_msgSend(objj_msgSend(TNUserDefaults,"alloc"),"initWithUser:",_2a);
}
return currentUserDefaultsInstance;
}
}),new objj_method(sel_getUid("resetStandardUserDefaults"),function(_2b,_2c){
with(_2b){
localStorage.removeItem(TNUserDefaultsStorageIdentifier);
standardUserDefaultsInstance=objj_msgSend(objj_msgSend(TNUserDefaults,"alloc"),"init");
}
})]);
var _1=objj_getClass("TNUserDefaults");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNUserDefaults\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("objectForKey:"),function(_2d,_2e,_2f){
with(_2d){
return objj_msgSend(_2d,"recoverObjectForKey:",_2f);
}
}),new objj_method(sel_getUid("arrayForKey:"),function(_30,_31,_32){
with(_30){
return objj_msgSend(_30,"objectForKey:",_32);
}
}),new objj_method(sel_getUid("boolForKey:"),function(_33,_34,_35){
with(_33){
var _36=objj_msgSend(_33,"objectForKey:",_35);
if(_36===nil){
return nil;
}
return (_36==="YES")||(_36===1)||(_36===YES)?YES:NO;
}
}),new objj_method(sel_getUid("dataForKey:"),function(_37,_38,_39){
with(_37){
return objj_msgSend(_37,"objectForKey:",_39);
}
}),new objj_method(sel_getUid("dictionaryForKey:"),function(_3a,_3b,_3c){
with(_3a){
return objj_msgSend(_3a,"objectForKey:",_3c);
}
}),new objj_method(sel_getUid("floatForKey:"),function(_3d,_3e,_3f){
with(_3d){
return objj_msgSend(_3d,"objectForKey:",_3f);
}
}),new objj_method(sel_getUid("integerForKey:"),function(_40,_41,_42){
with(_40){
return objj_msgSend(_40,"objectForKey:",_42);
}
}),new objj_method(sel_getUid("stringArrayForKey:"),function(_43,_44,_45){
with(_43){
return objj_msgSend(_43,"objectForKey:",_45);
}
}),new objj_method(sel_getUid("stringForKey:"),function(_46,_47,_48){
with(_46){
return objj_msgSend(_46,"objectForKey:",_48);
}
}),new objj_method(sel_getUid("doubleForKey:"),function(_49,_4a,_4b){
with(_49){
return objj_msgSend(_49,"objectForKey:",_4b);
}
}),new objj_method(sel_getUid("URLForKey:"),function(_4c,_4d,_4e){
with(_4c){
return objj_msgSend(_4c,"objectForKey:",_4e);
}
}),new objj_method(sel_getUid("setObject:forKey:"),function(_4f,_50,_51,_52){
with(_4f){
var _53=objj_msgSend(_defaults,"objectForKey:",_user),_54=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_51),_55=(objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleIdentifier")+"_"+_52),_56=objj_msgSend(_54,"rawString");
objj_msgSend(_53,"setObject:forKey:",_51,_52);
objj_msgSend(_4f,"synchronizeObject:forKey:",_51,_52);
}
}),new objj_method(sel_getUid("setBool:forKey:"),function(_57,_58,_59,_5a){
with(_57){
var _5b=(_59)?"YES":"NO";
objj_msgSend(_57,"setObject:forKey:",_5b,_5a);
}
}),new objj_method(sel_getUid("setFloat:forKey:"),function(_5c,_5d,_5e,_5f){
with(_5c){
objj_msgSend(_5c,"setObject:forKey:",_5e,_5f);
}
}),new objj_method(sel_getUid("setInteger:forKey:"),function(_60,_61,_62,_63){
with(_60){
objj_msgSend(_60,"setObject:forKey:",_62,_63);
}
}),new objj_method(sel_getUid("setDouble:forKey:"),function(_64,_65,_66,_67){
with(_64){
objj_msgSend(_64,"setObject:forKey:",_66,_67);
}
}),new objj_method(sel_getUid("setURL:forKey:"),function(_68,_69,_6a,_6b){
with(_68){
objj_msgSend(_68,"setObject:forKey:",_6a,_6b);
}
})]);
var _1=objj_getClass("TNUserDefaults");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNUserDefaults\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6c,_6d,_6e){
with(_6c){
_defaults=objj_msgSend(_6e,"decodeObjectForKey:","_defaults");
_appDefaults=objj_msgSend(_6e,"decodeObjectForKey:","_appDefaults");
_user=objj_msgSend(_6e,"decodeObjectForKey:","_user");
return _6c;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_6f,_70,_71){
with(_6f){
objj_msgSend(_71,"encodeObject:forKey:",_defaults,"_defaults");
objj_msgSend(_71,"encodeObject:forKey:",_appDefaults,"_appDefaults");
objj_msgSend(_71,"encodeObject:forKey:",_user,"_user");
}
})]);
e;