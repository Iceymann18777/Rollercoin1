.class Lcom/appsgeyser/sdk/ui/AboutDialogActivity$2;
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

    .line 107
    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$2;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 110
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$2;->this$0:Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->finish()V

    return-void
.end method
