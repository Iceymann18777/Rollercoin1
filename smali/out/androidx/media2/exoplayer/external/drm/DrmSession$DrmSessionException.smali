.class public Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
.super Ljava/lang/Exception;
.source "DrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmSessionException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
