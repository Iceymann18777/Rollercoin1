.class final Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekPosition"
.end annotation


# instance fields
.field public final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "windowIndex",
            "windowPositionUs"
        }
    .end annotation

    .line 1834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1835
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1836
    iput p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    .line 1837
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    return-void
.end method
