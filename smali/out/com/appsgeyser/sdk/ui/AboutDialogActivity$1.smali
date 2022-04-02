.class Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;
.super Ljava/lang/Object;
.source "AboutDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;Ljava/lang/String;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 100
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;->val$link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendAboutDialogVisitSite(Landroid/content/Context;)V

    return-void
.end method
