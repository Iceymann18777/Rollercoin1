.class public Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AvidWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient;->listener:Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient;->listener:Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;

    if-eqz p1, :cond_a

    .line 26
    invoke-interface {p1}, Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;->webViewDidLoadData()V

    :cond_a
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient;->listener:Lcom/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;

    return-void
.end method
