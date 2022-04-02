.class Lcom/moat/analytics/mobile/mpub/u;
.super Lcom/moat/analytics/mobile/mpub/h;

# interfaces
.implements Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;


# instance fields
.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/h;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "NativeVideoTracker"

    const-string v2, "In initialization method."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PartnerCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_22

    const-string p1, "null"

    goto :goto_24

    :cond_22
    const-string p1, "empty"

    :goto_24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeDisplayTracker creation problem, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ERROR] "

    invoke-static {v3, v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/n;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->a:Lcom/moat/analytics/mobile/mpub/n;

    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[SUCCESS] "

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .registers 3

    if-eqz p1, :cond_e

    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    new-instance p1, Lcom/moat/analytics/mobile/mpub/n;

    const-string v0, "Playback has already completed"

    invoke-direct {p1, v0}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lcom/moat/analytics/mobile/mpub/n;

    const-string v0, "Null player instance"

    invoke-direct {p1, v0}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    const-string v0, "NativeVideoTracker"

    return-object v0
.end method

.method a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/u;->n()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "Player is null"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/mpub/h;->a(Ljava/util/List;)V

    return-void
.end method

.method i()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "duration"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method n()Z
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method o()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method q()Z
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method r()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/MediaPlayer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/u;->c()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/u;->d()V

    invoke-direct {p0, p2}, Lcom/moat/analytics/mobile/mpub/u;->a(Landroid/media/MediaPlayer;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1, p3}, Lcom/moat/analytics/mobile/mpub/h;->a(Ljava/util/Map;Landroid/view/View;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    :catch_15
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    const-string p2, "trackVideoAd"

    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/moat/analytics/mobile/mpub/u;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/moat/analytics/mobile/mpub/u;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    invoke-interface {p2, p1}, Lcom/moat/analytics/mobile/mpub/TrackerListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    :cond_28
    const/4 p2, 0x3

    const-string p3, "NativeVideoTracker"

    invoke-static {p2, p3, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/u;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[ERROR] "

    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
