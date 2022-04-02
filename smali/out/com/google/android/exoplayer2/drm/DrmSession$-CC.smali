.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSession$-CC;
.super Ljava/lang/Object;
.source "DrmSession.java"


# direct methods
.method public static $default$playClearSamplesWithoutKeys(Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation

    if-ne p0, p1, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_8

    .line 44
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->acquire()V

    :cond_8
    if-eqz p0, :cond_d

    .line 47
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release()V

    :cond_d
    return-void
.end method
