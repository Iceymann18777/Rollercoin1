.class final Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$6;
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


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 113
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
