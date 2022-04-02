.class public Lcom/appsgeyser/multiTabApp/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# static fields
.field private static _instance:Lcom/appsgeyser/multiTabApp/Factory;


# instance fields
.field private _activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private _homePageManager:Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

.field private _navigationController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

.field private _navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

.field private _widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

.field private bookmarkManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;",
            ">;"
        }
    .end annotation
.end field

.field private tccRes:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    .line 24
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->tccRes:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->bookmarkManagers:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    return-void
.end method

.method public static getInstance()Lcom/appsgeyser/multiTabApp/Factory;
    .registers 1

    .line 34
    sget-object v0, Lcom/appsgeyser/multiTabApp/Factory;->_instance:Lcom/appsgeyser/multiTabApp/Factory;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/appsgeyser/multiTabApp/Factory;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/Factory;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/Factory;->_instance:Lcom/appsgeyser/multiTabApp/Factory;

    .line 37
    :cond_b
    sget-object v0, Lcom/appsgeyser/multiTabApp/Factory;->_instance:Lcom/appsgeyser/multiTabApp/Factory;

    return-object v0
.end method


# virtual methods
.method public Init(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/Factory;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-void
.end method

.method public getBookmarkManager(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->bookmarkManagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 116
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->bookmarkManagers:Ljava/util/HashMap;

    new-instance v1, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/Factory;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {v1, p1, v2}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_14
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->bookmarkManagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    return-object p1
.end method

.method public getHomePageManager()Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_homePageManager:Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    if-nez v0, :cond_f

    .line 109
    new-instance v0, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/Factory;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const-string v2, "Homepage"

    invoke-direct {v0, v2, v1}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_homePageManager:Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    .line 111
    :cond_f
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_homePageManager:Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    return-object v0
.end method

.method public getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object v0
.end method

.method public getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    return-object v0
.end method

.method public getTabContent(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/appsgeyser/multiTabApp/Factory$1;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    const p1, 0x7f0d009a

    .line 87
    invoke-virtual {p2, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_26

    .line 91
    :cond_17
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unknown Content Type"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    const p1, 0x7f0d00c2

    .line 84
    invoke-virtual {p2, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_26
    return-object p1
.end method

.method public getTabContentController(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;
    .registers 3

    .line 98
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-direct {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;-><init>(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->tccRes:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    .line 99
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/Factory;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-interface {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;->setMainNavigationActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 100
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/Factory;->tccRes:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    return-object p1
.end method

.method public getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_navigationController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-object v0
.end method

.method public getWebContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->tccRes:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    return-object v0
.end method

.method public getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/Factory;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    return-object v0
.end method

.method public setNavigationController(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/Factory;->_navigationController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-void
.end method

.method public setNavigationWidget(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/Factory;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    return-void
.end method

.method public setWidgetsController(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/Factory;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    return-void
.end method
