.class public Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;,
        Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;,
        Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
    }
.end annotation


# static fields
.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field private static _active:Z

.field private static volatile applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;


# instance fields
.field private _config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field private _menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

.field private _tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

.field activityReceiver:Landroid/content/BroadcastReceiver;

.field private adsKeyboardShow:Z

.field private albumStorageController:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

.field private currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field private isNotificationDialogShow:Z

.field private isOptionDownloadsList:Z

.field public isThemeChangingInProgress:Z

.field private final loadUrlFromIntentHandler:Landroid/os/Handler;

.field private final loadUrlFromIntentRunnable:Ljava/lang/Runnable;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mFullScreenBannerView:Landroid/widget/FrameLayout;

.field private mSplashScreenView:Landroid/view/ViewGroup;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideo:Landroid/widget/VideoView;

.field private mVideoProgressView:Landroid/view/View;

.field private navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

.field onComplete:Landroid/content/BroadcastReceiver;

.field onNotificationClick:Landroid/content/BroadcastReceiver;

.field private permissionCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public startCuebiqSdkPermission:Z

.field public startOneAudienceSdkPermission:Z

.field public timeStart:Ljava/lang/Long;

.field public uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private urlFromIntentToLoad:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 108
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 115
    sput-boolean v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_active:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 98
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isThemeChangingInProgress:Z

    .line 117
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startOneAudienceSdkPermission:Z

    .line 118
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startCuebiqSdkPermission:Z

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->timeStart:Ljava/lang/Long;

    .line 122
    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onComplete:Landroid/content/BroadcastReceiver;

    .line 193
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    .line 194
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isOptionDownloadsList:Z

    .line 195
    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isNotificationDialogShow:Z

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentHandler:Landroid/os/Handler;

    .line 242
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private _initAppContent()V
    .registers 3

    .line 524
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    .line 526
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V

    .line 528
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 529
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method private _isMenuItemId(I)Z
    .registers 3

    const v0, 0x7f0a0243

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0247

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a023e

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0240

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0246

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a024a

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0241

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0244

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0248

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a023f

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0245

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0242

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a0249

    if-eq p1, v0, :cond_49

    const v0, 0x7f0a024b

    if-ne p1, v0, :cond_47

    goto :goto_49

    :cond_47
    const/4 p1, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 p1, 0x1

    :goto_4a
    return p1
.end method

.method private _postApplyAppTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V
    .registers 3

    .line 516
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-eq p1, v0, :cond_18

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 517
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-eq p1, v0, :cond_18

    .line 518
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->removeNavigationDrawerWidget()V

    .line 519
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->freezeAllDrawers()V

    :cond_18
    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isOptionDownloadsList:Z

    return p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->urlFromIntentToLoad:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Landroid/os/Handler;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->closeNavigationDrawerWidget()V

    return-void
.end method

