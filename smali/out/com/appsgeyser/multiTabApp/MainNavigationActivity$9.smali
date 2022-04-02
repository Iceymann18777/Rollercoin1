.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$9;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onPause()V
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

    .line 733
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$9;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tabsControllerReady(Z)V
    .registers 2

    if-eqz p1, :cond_b

    .line 737
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$9;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$200(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->onPause()V

    :cond_b
    return-void
.end method
