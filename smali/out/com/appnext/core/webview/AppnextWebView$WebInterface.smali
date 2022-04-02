.class Lcom/appnext/core/webview/AppnextWebView$WebInterface;
.super Lcom/appnext/core/webview/WebAppInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/webview/AppnextWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebInterface"
.end annotation


# instance fields
.field final synthetic iq:Lcom/appnext/core/webview/AppnextWebView;


# direct methods
.method public constructor <init>(Lcom/appnext/core/webview/AppnextWebView;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView$WebInterface;->iq:Lcom/appnext/core/webview/AppnextWebView;

    .line 295
    invoke-direct {p0}, Lcom/appnext/core/webview/WebAppInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 301
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->destroy(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 304
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->destroy(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public filterAds(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 337
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->filterAds(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 340
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->filterAds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_19
    return-object p1
.end method

.method public gotoAppWall()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 367
    invoke-super {p0}, Lcom/appnext/core/webview/WebAppInterface;->gotoAppWall()V

    .line 369
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 370
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/webview/WebAppInterface;->gotoAppWall()V

    :cond_18
    return-void
.end method

.method public jsError(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 394
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->jsError(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 397
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->jsError(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public loadAds()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 347
    invoke-super {p0}, Lcom/appnext/core/webview/WebAppInterface;->loadAds()Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 350
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/webview/WebAppInterface;->loadAds()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public logSTP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 412
    invoke-super {p0, p1, p2}, Lcom/appnext/core/webview/WebAppInterface;->logSTP(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 415
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appnext/core/webview/WebAppInterface;->logSTP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public notifyImpression(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 385
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->notifyImpression(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 388
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->notifyImpression(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 358
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->openLink(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 361
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->openLink(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public openResultPage(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 403
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->openResultPage(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 406
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->openResultPage(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public openStore(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 319
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->openStore(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 322
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->openStore(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public play()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 328
    invoke-super {p0}, Lcom/appnext/core/webview/WebAppInterface;->play()V

    .line 330
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 331
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/webview/WebAppInterface;->play()V

    :cond_18
    return-void
.end method

.method public postView(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 310
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->postView(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 313
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/webview/WebAppInterface;->postView(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public videoPlayed()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 376
    invoke-super {p0}, Lcom/appnext/core/webview/WebAppInterface;->videoPlayed()V

    .line 378
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 379
    invoke-static {}, Lcom/appnext/core/webview/AppnextWebView;->bt()Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/webview/WebAppInterface;->videoPlayed()V

    :cond_18
    return-void
.end method
