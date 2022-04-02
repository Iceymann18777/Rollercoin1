.class public interface abstract Lcom/appsgeyser/multiTabApp/controllers/INavigationController;
.super Ljava/lang/Object;
.source "INavigationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;
    }
.end annotation


# virtual methods
.method public abstract findTabIdToOpenFromDeepLink(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract firstBannerWasShown()V
.end method

.method public abstract getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
.end method

.method public abstract getSelectedTabId()I
.end method

.method public abstract initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
.end method

.method public abstract isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V
.end method

.method public abstract onBackKeyDown()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setSwipeEnabled(Z)V
.end method

.method public abstract swipeOnPage(IZ)V
.end method

.method public abstract swipeOnPageByTabId(Ljava/lang/String;)V
.end method
