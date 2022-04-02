.class public Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;
.super Ljava/lang/Object;
.source "NavigationDrawerWidget.java"


# instance fields
.field private final activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private final drawerListView:Landroid/widget/ListView;

.field private drawerWidgetModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;"
        }
    .end annotation
.end field

.field private hasOptions:Z

.field private final hasTabs:Z

.field private final navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field private final navigationDrawerWidgetSimpleListener:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

.field private final sliderHandle:Landroid/widget/ImageView;

.field private final sliderHandleAnimation:Landroid/view/animation/Animation;

.field private final sliderHandleHideAnimation:Landroid/view/animation/Animation;

.field private final tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

.field private userKnowsAboutDrawer:Z


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V
    .registers 11

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    .line 65
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v0, 0x7f0a00cc

    .line 68
    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x7f0a0124

    .line 70
    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const v0, 0x7f0a01cc

    .line 72
    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    const v0, 0x7f010028

    .line 74
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const v0, 0x7f010029

    .line 76
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleHideAnimation:Landroid/view/animation/Animation;

    if-eqz p2, :cond_4b

    .line 79
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->addTabsInListView()V

    .line 82
    :cond_4b
    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasTabs:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_70

    .line 86
    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.userKnowsAboutDrawer"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    if-nez p3, :cond_61

    .line 88
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->showSliderHandle()V

    .line 91
    :cond_61
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 92
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    const-wide/16 v1, 0x4e20

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_70
    if-eqz p4, :cond_af

    .line 101
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->initHeader()V

    const p3, 0x7f0a0134

    .line 103
    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 105
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 107
    invoke-virtual {p1, v3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 109
    new-instance p2, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const v4, 0x7f120091

    const v5, 0x7f120090

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 111
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 112
    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 114
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-direct {p2, p1, p3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 117
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    :cond_af
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawerWidgetSimpleListener:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

    .line 122
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 124
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    iget-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-direct {p2, p3, p4, v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;-><init>(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/widget/ListView;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 128
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Landroid/widget/ListView;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Landroid/widget/ImageView;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addTabsInListView()V
    .registers 9

    .line 191
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_31

    .line 195
    invoke-virtual {v0, v3}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getTabByPosition(I)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v4

    .line 196
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    new-instance v6, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v2, v4}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 199
    :cond_31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initHeader()V
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_38

    .line 225
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0086

    .line 227
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a016c

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v4, 0x7f120043

    invoke-virtual {v2, v4}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 237
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->setCircularIconHeader()V

    :cond_38
    return-void
.end method

.method private setCircularIconHeader()V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08013a

    .line 210
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 215
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v2, 0x7f0a016b

    .line 216
    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 218
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showSliderHandle()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 244
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    if-eqz v1, :cond_b

    .line 287
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public hideMenuItem(J)V
    .registers 9

    .line 177
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;

    const/4 v1, 0x0

    .line 178
    :goto_f
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 179
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getItem(I)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 180
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getMenuId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_27

    .line 181
    invoke-virtual {v0, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->remove(Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 184
    :cond_2a
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->notifyDataSetChanged()V

    .line 185
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method hideSliderHandle()V
    .registers 4

    .line 248
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    .line 250
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    const-string v2, "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.userKnowsAboutDrawer"

    .line 252
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    :cond_1d
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 256
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleHideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$4;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isOpened()Z
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawerWidgetSimpleListener:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;->isOpened()Z

    move-result v0

    return v0
.end method

.method public open()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method

.method public remove()V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 280
    :cond_12
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 282
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->setSwipeEnabled(Z)V

    return-void
.end method

.method public setOptions(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasOptions:Z

    if-nez v0, :cond_4a

    .line 143
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->initHeader()V

    .line 146
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasTabs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 147
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->setDivider(Z)V

    .line 149
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 151
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    .line 154
    :goto_27
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 159
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasTabs:Z

    if-eqz p1, :cond_48

    .line 162
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_48
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasOptions:Z

    :cond_4a
    return-void
.end method

.method public show()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 134
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method
