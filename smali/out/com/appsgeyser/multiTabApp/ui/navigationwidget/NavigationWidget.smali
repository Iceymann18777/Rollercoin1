.class public abstract Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;
.implements Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;


# instance fields
.field protected _browser:Landroid/view/View;

.field protected _customIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;",
            ">;"
        }
    .end annotation
.end field

.field protected _defaultBottomBrowserMargin:I

.field protected _defaultLeftBrowserMargin:I

.field protected _defaultRightBrowserMargin:I

.field protected _defaultTopBrowserMargin:I

.field protected _defaultUrl:Ljava/lang/String;

.field protected _hideOnInternalUrls:Z

.field protected _history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

.field protected _menuVisible:Z

.field protected _onUaChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected _parent:Landroid/view/ViewGroup;

.field protected _progressBarContainer:Landroid/widget/RelativeLayout;

.field protected _refreshOnclickListener:Landroid/view/View$OnClickListener;

.field protected _stopOnclickListener:Landroid/view/View$OnClickListener;

.field protected _suggestionsVisible:Z

.field protected _visible:Z

.field adsKeyboard:Z

.field protected clearTextButton:Landroid/widget/ImageButton;

.field protected focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field protected handler:Landroid/os/Handler;

.field protected inFocus:Z

.field protected overlay:Landroid/view/ViewGroup;

.field protected overlayScroll:Landroid/view/ViewGroup;

.field protected refreshImage:I

.field protected searchBackground:Landroid/widget/LinearLayout;

.field protected searchBtn:Landroid/widget/ImageView;

.field protected searchField:Landroid/view/ViewGroup;

.field protected slideDown:Landroid/view/animation/Animation;

.field protected slideUp:Landroid/view/animation/Animation;

.field protected stopImage:I

.field protected stopRefreshButton:Landroid/widget/ImageButton;

.field protected suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

.field protected suggestionsView:Landroid/view/ViewGroup;

.field protected suggestionsViewScroll:Landroid/view/ViewGroup;

.field protected urlBar:Landroidx/appcompat/widget/Toolbar;

.field protected urlBarButton:I

.field protected urlBarCheckBox:I

.field protected urlBarIcon:I

.field protected urlBarTextChangeListener:Landroid/text/TextWatcher;

