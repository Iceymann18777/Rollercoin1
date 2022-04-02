.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tabsControllerReady(Z)V
    .registers 3

    .line 419
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1$1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$1;)V

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
