.class final Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$onYesListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;->val$onYesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 44
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 45
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;->val$onYesListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_f

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_f
    return-void
.end method
