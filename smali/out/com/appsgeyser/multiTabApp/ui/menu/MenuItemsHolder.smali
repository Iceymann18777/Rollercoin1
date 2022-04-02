.class public Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;
.super Ljava/lang/Object;
.source "MenuItemsHolder.java"


# instance fields
.field private _menu:Landroid/view/Menu;

.field private activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private itemOrderId:I

.field public trigger:Z


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/view/Menu;)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->trigger:Z

    const/16 v0, 0x32

    .line 25
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->itemOrderId:I

    if-eqz p3, :cond_13

    .line 41
    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_init(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Landroid/app/Activity;)V

    .line 43
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    :cond_13
    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->trigger:Z

    const/16 v0, 0x32

    .line 25
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->itemOrderId:I

    .line 30
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationMode()Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    move-result-object v0

    if-eqz p2, :cond_1b

    .line 32
    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuGenerator;->newEmptyMenuInstance(Landroid/content/Context;)Landroid/view/Menu;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    .line 33
    invoke-direct {p0, p1, v0, p2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_init(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Landroid/app/Activity;)V

    .line 34
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    :cond_1b
    return-void
.end method

.method private _applyItemsVisibility(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V
    .registers 13

    .line 58
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0a0242

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_e2

    .line 60
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlBarMenuButtons()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    .line 62
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 64
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0241

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 65
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 67
    :cond_3d
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 69
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0244

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 70
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 72
    :cond_55
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 74
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0248

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 75
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 77
    :cond_6d
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 79
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a023f

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 80
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    :cond_85
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 84
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0245

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 85
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    :cond_9d
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->DOWNLOADS_LIST:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 89
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v5, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 90
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 92
    :cond_b2
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->LINK:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    instance-of v5, v4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    if-eqz v5, :cond_19

    .line 94
    check-cast v4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    .line 95
    new-instance v5, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;

    invoke-direct {v5, p0, v4}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;)V

    .line 106
    iget-object v6, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget v8, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->itemOrderId:I

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v2, v7, v8, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_19

    .line 112
    :cond_e2
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;)V

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 122
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$3;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$3;-><init>(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;)V

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->areInAppPurchasesEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V

    .line 133
    sget-object p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const v0, 0x7f0a024a

    if-ne p3, p1, :cond_103

    .line 134
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 135
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_10c

    .line 137
    :cond_103
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 138
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    :goto_10c
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p3, 0x7f0a0246

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getRateItemVisibility()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p3, 0x7f0a0247

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowRefreshMenuItem()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 147
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p3, 0x7f0a0243

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowExitMenuItem()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowShareMenuItem()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowDownloadList()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p3, 0x7f0a0249

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 161
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowSettings()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p2, 0x7f0a024b

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 165
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private _init(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Landroid/app/Activity;)V
    .registers 7

    .line 50
    invoke-virtual {p3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v2, 0x7f0e0001

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 52
    invoke-direct {p0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_applyItemsVisibility(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;)Landroid/view/Menu;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    return-object p0
.end method


# virtual methods
.method public getAllItems()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 179
    :goto_6
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 180
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 182
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0a0248

    if-ne v3, v4, :cond_1e

    goto :goto_42

    .line 185
    :cond_1e
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 186
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 188
    new-instance v4, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 189
    invoke-static {v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->getIconResourceIdByItemId(I)I

    move-result v6

    .line 188
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 190
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v3, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 188
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_45
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    return-object v0
.end method

.method public setItemVisible(IZ)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 172
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    return-void
.end method
