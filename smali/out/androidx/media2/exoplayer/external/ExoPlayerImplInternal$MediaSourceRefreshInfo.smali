.class final Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final manifest:Ljava/lang/Object;

.field public final source:Landroidx/media2/exoplayer/external/source/MediaSource;

.field public final timeline:Landroidx/media2/exoplayer/external/Timeline;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "timeline",
            "manifest"
        }
    .end annotation

    .line 1884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1885
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->source:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 1886
    iput-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1887
    iput-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->manifest:Ljava/lang/Object;

    return-void
.end method
