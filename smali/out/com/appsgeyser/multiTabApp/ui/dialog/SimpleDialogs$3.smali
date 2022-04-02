.class final Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$3;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onNoListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$3;->val$onNoListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$3;->val$onNoListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 64
    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_b
    return-void
.end method
