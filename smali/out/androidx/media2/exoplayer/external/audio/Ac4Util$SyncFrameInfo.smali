.class public final Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitstreamVersion:I

.field public final channelCount:I

.field public final frameSize:I

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitstreamVersion",
            "channelCount",
            "sampleRate",
            "frameSize",
            "sampleCount"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->bitstreamVersion:I

    .line 54
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 55
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 56
    iput p4, p0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    .line 57
    iput p5, p0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroidx/media2/exoplayer/external/audio/Ac4Util$1;)V
    .registers 7

    .line 38
    invoke-direct/range {p0 .. p5}, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;-><init>(IIIII)V

    return-void
.end method
