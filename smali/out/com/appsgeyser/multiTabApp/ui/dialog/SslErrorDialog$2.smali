.class Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;
.super Ljava/lang/Object;
.source "SslErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;->execute(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;Landroid/webkit/SslErrorHandler;Landroid/app/AlertDialog;)V
    .registers 4

    .line 59
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;->this$0:Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 62
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 63
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
