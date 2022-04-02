.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$2;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 427
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$2;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5$2;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$200(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->firstBannerWasShown()V

    return-void
.end method
