.class Lcom/mopub/mraid/MraidBridge$1;
.super Landroid/webkit/WebChromeClient;
.source "MraidBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBridge;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$1;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$1;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 146
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$1;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 148
    :cond_13
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$1;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 138
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge$1;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-static {p1}, Lcom/mopub/mraid/MraidBridge;->access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 140
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    .line 153
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
