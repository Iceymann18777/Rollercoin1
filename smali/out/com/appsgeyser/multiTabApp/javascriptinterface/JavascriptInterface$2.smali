.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->sendXMLHTTPRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

.field final synthetic val$resultCallback:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 121
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->val$resultCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 124
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 126
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 129
    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;

    invoke-direct {v1, p0, v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_3e

    .line 151
    :cond_26
    new-instance v1, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    const/4 v2, 0x0

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$2;

    invoke-direct {v3, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$2;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;)V

    .line 152
    invoke-virtual {v1, v0, v2, v3}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V

    :goto_3e
    return-void
.end method
