.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
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

    .line 122
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 124
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