.method static synthetic access$502(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
    .registers 1

    .line 98
    sput-object p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    return-object p0
.end method

.method private checkReceivedIntentForDeepLinkAndHandleIt(Landroid/content/Intent;)V
    .registers 4

    .line 806
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 808
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->findTabIdToOpenFromDeepLink(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 810
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->swipeOnPageByTabId(Ljava/lang/String;)V

    .line 812
    :cond_23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->urlFromIntentToLoad:Ljava/lang/String;

    .line 813
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_30
    return-void
.end method

.method private closeNavigationDrawerWidget()V
    .registers 2

    .line 1281
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz v0, :cond_7

    .line 1282
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->close()V

    :cond_7
    return-void
.end method

.method private freezeAllDrawers()V
    .registers 4

    const v0, 0x7f0a00cc

    .line 1287
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    .line 1288
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    const v2, 0x800003

    .line 1289
    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    const v2, 0x800005

    .line 1290
    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public static getApplicationState()Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
    .registers 1

    .line 260
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-object v0
.end method

.method private initAppsgeyserSDK()V
    .registers 4

    .line 408
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120045

    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120166

    invoke-virtual {p0, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V

    return-void
.end method

.method private initDrawer()V
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 459
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_21

    .line 460
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {v0, p0, v2, v3, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    .line 461
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showNavigationDrawerWidget()V

    goto :goto_54

    .line 462
    :cond_21
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 463
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_40

    .line 464
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {v0, p0, v2, v3, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    .line 465
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showNavigationDrawerWidget()V

    goto :goto_54

    .line 466
    :cond_40
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_54

    .line 467
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {v0, p0, v3, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    .line 468
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showNavigationDrawerWidget()V

    :cond_54
    :goto_54
    return-void
.end method

.method private initToolBar()V
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 474
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_28

    const v0, 0x7f0a0134

    .line 475
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 477
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_28
    return-void
.end method

.method private removeNavigationDrawerWidget()V
    .registers 2

    .line 1308
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz v0, :cond_7

    .line 1309
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->remove()V

    :cond_7
    return-void
.end method

.method private showNavigationDrawerWidget()V
    .registers 4

    .line 1295
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->show()V

    .line 1297
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;-><init>(Landroid/content/Context;)V

    .line 1299
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;->isFirstLaunch()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 1300
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v1

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 1301
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v1

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-eq v1, v2, :cond_2c

    .line 1302
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->open()V

    .line 1303
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;->wasTheFirstLaunch()V

    :cond_2c
    return-void
.end method


# virtual methods
.method public createNotice()V
    .registers 7

    .line 482
    const-class v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d009c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 483
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080130

    .line 485
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 486
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 488
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "focus"

    .line 489
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    .line 491
    invoke-virtual {v2, v0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 492
    invoke-virtual {v2, v3}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 493
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 494
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "notification"

    .line 496
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 497
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x732f0c9

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public deleteNotice()V
    .registers 3

    const-string v0, "notification"

    .line 511
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x732f0c9

    .line 512
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getAdsKeyboardShow()Z
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->adsKeyboardShow:Z

    return v0
.end method

.method public getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .registers 2

    .line 1153
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 4

    .line 1065
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v0, :cond_12

    .line 1066
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c1

    const/4 v2, 0x0

    .line 1067
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    .line 1069
    :cond_12
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method public getWeeklyHistory()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 1350
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1352
    instance-of v2, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    if-eqz v2, :cond_19

    .line 1354
    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->getWeeklyHistory()Ljava/util/ArrayList;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method public loadPreviousApplicationMode()V
    .registers 4

    const-string v0, "AppsgeyserPrefs"

    const/4 v1, 0x0

    .line 580
    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 581
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v1

    const-string v2, "applicationMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 582
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v1

    if-ne v1, v0, :cond_20

    .line 583
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    goto :goto_2c

    .line 584
    :cond_20
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v1

    if-ne v1, v0, :cond_2c

    .line 585
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    :cond_2c
    :goto_2c
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1a

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1a

    .line 683
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_10

    return-void

    .line 685
    :cond_10
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 686
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    return-void

    :cond_1a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    .line 691
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_22

    return-void

    :cond_22
    if-eqz p3, :cond_2d

    const/4 p1, -0x1

    if-eq p2, p1, :cond_28

    goto :goto_2d

    .line 694
    :cond_28
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    :goto_2d
    move-object p1, v1

    .line 695
    :goto_2e
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 696
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_44

    .line 698
    :cond_36
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1200c1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_44
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 1148
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1149
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onHideCustomView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 p1, 0x0

    .line 293
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 295
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 297
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->setCurrentThemeWithActionBar(Landroid/app/Activity;)V

    .line 299
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p0}, Lcom/appsgeyser/multiTabApp/Factory;->Init(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 302
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->STARTED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    .line 304
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    move-result-object v0

    .line 307
    :try_start_1a
    invoke-virtual {v0, p0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->loadConfiguration(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    :goto_25
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadPreviousApplicationMode()V

    const v0, 0x7f0d0061

    .line 314
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setContentView(I)V

    .line 315
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->initAppsgeyserSDK()V

    .line 317
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-static {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->initializeAppTheme(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V

    .line 319
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->initToolBar()V

    const v0, 0x7f0a009d

    .line 321
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0042

    .line 322
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 324
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 325
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 327
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v4

    new-instance v5, Lcom/appsgeyser/multiTabApp/controllers/TabsController;

    invoke-direct {v5}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;-><init>()V

    invoke-virtual {v4, v5}, Lcom/appsgeyser/multiTabApp/Factory;->setNavigationController(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;)V

    .line 330
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v4

    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const/4 v6, 0x3

    if-ne v4, v5, :cond_7e

    const v1, 0x7f0d00a8

    .line 332
    invoke-virtual {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 333
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e6

    .line 334
    :cond_7e
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v4

    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const/4 v7, 0x2

    const/16 v8, 0xe

    const/16 v9, 0xf

    const/16 v10, 0xc

    if-ne v4, v5, :cond_aa

    const v4, 0x7f0d00a9

    .line 336
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 337
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 338
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {v3, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 342
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0d00a9

    goto :goto_e6

    .line 343
    :cond_aa
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v4

    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v4, v5, :cond_cc

    const v1, 0x7f0d003a

    .line 345
    invoke-virtual {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 346
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    new-instance v2, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-direct {v2}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsgeyser/multiTabApp/Factory;->setNavigationController(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;)V

    goto :goto_e6

    :cond_cc
    const v4, 0x7f0d00a7

    .line 350
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 351
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-virtual {v3, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0d00a7

    .line 359
    :goto_e6
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 361
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_postApplyAppTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V

    .line 363
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->initDrawer()V

    .line 365
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getPreventFromSleep()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    const v0, 0x7f0a00a2

    .line 367
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0102

    .line 368
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01d5

    .line 369
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    .line 371
    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;

    invoke-direct {v1, v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;-><init>(Landroid/view/ViewGroup;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 373
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isSplashScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 374
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getSplashScreenImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->showSplashScreen(Ljava/lang/String;)V

    goto :goto_13d

    .line 376
    :cond_13a
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showContentView()V

    .line 379
    :goto_13d
    new-instance v0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->albumStorageController:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

    .line 382
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_quick_access_bar"

    .line 383
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_16f

    .line 384
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowSearchNotice()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    if-ne v0, v1, :cond_16f

    .line 385
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->createNotice()V

    :cond_16f
    if-eqz p1, :cond_180

    .line 388
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "focus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_180

    .line 390
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->adsKeyboardShow:Z

    .line 395
    :cond_180
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_initAppContent()V

    .line 397
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->timeStart:Ljava/lang/Long;

    if-nez p1, :cond_191

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->timeStart:Ljava/lang/Long;

    .line 401
    :cond_191
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onComplete:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .line 890
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    if-nez v0, :cond_f

    .line 891
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;-><init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    .line 895
    :cond_f
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-eq p1, v0, :cond_28

    .line 897
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->getAllItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 898
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->setOptions(Ljava/util/ArrayList;)V

    .line 902
    :cond_28
    :try_start_28
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowDownloadList()Z

    move-result p1

    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isOptionDownloadsList:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_48

    :catch_31
    move-exception p1

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "isOptionDownloadsList"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :goto_48
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 827
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 828
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onComplete:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 829
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 830
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 831
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isThemeChangingInProgress:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    .line 832
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1a
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onHideCustomView()V
    .registers 4

    .line 1100
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 1102
    :cond_5
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_c

    .line 1103
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1105
    :cond_c
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1108
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 1110
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1113
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4c

    .line 850
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    const/4 p2, 0x1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 851
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->closeNavigationDrawerWidget()V

    return p2

    .line 855
    :cond_12
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1a

    .line 856
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onHideCustomView()V

    return p2

    .line 860
    :cond_1a
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    .line 861
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 863
    instance-of v0, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    if-eqz v0, :cond_34

    .line 865
    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    .line 866
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->isSuggestionsVisible()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 868
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->hideSuggestionsView()V

    return p2

    .line 874
    :cond_34
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->onBackKeyDown()Z

    move-result p1

    if-nez p1, :cond_4b

    .line 877
    invoke-static {}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationState()Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->EXITING:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 878
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showCloseAppDialog()V

    :cond_4b
    return p2

    .line 883
    :cond_4c
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    return p1

    .line 842
    :cond_5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 820
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setIntent(Landroid/content/Intent;)V

    .line 821
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->checkReceivedIntentForDeepLinkAndHandleIt(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method public onOptionsItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    .line 945
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const/4 v1, 0x1

    const v2, 0x7f0a0243

    if-eq p1, v2, :cond_21

    .line 948
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/Factory;->getWebContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    if-eqz v2, :cond_21

    .line 950
    sget-object v3, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-virtual {v2, v3, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    :cond_21
    packed-switch p1, :pswitch_data_174

    const/4 p1, 0x0

    return p1

    .line 1056
    :pswitch_26
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->newThemingIntent(Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 1057
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 978
    :pswitch_31
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "text/plain"

    .line 979
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShareExtraLink()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f120151

    if-eqz p2, :cond_65

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 984
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShareExtraLink()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_65

    .line 985
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShareExtraLink()Ljava/lang/String;

    move-result-object p2

    .line 986
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    .line 988
    :cond_65
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object p2

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    if-ne p2, v2, :cond_8f

    .line 989
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p2

    .line 990
    invoke-interface {p2}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 991
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120152

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    .line 994
    :cond_8f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 995
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 996
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getAffiliateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 997
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    const-string v2, "android.intent.extra.TEXT"

    .line 1000
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.SUBJECT"

    .line 1001
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Share using"

    .line 1003
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 1050
    :pswitch_d9
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1051
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :pswitch_e4
    if-eqz v0, :cond_f8

    if-eqz p2, :cond_f8

    .line 1023
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->reloadWithChangedUserAgent(Z)V

    .line 1024
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_f8
    return v1

    .line 961
    :pswitch_f9
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_120

    .line 962
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_120
    return v1

    .line 972
    :pswitch_121
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 973
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 975
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :pswitch_145
    if-eqz v0, :cond_14a

    .line 1038
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onHomeButtonClick()V

    :cond_14a
    return v1

    :pswitch_14b
    if-eqz v0, :cond_150

    .line 1016
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onClickForwardButton()V

    :cond_150
    return v1

    .line 957
    :pswitch_151
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showCloseAppDialog()V

    return v1

    .line 1044
    :pswitch_155
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1045
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :pswitch_160
    if-eqz v0, :cond_165

    .line 1009
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onClickBackButton()V

    :cond_165
    return v1

    .line 969
    :pswitch_166
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->launchDisableAdsBillingFlow(Landroid/app/Activity;)V

    return v1

    :pswitch_16a
    if-eqz v0, :cond_16f

    .line 1031
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onAddToStartPageClick()V

    :cond_16f
    return v1

    .line 966
    :pswitch_170
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->showAboutDialog(Landroid/app/Activity;)V

    return v1

    :pswitch_data_174
    .packed-switch 0x7f0a023e
        :pswitch_170
        :pswitch_16a
        :pswitch_166
        :pswitch_160
        :pswitch_155
        :pswitch_151
        :pswitch_14b
        :pswitch_145
        :pswitch_121
        :pswitch_f9
        :pswitch_e4
        :pswitch_d9
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 916
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_isMenuItemId(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 917
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onOptionsItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 920
    :cond_13
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 4

    .line 730
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 731
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onPause(Landroid/content/Context;)V

    .line 733
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$9;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$9;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V

    const/4 v0, 0x0

    .line 742
    sput-boolean v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_active:Z

    const-string v0, "keyguard"

    .line 744
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 745
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const-string v1, "phone"

    .line 746
    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 748
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 749
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->pauseBrowser()V

    :cond_31
    if-nez v0, :cond_36

    .line 753
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->pauseBrowser()V

    :cond_36
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1229
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1230
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne p1, v0, :cond_39

    .line 1231
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    if-nez p1, :cond_1a

    .line 1232
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-direct {p1, v0, p0}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;-><init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    .line 1235
    :cond_1a
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz p1, :cond_39

    .line 1236
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->getAllItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 1237
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->setOptions(Ljava/util/ArrayList;)V

    .line 1239
    new-instance p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$14;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$14;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 1247
    new-instance p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$15;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$15;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->areInAppPurchasesEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V

    :cond_39
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 911
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1a

    const/16 p2, 0x23

    if-eq p1, p2, :cond_9

    goto :goto_2f

    .line 1333
    :cond_9
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->permissionCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_19

    .line 1334
    aget p2, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1335
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->permissionCallback:Landroid/webkit/ValueCallback;

    :cond_19
    return-void

    .line 1340
    :cond_1a
    array-length p1, p3

    if-lez p1, :cond_2f

    aget p1, p3, v0

    if-eqz p1, :cond_2f

    const p1, 0x7f12015a

    .line 1341
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method protected onResume()V
    .registers 6

    .line 763
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 764
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onResume(Landroid/content/Context;)V

    .line 765
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const-string v2, "SM_main"

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setBannerViewContainer(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 766
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    new-instance v2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$10;

    invoke-direct {v2, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$10;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-interface {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V

    const/4 v1, 0x1

    .line 777
    sput-boolean v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_active:Z

    .line 779
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 780
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->checkReceivedIntentForDeepLinkAndHandleIt(Landroid/content/Intent;)V

    .line 783
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getPreventFromSleep()Z

    move-result v2

    if-nez v2, :cond_45

    .line 784
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    :cond_45
    const-string v2, "show_quick_access_bar"

    .line 787
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 789
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 790
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "focus"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 791
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->getNawigationWidgetView()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f0a0231

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 792
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_89
    const-string v2, "AppThemeName"

    const-string v3, "AppThemeDefault"

    .line 797
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->getActivityThemeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 799
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->finish()V

    .line 800
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 801
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isThemeChangingInProgress:Z

    :cond_a7
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    .line 1075
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1076
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 1079
    :cond_8
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_27

    .line 1080
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1081
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/VideoView;

    if-eqz v1, :cond_27

    .line 1082
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    .line 1083
    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1084
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1088
    :cond_27
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 1090
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1092
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1095
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1096
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 594
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 595
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    const-string p2, "*/*"

    .line 598
    :cond_16
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "File Chooser"

    .line 599
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 603
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x15

    if-lt p1, v1, :cond_2d

    .line 605
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 606
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 607
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 610
    :cond_11
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 612
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    const/4 p3, 0x1

    .line 614
    :try_start_1a
    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_1d} :catch_1e

    return p3

    .line 616
    :catch_1e
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 617
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Cannot Open File Chooser"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2d
    return v0
.end method

.method public pauseBrowser()V
    .registers 2

    .line 758
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method public removeHistoryAllItem()I
    .registers 3

    .line 1370
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1372
    instance-of v1, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    if-eqz v1, :cond_15

    .line 1374
    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->removeHistoryAllItem()I

    move-result v0

    return v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public removeHistoryItem(J)I
    .registers 5

    .line 1360
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1363
    instance-of v1, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    if-eqz v1, :cond_15

    .line 1364
    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->removeHistoryItem(J)I

    move-result p1

    return p1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_5

    .line 1223
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .registers 4

    .line 1264
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    if-eqz v0, :cond_c

    .line 1265
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;IZ)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public setPermissionCallback(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->permissionCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public setUrlBarVisibility(I)V
    .registers 3

    .line 1314
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$17;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;I)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showCloseAppDialog()V
    .registers 4

    .line 533
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1, v2}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showContentView()V
    .registers 4

    .line 1117
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    return-void
.end method

.method public showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 23

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v9, p8

    .line 1161
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1162
    iget-object v0, v7, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getHttpAccessLogin()Ljava/lang/String;

    move-result-object v6

    .line 1163
    iget-object v0, v7, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getHttpAccessPassword()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v6

    move-object v5, v9

    .line 1164
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v8, v6, v9}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d4

    .line 1168
    :cond_32
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d005e

    const/4 v4, 0x0

    .line 1169
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a0233

    if-eqz v0, :cond_4c

    .line 1171
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4c
    if-eqz v1, :cond_5a

    const v0, 0x7f0a0189

    .line 1174
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5a
    if-nez p5, :cond_78

    const v0, 0x7f120156

    .line 1179
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s2"

    move-object/from16 v5, p4

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_78
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    .line 1182
    :goto_7e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1184
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/view/View;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    const-string v0, "Sign in"

    invoke-virtual {v12, v0, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;

    invoke-direct {v1, p0, v8}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    const-string v2, "Cancel"

    .line 1191
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$11;

    invoke-direct {v1, p0, v8}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$11;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    .line 1195
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1202
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1203
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    if-eqz v9, :cond_cd

    .line 1205
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_d4

    .line 1207
    :cond_cd
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_d4
    return-void
.end method

.method public showSplashScreen()V
    .registers 3

    .line 1132
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    return-void
.end method
