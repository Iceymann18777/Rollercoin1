.class Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$1;
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

    .line 37
    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$1;->this$0:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, 0x0

    .line 39
    invoke-static {p1}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->access$002(Z)Z

    .line 40
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
