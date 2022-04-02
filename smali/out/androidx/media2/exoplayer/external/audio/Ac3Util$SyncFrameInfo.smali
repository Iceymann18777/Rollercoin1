.class public final Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I

.field public final streamType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "streamType",
            "channelCount",
            "sampleRate",
            "frameSize",
            "sampleCount"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 99
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->streamType:I

    .line 100
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    .line 101
    iput p4, p0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    .line 102
    iput p5, p0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->frameSize:I

    .line 103
    iput p6, p0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILandroidx/media2/exoplayer/external/audio/Ac3Util$1;)V
    .registers 8

    .line 45
    invoke-direct/range {p0 .. p6}, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
