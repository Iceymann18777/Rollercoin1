.class Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;
.super Ljava/lang/Object;
.source "WebContentController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

.field final synthetic val$useFrequencyTimer:Z

.field final synthetic val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V
    .registers 4

    .line 430
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    iput-boolean p3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$useFrequencyTimer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 433
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->PDF_EVENT:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    if-ne v0, v1, :cond_3e

    .line 435
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$302(J)J

    .line 437
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    .line 438
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$userEvent:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->getPlacementTag()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;->val$useFrequencyTimer:Z

    const-string v4, "on_timeout"

    .line 437
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3e
    return-void
.end method
