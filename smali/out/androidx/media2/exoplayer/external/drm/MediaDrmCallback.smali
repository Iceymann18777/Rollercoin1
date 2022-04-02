.class public interface abstract Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
.super Ljava/lang/Object;
.source "MediaDrmCallback.java"


# virtual methods
.method public abstract executeKeyRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract executeProvisionRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
