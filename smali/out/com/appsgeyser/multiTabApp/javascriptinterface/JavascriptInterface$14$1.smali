.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;->onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;Ljava/lang/String;)V
    .registers 3

    .line 627
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;

    iget-object v2, v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;->val$resultCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14$1;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
