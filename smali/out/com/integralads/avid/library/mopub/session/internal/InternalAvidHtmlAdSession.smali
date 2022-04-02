.class public abstract Lcom/integralads/avid/library/mopub/session/internal/InternalAvidHtmlAdSession;
.super Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
.source "InternalAvidHtmlAdSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidHtmlAdSession;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method protected onViewRegistered()V
    .registers 1

    .line 22
    invoke-super {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onViewRegistered()V

    .line 23
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidHtmlAdSession;->updateWebViewManager()V

    return-void
.end method

.method protected onViewUnregistered()V
    .registers 1

    .line 28
    invoke-super {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onViewUnregistered()V

    .line 29
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidHtmlAdSession;->updateWebViewManager()V

    return-void
.end method
