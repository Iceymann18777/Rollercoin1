.class public interface abstract Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# virtual methods
.method public abstract getBlacklistDurationMsFor(IJLjava/io/IOException;I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataType",
            "loadDurationMs",
            "exception",
            "errorCount"
        }
    .end annotation
.end method

.method public abstract getMinimumLoadableRetryCount(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataType"
        }
    .end annotation
.end method

.method public abstract getRetryDelayMsFor(IJLjava/io/IOException;I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataType",
            "loadDurationMs",
            "exception",
            "errorCount"
        }
    .end annotation
.end method
