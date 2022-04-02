.class public Lcom/appnext/ads/fullscreen/FullScreenVideo;
.super Lcom/appnext/ads/fullscreen/Video;
.source "SourceFile"


# instance fields
.field private closeDelay:J

.field private showClose:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/appnext/ads/fullscreen/FullScreenVideo;)V
    .registers 5

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appnext/ads/fullscreen/Video;-><init>(Landroid/content/Context;Lcom/appnext/ads/fullscreen/Video;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->showClose:Z

    .line 15
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->isShowClose()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->setShowClose(Z)V

    .line 16
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->getCloseDelay()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->setCloseDelay(J)V

    .line 17
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->isBackButtonCanClose()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->setBackButtonCanClose(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, v0, p2}, Lcom/appnext/ads/fullscreen/Video;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 9
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->showClose:Z

    .line 22
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->getConfig()Lcom/appnext/ads/fullscreen/c;

    move-result-object p1

    const-string p2, "show_close_time"

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/c;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->closeDelay:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/FullscreenConfig;)V
    .registers 5

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/appnext/ads/fullscreen/Video;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/appnext/ads/fullscreen/VideoConfig;)V

    .line 9
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->showClose:Z

    if-eqz p3, :cond_1f

    .line 30
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/FullscreenConfig;->isBackButtonCanClose()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->setBackButtonCanClose(Z)V

    .line 1040
    iget-object p1, p3, Lcom/appnext/ads/fullscreen/FullscreenConfig;->showClose:Ljava/lang/Boolean;

    if-eqz p1, :cond_1a

    .line 32
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/FullscreenConfig;->isShowClose()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->setShowClose(Z)V

    .line 33
    :cond_1a
    iget-wide p1, p3, Lcom/appnext/ads/fullscreen/FullscreenConfig;->closeDelay:J

    invoke-virtual {p0, p1, p2}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->setCloseDelay(J)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public getAUID()Ljava/lang/String;
    .registers 2

    const-string v0, "700"

    return-object v0
.end method

.method public getCloseDelay()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->closeDelay:J

    return-wide v0
.end method

.method protected getConfig()Lcom/appnext/ads/fullscreen/c;
    .registers 2

    .line 59
    invoke-static {}, Lcom/appnext/ads/fullscreen/c;->m()Lcom/appnext/ads/fullscreen/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getConfig()Lcom/appnext/core/p;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->getConfig()Lcom/appnext/ads/fullscreen/c;

    move-result-object v0

    return-object v0
.end method

.method public isShowClose()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->showClose:Z

    return v0
.end method

.method protected setCloseDelay(J)V
    .registers 3

    .line 68
    iput-wide p1, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->closeDelay:J

    return-void
.end method

.method public setShowClose(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->showClose:Z

    return-void
.end method

.method public setShowClose(ZJ)V
    .registers 6

    .line 48
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->showClose:Z

    const-wide/16 v0, 0x64

    cmp-long p1, p2, v0

    if-ltz p1, :cond_10

    const-wide/16 v0, 0x1d4c

    cmp-long p1, p2, v0

    if-gtz p1, :cond_10

    .line 50
    iput-wide p2, p0, Lcom/appnext/ads/fullscreen/FullScreenVideo;->closeDelay:J

    :cond_10
    return-void
.end method
