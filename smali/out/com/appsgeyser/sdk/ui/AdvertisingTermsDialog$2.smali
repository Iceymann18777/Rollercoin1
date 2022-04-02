.class Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$2;
.super Ljava/lang/Object;
.source "AdvertisingTermsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$2;->this$0:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p2, 0x0

    .line 30
    invoke-static {p2}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->access$002(Z)Z

    .line 31
    iget-object p2, p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$2;->this$0:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    invoke-static {p2}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->access$100(Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;)V

    .line 32
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
