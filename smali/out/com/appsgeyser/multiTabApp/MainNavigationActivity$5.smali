.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->initAppsgeyserSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$3;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailedToShow()V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$4;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequest()V
    .registers 1

    return-void
.end method

.method public onShow()V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$200(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;)V

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V

    .line 427
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$2;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
