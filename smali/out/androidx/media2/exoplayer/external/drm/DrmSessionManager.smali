.class public interface abstract Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract acquireSession(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playbackLooper",
            "drmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract canAcquireSession(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmInitData"
        }
    .end annotation
.end method

.method public abstract releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmSession"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation
.end method
