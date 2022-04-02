.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$14;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onPostCreate(Landroid/os/Bundle;)V
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

    .line 1239
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$14;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogEnableReceived(Z)V
    .registers 4

    if-nez p1, :cond_e

    .line 1243
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$14;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$600(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    move-result-object p1

    const-wide/32 v0, 0x7f0a023e

    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hideMenuItem(J)V

    :cond_e
    return-void
.end method
