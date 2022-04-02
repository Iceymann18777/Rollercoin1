.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$10;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->hideLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$10;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$10;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$600(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 357
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$10;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$600(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 358
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$10;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$602(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_17
    return-void
.end method
