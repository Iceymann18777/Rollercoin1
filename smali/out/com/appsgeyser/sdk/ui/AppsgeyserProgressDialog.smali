.class public Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;
.super Landroid/app/Dialog;
.source "AppsgeyserProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->setCancelable(Z)V

    .line 15
    sget p1, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_progress_dialog:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->setContentView(I)V

    return-void
.end method
