.class final Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->showOpenOrSaveDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$save:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;->val$save:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 105
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;->val$save:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 106
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
