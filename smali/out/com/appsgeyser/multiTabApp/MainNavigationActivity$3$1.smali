.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;Landroid/content/Context;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 206
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;->val$context:Landroid/content/Context;

    const-class v1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
