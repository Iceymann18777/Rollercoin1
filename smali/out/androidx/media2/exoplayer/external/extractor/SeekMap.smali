.class public interface abstract Landroidx/media2/exoplayer/external/extractor/SeekMap;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;,
        Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;
    }
.end annotation


# virtual methods
.method public abstract getDurationUs()J
.end method

.method public abstract getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation
.end method

.method public abstract isSeekable()Z
.end method
