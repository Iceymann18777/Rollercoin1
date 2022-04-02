.class Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;
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


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.appsgeyser.com/tos/?pn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
