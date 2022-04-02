.class Lcom/appsgeyser/sdk/push/MessageViewer$1;
.super Ljava/lang/Object;
.source "MessageViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/push/MessageViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/push/MessageViewer;

.field final synthetic val$activity:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/push/MessageViewer;Landroid/content/Context;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/appsgeyser/sdk/push/MessageViewer$1;->this$0:Lcom/appsgeyser/sdk/push/MessageViewer;

    iput-object p2, p0, Lcom/appsgeyser/sdk/push/MessageViewer$1;->val$activity:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 136
    iget-object p1, p0, Lcom/appsgeyser/sdk/push/MessageViewer$1;->val$activity:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/appsgeyser/sdk/push/MessageViewer$1;->val$activity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x200000

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/appsgeyser/sdk/push/MessageViewer$1;->val$activity:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
