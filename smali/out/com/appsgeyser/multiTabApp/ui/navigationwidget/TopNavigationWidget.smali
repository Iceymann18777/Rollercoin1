.class public Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;
.super Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;
.source "TopNavigationWidget.java"


# instance fields
.field protected _refreshOnclickListener:Landroid/view/View$OnClickListener;


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

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V

    .line 380
    new-instance p4, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;

    invoke-direct {p4, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_refreshOnclickListener:Landroid/view/View$OnClickListener;

    .line 91
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p4, 0x7f0a01a2

    .line 93
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 94
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultUrl:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->createWidgetLayout()V

    .line 98
    new-instance p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    .line 100
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-virtual {p1, p0}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->setListener(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;)V

    const p1, 0x7f08012b

    .line 102
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->refreshImage:I

    const p1, 0x7f080104

    .line 103
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->stopImage:I

    const p1, 0x7f0d00bc

    .line 104
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarButton:I

    const p1, 0x7f0d00bd

    .line 105
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarCheckBox:I

    const p1, 0x7f0d00bb

    .line 106
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarIcon:I

    .line 110
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01ea

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    .line 112
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01eb

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsViewScroll:Landroid/view/ViewGroup;

    .line 117
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a013a

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    .line 119
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a013b

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlayScroll:Landroid/view/ViewGroup;

    .line 122
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0231

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    .line 125
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01b5

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    .line 127
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01e2

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->stopRefreshButton:Landroid/widget/ImageButton;

    .line 130
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    const p2, 0x7f0a01bd

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBtn:Landroid/widget/ImageView;

    .line 132
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a008b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    .line 134
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$3;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$3;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$4;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$4;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->initEventHandlers()V

    return-void
.end method

.method private _getNextSuggestion(Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;",
            ">;II)",
            "Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p5, v0, :cond_1d

    .line 428
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_10

    .line 430
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    .line 433
    :cond_10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_37

    .line 434
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    .line 439
    :cond_1d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_2a

    .line 441
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    .line 444
    :cond_2a
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p4, p1, :cond_37

    .line 445
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    :cond_37
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;
    .registers 6

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_getNextSuggestion(Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    move-result-object p0

    return-object p0
.end method

.method private getLocalSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->getHistoryItemsGroupedByUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    :try_start_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_11
    const-string v1, "title"

    .line 405
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 404
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    .line 406
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-virtual {p0, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->isHomePageUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 408
    new-instance v3, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;

    invoke-direct {v3, v1, v2}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_33
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_11

    .line 412
    :cond_39
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3c} :catch_3d

    return-object v0

    .line 416
    :catch_3d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public changeVisibilityAnimated(Z)V
    .registers 7

    .line 234
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0223

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    if-eqz v0, :cond_11

    if-nez p1, :cond_4e

    :cond_11
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    goto :goto_4e

    :cond_18
    if-eqz p1, :cond_1e

    const v0, 0x7f010026

    goto :goto_21

    :cond_1e
    const v0, 0x7f010027

    .line 240
    :goto_21
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 240
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 242
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$8;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$8;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x12c

    .line 263
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Z)V

    .line 286
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 287
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public createWidgetLayout()V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 161
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v3, 0x7f0d0085

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0a0223

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    .line 163
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->bringToFront()V

    .line 164
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 166
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$5;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 175
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$6;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->areInAppPurchasesEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V

    .line 184
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    .line 186
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;

    invoke-direct {v2, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    .line 195
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultBottomBrowserMargin:I

    .line 200
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->show()V

    return-void
.end method

.method public hide()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0223

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 207
    :cond_c
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 211
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 212
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    return-void
.end method

.method public hideAdditionalMenu()V
    .registers 3

    .line 299
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    .line 304
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 305
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 306
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->slideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public hideAnimated()V
    .registers 2

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeVisibilityAnimated(Z)V

    return-void
.end method

.method public hideSuggestionsView()V
    .registers 3

    .line 66
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSuggestionsVisible()Z
    .registers 2

    .line 394
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_suggestionsVisible:Z

    return v0
.end method

.method public declared-synchronized onReceiveSuggestions(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_1
    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->getLocalSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 459
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 462
    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 552
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestSuggestions()V
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_39

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_39

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_39

    .line 50
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;

    invoke-direct {v2, p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/lang/String;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c

    .line 59
    :cond_39
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->hideSuggestionsView()V

    :goto_3c
    return-void
.end method

.method public show()V
    .registers 6

    .line 218
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0223

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    iget v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultLeftBrowserMargin:I

    iget v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    iget v3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultRightBrowserMargin:I

    iget v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 227
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    iget v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultLeftBrowserMargin:I

    iget v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    iget v3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultRightBrowserMargin:I

    iget v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    return-void
.end method

.method public showAnimated()V
    .registers 2

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeVisibilityAnimated(Z)V

    return-void
.end method
