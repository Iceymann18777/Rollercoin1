.class public Lcom/appsgeyser/multiTabApp/controllers/TabsController;
.super Ljava/lang/Object;
.source "TabsController.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/controllers/INavigationController;


# instance fields
.field private firstBannerWasShown:Z

.field private final onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field private onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

.field private selectedPosition:I

.field private tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

.field private viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    .line 28
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->firstBannerWasShown:Z

    .line 73
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController$2;-><init>(Lcom/appsgeyser/multiTabApp/controllers/TabsController;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/controllers/TabsController;ZLcom/google/android/material/tabs/TabLayout;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->createTabsAdapterAndSetupTagsPanel(ZLcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method

.method static synthetic access$102(Lcom/appsgeyser/multiTabApp/controllers/TabsController;I)I
    .registers 2

    .line 21
    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    return p1
.end method

.method private createTabsAdapterAndSetupTagsPanel(ZLcom/google/android/material/tabs/TabLayout;)V
    .registers 4

    .line 60
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    invoke-direct {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    .line 61
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 62
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    .line 64
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    .line 65
    invoke-interface {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;->tabsControllerReady(Z)V

    .line 68
    :cond_1c
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 69
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public findTabIdToOpenFromDeepLink(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    .line 188
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, ""

    .line 191
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz v2, :cond_e

    .line 194
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getHostFromLink()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getPathFromLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_e

    .line 196
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v4, :cond_41

    .line 197
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 198
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :cond_41
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_46
    return-object v1
.end method

.method public firstBannerWasShown()V
    .registers 2

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->firstBannerWasShown:Z

    return-void
.end method

.method public getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
    .registers 4

    const/4 v0, 0x0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    iget v2, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_18

    if-eqz v1, :cond_18

    .line 97
    instance-of v2, v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    if-nez v2, :cond_10

    goto :goto_18

    .line 100
    :cond_10
    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    :catch_18
    :cond_18
    :goto_18
    return-object v0
.end method

.method public getSelectedTabId()I
    .registers 2

    .line 208
    iget v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    return v0
.end method

.method public initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .registers 5

    .line 33
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const v1, 0x7f0a01ef

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    const/16 v2, 0xa

    .line 35
    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setOffscreenPageLimit(I)V

    const v1, 0x7f0a01f0

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 38
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 40
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_39

    const/16 p1, 0x8

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->createTabsAdapterAndSetupTagsPanel(ZLcom/google/android/material/tabs/TabLayout;)V

    goto :goto_6a

    .line 45
    :cond_39
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;

    invoke-direct {v1, p0, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;-><init>(Lcom/appsgeyser/multiTabApp/controllers/TabsController;Lcom/google/android/material/tabs/TabLayout;)V

    invoke-static {p1, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_6a

    :catch_48
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initWithTabs Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6a
    return-void
.end method

.method public isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 113
    invoke-interface {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;->tabsControllerReady(Z)V

    goto :goto_f

    .line 115
    :cond_d
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

    :goto_f
    return-void
.end method

.method public onBackKeyDown()Z
    .registers 5

    .line 147
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 149
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    .line 151
    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public onPause()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 122
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 123
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 129
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 130
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 131
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_13
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setPagingEnabled(Z)V

    return-void
.end method

.method public swipeOnPage(IZ)V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public swipeOnPageByTabId(Ljava/lang/String;)V
    .registers 3

    .line 181
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetPositionByTabId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->swipeOnPage(IZ)V

    return-void
.end method