.field urlTextBox:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_menuVisible:Z

    .line 67
    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_suggestionsVisible:Z

    .line 68
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->overlay:Landroid/view/ViewGroup;

    .line 69
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->overlayScroll:Landroid/view/ViewGroup;

    .line 71
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->searchField:Landroid/view/ViewGroup;

    .line 72
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    .line 73
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->slideDown:Landroid/view/animation/Animation;

    .line 74
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->slideUp:Landroid/view/animation/Animation;

    .line 75
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->searchBtn:Landroid/widget/ImageView;

    .line 76
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->stopRefreshButton:Landroid/widget/ImageButton;

    .line 77
    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->inFocus:Z

    .line 78
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    .line 79
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->suggestionsViewScroll:Landroid/view/ViewGroup;

    .line 80
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->handler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    .line 85
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    .line 90
    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_hideOnInternalUrls:Z

    .line 91
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_browser:Landroid/view/View;

    .line 92
    iput p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_defaultLeftBrowserMargin:I

    .line 93
    iput p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_defaultRightBrowserMargin:I

    .line 94
    iput p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_defaultTopBrowserMargin:I

    .line 95
    iput p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_defaultBottomBrowserMargin:I

    const p1, 0x7f08016d

    .line 97
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->refreshImage:I

    const p1, 0x7f0800b7

    .line 98
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->stopImage:I

    const p1, 0x7f0d00b8

    .line 99
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlBarIcon:I

    const p1, 0x7f0d00b9

    .line 100
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlBarButton:I

    const p1, 0x7f0d00ba

    .line 101
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlBarCheckBox:I

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_visible:Z

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_customIcons:Ljava/util/HashMap;

    .line 119
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlBarTextChangeListener:Landroid/text/TextWatcher;

    .line 177
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$2;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_stopOnclickListener:Landroid/view/View$OnClickListener;

    .line 185
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$3;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$3;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_refreshOnclickListener:Landroid/view/View$OnClickListener;

    .line 193
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$4;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$4;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_onUaChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 251
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private _setClearButtonVisibility(Z)V
    .registers 4

    .line 692
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 693
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;I)I
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getColor(I)I
    .registers 4

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    .line 465
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 467
    :cond_11
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected _forceGoToUrl(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .line 511
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v1

    .line 513
    invoke-interface {v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 514
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_setClearButtonVisibility(Z)V

    .line 516
    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 517
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 518
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 519
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected _isLocalUrl(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "file://"

    .line 683
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected _onUrlTextBoxKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 490
    move-object v0, p1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 491
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_47

    const/16 p3, 0x42

    if-ne p2, p3, :cond_47

    .line 493
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 494
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p3

    .line 495
    invoke-interface {p3}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object p3

    .line 496
    invoke-virtual {p3, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_setClearButtonVisibility(Z)V

    .line 498
    invoke-virtual {p3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 499
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 500
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    .line 501
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v2

    :cond_47
    return v1
.end method

.method public attachAutocomplete()V
    .registers 9

    .line 587
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    if-nez v0, :cond_11

    .line 588
    new-instance v0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    :cond_11
    const-string v0, "title"

    const-string v1, "url"

    .line 590
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 592
    fill-array-data v7, :array_4e

    .line 593
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 594
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d005d

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 597
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$11;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$11;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 606
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$12;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$12;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V

    .line 614
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0a0231

    .line 615
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 616
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_4e
    .array-data 4
        0x7f0a021a
        0x7f0a0230
    .end array-data
.end method

.method public dpToPx(I)I
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 225
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected focusOffUrlBarExternalLink()V
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 411
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    .line 413
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;

    invoke-direct {v2, p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected focusOffUrlBarHomePage()V
    .registers 3

    .line 349
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 351
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected focusOnUrlBarExternalLink()V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    .line 378
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$8;

    invoke-direct {v2, p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$8;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected focusOnUrlBarHomePage()V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    .line 319
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$6;

    invoke-direct {v2, p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$6;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCustomIcons()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;",
            ">;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_customIcons:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNawigationWidgetView()Landroid/view/ViewGroup;
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getWeeklyHistory()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->loadWeeklyHistory()Landroid/database/Cursor;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_11
    const-string v2, "_id"

    .line 151
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 150
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 153
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 152
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    .line 154
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "visitTime"

    .line 155
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {p0, v4}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->isHomePageUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 157
    new-instance v6, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;

    invoke-direct {v6, v2, v5, v3, v4}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 161
    :cond_4d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_50} :catch_51

    return-object v1

    .line 165
    :catch_51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract hide()V
.end method

.method public abstract hideAnimated()V
.end method

.method public abstract hideSuggestionsView()V
.end method

.method protected initEventHandlers()V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$10;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$10;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public initHistory()V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    if-nez v0, :cond_11

    .line 583
    new-instance v0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    :cond_11
    return-void
.end method

.method protected isHomePageUrl()Z
    .registers 3

    .line 456
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isHomePageUrl(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 443
    :cond_4
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v1

    .line 444
    invoke-interface {v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v1

    const/4 v2, 0x0

    .line 446
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 447
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v2

    :cond_1f
    if-nez v2, :cond_22

    return v0

    .line 452
    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public isVisible()Z
    .registers 2

    .line 659
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_visible:Z

    return v0
.end method

.method public onAddToStartPageClick()V
    .registers 4

    .line 534
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    .line 535
    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 537
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 540
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    move-object v0, v2

    .line 543
    :cond_29
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getHomePageManager()Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v0, v2}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->addBookmark(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 547
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 548
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12011c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 546
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4f
    return-void
.end method

.method public onClickBackButton()V
    .registers 3

    .line 555
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    .line 556
    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 559
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 560
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_1c
    return-void
.end method

.method public onClickForwardButton()V
    .registers 3

    .line 565
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    .line 566
    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 568
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 569
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_1c
    return-void
.end method

.method public onHomeButtonClick()V
    .registers 3

    .line 525
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 528
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 530
    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_setClearButtonVisibility(Z)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 620
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 621
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 622
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v0}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->addHistoryItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 624
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01e2

    .line 625
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 626
    iget p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->refreshImage:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 627
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_refreshOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    :cond_29
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    .line 630
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "show_quick_access_bar"

    .line 631
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 633
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object p2

    if-eqz p2, :cond_72

    .line 634
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "focus"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 635
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->getNawigationWidgetView()Landroid/view/ViewGroup;

    move-result-object p2

    const v0, 0x7f0a0231

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 636
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_72
    return-void
.end method

.method public onPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 287
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->hideSuggestionsView()V

    .line 288
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v0, 0x7f0a01e2

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 290
    iget v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->stopImage:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 291
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_stopOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {p0, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->setUrl(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "focus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 297
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getAdsKeyboardShow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->adsKeyboard:Z

    .line 298
    iget-boolean v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->inFocus:Z

    if-nez v1, :cond_53

    if-nez p1, :cond_53

    if-eqz v0, :cond_45

    goto :goto_53

    .line 306
    :cond_45
    invoke-virtual {p0, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->isHomePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 307
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOffUrlBarHomePage()V

    goto :goto_60

    .line 309
    :cond_4f
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOffUrlBarExternalLink()V

    goto :goto_60

    .line 299
    :cond_53
    :goto_53
    invoke-virtual {p0, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->isHomePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 300
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOnUrlBarHomePage()V

    goto :goto_60

    .line 302
    :cond_5d
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOnUrlBarExternalLink()V

    :goto_60
    return-void
.end method

.method protected onTextChanged()V
    .registers 3

    .line 109
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->inFocus:Z

    if-nez v0, :cond_5

    return-void

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_19

    .line 113
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1f

    .line 115
    :cond_19
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1f
    return-void
.end method

.method public reloadWithChangedUserAgent(Z)V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v1

    .line 204
    invoke-interface {v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-eqz p1, :cond_24

    .line 208
    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/UserAgentManager;->getDesktopUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2b

    .line 211
    :cond_24
    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/UserAgentManager;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 213
    :goto_2b
    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public removeHistoryAllItem()I
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->removeHistoryAllItem()I

    move-result v0

    return v0
.end method

.method public removeHistoryItem(J)I
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->removeHistoryItemById(J)I

    move-result p1

    return p1
.end method

.method public abstract requestSuggestions()V
.end method

.method public setHideOnInternalUrls(Z)V
    .registers 2

    .line 476
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_hideOnInternalUrls:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 4

    .line 663
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_hideOnInternalUrls:Z

    if-eqz v0, :cond_11

    .line 664
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_isLocalUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 665
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->hide()V

    goto :goto_11

    .line 667
    :cond_e
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->show()V

    .line 670
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    .line 673
    :cond_25
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0231

    .line 674
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 675
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_isLocalUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_43

    .line 678
    :cond_3f
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    :cond_43
    :goto_43
    const-string p1, ""

    .line 676
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_48
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract showAnimated()V
.end method
