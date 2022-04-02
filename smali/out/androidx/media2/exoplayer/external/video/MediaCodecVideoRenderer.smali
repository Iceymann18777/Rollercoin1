.class public Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
.super Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private dummySurface:Landroid/view/Surface;

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

.field private final frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastInputTimeUs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private outputStreamOffsetUs:J

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private final pendingOutputStreamSwitchTimesUs:[J

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private reportedHeight:I

.field private reportedPixelWidthHeightRatio:F

.field private reportedUnappliedRotationDegrees:I

.field private reportedWidth:I

.field private scalingMode:I

.field private surface:Landroid/view/Surface;

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 89
    fill-array-data v0, :array_a

    sput-object v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaCodecSelector",
            "allowedJoiningTimeMs",
            "drmSessionManager",
            "playClearSamplesWithoutKeys",
            "eventHandler",
            "eventListener",
            "maxDroppedFramesToNotify"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "J",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 230
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaCodecSelector",
            "allowedJoiningTimeMs",
            "drmSessionManager",
            "playClearSamplesWithoutKeys",
            "enableDecoderFallback",
            "eventHandler",
            "eventListener",
            "maxDroppedFramesToNotify"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "J",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 273
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZF)V

    move-wide v0, p3

    .line 280
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    move/from16 v0, p10

    .line 281
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 283
    new-instance v1, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    .line 284
    new-instance v0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V

    iput-object v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    .line 285
    invoke-static {}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v0

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 286
    iput-object v1, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    new-array v0, v0, [J

    .line 287
    iput-object v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 288
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 289
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 290
    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, -0x1

    .line 291
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 292
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 293
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 294
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    const/4 v0, 0x1

    .line 295
    iput v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 296
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .registers 4

    const/4 v0, 0x0

    .line 1058
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1063
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1b

    .line 1064
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1067
    new-instance v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_1b
    return-void
.end method

.method private clearReportedVideoSize()V
    .registers 3

    const/4 v0, -0x1

    .line 1086
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1087
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1088
    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    .line 1089
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaFormat",
            "tunnelingAudioSessionId"
        }
    .end annotation

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1140
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1141
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .registers 2

    .line 1405
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "sampleMimeType",
            "width",
            "height"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a9

    if-ne p3, v0, :cond_7

    goto/16 :goto_a9

    .line 1353
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_aa

    goto :goto_50

    :sswitch_14
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x5

    goto :goto_51

    :sswitch_1e
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x3

    goto :goto_51

    :sswitch_28
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x2

    goto :goto_51

    :sswitch_32
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    goto :goto_51

    :sswitch_3c
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x4

    goto :goto_51

    :sswitch_46
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p1, -0x1

    :goto_51
    if-eqz p1, :cond_a0

    if-eq p1, v3, :cond_a0

    if-eq p1, v6, :cond_61

    if-eq p1, v5, :cond_a0

    if-eq p1, v4, :cond_5e

    if-eq p1, v2, :cond_5e

    return v0

    :cond_5e
    mul-int p2, p2, p3

    goto :goto_a3

    .line 1360
    :cond_61
    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1361
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 1362
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 1363
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    iget-boolean p0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_8e

    goto :goto_9f

    :cond_8e
    const/16 p0, 0x10

    .line 1369
    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {p3, p0}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p2, p1, 0x10

    goto :goto_a2

    :cond_9f
    :goto_9f
    return v0

    :cond_a0
    mul-int p2, p2, p3

    :goto_a2
    const/4 v4, 0x2

    :goto_a3
    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 v4, v4, 0x2

    .line 1387
    div-int/2addr p2, v4

    return p2

    :cond_a9
    :goto_a9
    return v0

    :sswitch_data_aa
    .sparse-switch
        -0x63306f58 -> :sswitch_46
        -0x63185e82 -> :sswitch_3c
        0x46cdc642 -> :sswitch_32
        0x4f62373a -> :sswitch_28
        0x5f50bed8 -> :sswitch_1e
        0x5f50bed9 -> :sswitch_14
    .end sparse-switch
.end method

.method private static getCodecMaxSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)Landroid/graphics/Point;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1279
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    .line 1280
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    goto :goto_11

    :cond_f
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    :goto_11
    if-eqz v0, :cond_16

    .line 1281
    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    goto :goto_18

    :cond_16
    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    :goto_18
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1283
    sget-object v5, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_1e
    const/4 v7, 0x0

    if-ge v2, v6, :cond_75

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_75

    if-gt v9, v3, :cond_2c

    goto :goto_75

    .line 1288
    :cond_2c
    sget v7, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_4d

    if-eqz v0, :cond_36

    move v7, v9

    goto :goto_37

    :cond_36
    move v7, v8

    :goto_37
    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v8, v9

    .line 1289
    :goto_3b
    invoke-virtual {p0, v7, v8}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1291
    iget v8, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 1292
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_72

    return-object v7

    :cond_4d
    const/16 v7, 0x10

    .line 1297
    invoke-static {v8, v7}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1298
    invoke-static {v9, v7}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v7, v8, v9

    .line 1299
    invoke-static {}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v10

    if-gt v7, v10, :cond_72

    .line 1300
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_69

    move p1, v9

    goto :goto_6a

    :cond_69
    move p1, v8

    :goto_6a
    if-eqz v0, :cond_6d

    goto :goto_6e

    :cond_6d
    move v8, v9

    .line 1301
    :goto_6e
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_75
    :goto_75
    return-object v7
.end method

.method private static getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "format",
            "requiresSecureDecoder",
            "requiresTunnelingDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 371
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 372
    invoke-interface {p0, v0, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 374
    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;

    move-result-object v0

    .line 375
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 377
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 378
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 380
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3a

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2c

    goto :goto_3a

    :cond_2c
    const/16 v1, 0x9

    if-ne p1, v1, :cond_43

    const-string p1, "video/avc"

    .line 387
    invoke-interface {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 386
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    :cond_3a
    :goto_3a
    const-string p1, "video/hevc"

    .line 383
    invoke-interface {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 382
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    :cond_43
    :goto_43
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format"
        }
    .end annotation

    .line 1317
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 1321
    iget-object p0, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p0, :cond_1c

    .line 1323
    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1325
    :cond_1c
    iget p0, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1329
    :cond_20
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static isBufferLate(J)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "earlyUs"
        }
    .end annotation

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "earlyUs"
        }
    .end annotation

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .registers 7

    .line 1114
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_18

    .line 1115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1116
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1117
    iget-object v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1118
    iput v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1119
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_18
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .registers 6

    .line 1093
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v0, v1, :cond_40

    :cond_9
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_40

    .line 1097
    :cond_23
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 1099
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1100
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    .line 1101
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    .line 1102
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    :cond_40
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 1080
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_b

    .line 1081
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_b
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .registers 6

    .line 1107
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_16

    .line 1108
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    iget v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_16
    return-void
.end method

.method private notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "presentationTimeUs",
            "releaseTimeNs",
            "format"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_a

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 842
    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media2/exoplayer/external/Format;)V

    :cond_a
    return-void
.end method

.method private processOutputFormat(Landroid/media/MediaCodec;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "width",
            "height"
        }
    .end annotation

    .line 818
    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 819
    iput p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 820
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 821
    sget p2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_28

    .line 825
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_18

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_2c

    .line 826
    :cond_18
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 827
    iget p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    iput p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 828
    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 829
    iget p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr p2, p3

    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    goto :goto_2c

    .line 833
    :cond_28
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 836
    :cond_2c
    :goto_2c
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .registers 6

    .line 1053
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private static setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "surface"
        }
    .end annotation

    .line 1135
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    if-nez p1, :cond_1e

    .line 529
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_8

    move-object p1, v0

    goto :goto_1e

    .line 532
    :cond_8
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 533
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 534
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 540
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_5e

    .line 541
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 542
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 543
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 545
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3e

    if-eqz p1, :cond_3e

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_3e

    .line 546
    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    goto :goto_44

    .line 548
    :cond_3e
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 549
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeInitCodec()V

    :cond_44
    :goto_44
    if-eqz p1, :cond_57

    .line 552
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v1, :cond_57

    .line 554
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 556
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_6a

    .line 558
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_6a

    .line 562
    :cond_57
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 563
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_6a

    :cond_5e
    if-eqz p1, :cond_6a

    .line 565
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_6a

    .line 568
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 569
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecInfo"
        }
    .end annotation

    .line 1046
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1048
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1049
    invoke-static {p1}, Landroidx/media2/exoplayer/external/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method


# virtual methods
.method protected canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "codecInfo",
            "oldFormat",
            "newFormat"
        }
    .end annotation

    const/4 p1, 0x1

    .line 616
    invoke-virtual {p2, p3, p4, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v0, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt p1, v0, :cond_2b

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->height:I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v0, v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt p1, v0, :cond_2b

    .line 620
    invoke-static {p2, p4}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iget-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt p1, p2, :cond_2b

    .line 621
    invoke-virtual {p3, p4}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x3

    goto :goto_2a

    :cond_29
    const/4 p1, 0x2

    :goto_2a
    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "OMX.google"

    .line 1431
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    .line 1435
    :cond_a
    const-class p1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    monitor-enter p1

    .line 1436
    :try_start_d
    sget-boolean v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v1, :cond_634

    .line 1437
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-gt v1, v2, :cond_30

    const-string v1, "dangal"

    sget-object v4, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "HWEML"

    sget-object v4, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1440
    :cond_2c
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    goto/16 :goto_632

    .line 1441
    :cond_30
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_36

    goto/16 :goto_632

    .line 1459
    :cond_36
    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_63c

    goto/16 :goto_5ff

    :sswitch_42
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x36

    goto/16 :goto_600

    :sswitch_4e
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x35

    goto/16 :goto_600

    :sswitch_5a
    const-string v4, "ELUGA_Prim"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    goto/16 :goto_600

    :sswitch_64
    const-string v2, "ELUGA_Note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x1a

    goto/16 :goto_600

    :sswitch_70
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0xb

    goto/16 :goto_600

    :sswitch_7c
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x34

    goto/16 :goto_600

    :sswitch_88
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x33

    goto/16 :goto_600

    :sswitch_94
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0xf

    goto/16 :goto_600

    :sswitch_a0
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x39

    goto/16 :goto_600

    :sswitch_ac
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x55

    goto/16 :goto_600

    :sswitch_b8
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x65

    goto/16 :goto_600

    :sswitch_c4
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x38

    goto/16 :goto_600

    :sswitch_d0
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x13

    goto/16 :goto_600

    :sswitch_dc
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x75

    goto/16 :goto_600

    :sswitch_e8
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x31

    goto/16 :goto_600

    :sswitch_f4
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x1d

    goto/16 :goto_600

    :sswitch_100
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x32

    goto/16 :goto_600

    :sswitch_10c
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x3b

    goto/16 :goto_600

    :sswitch_118
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x41

    goto/16 :goto_600

    :sswitch_124
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x51

    goto/16 :goto_600

    :sswitch_130
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x3c

    goto/16 :goto_600

    :sswitch_13c
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x7

    goto/16 :goto_600

    :sswitch_147
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x43

    goto/16 :goto_600

    :sswitch_153
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x2f

    goto/16 :goto_600

    :sswitch_15f
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x2e

    goto/16 :goto_600

    :sswitch_16b
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x2d

    goto/16 :goto_600

    :sswitch_177
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x63

    goto/16 :goto_600

    :sswitch_183
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x5b

    goto/16 :goto_600

    :sswitch_18f
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x6d

    goto/16 :goto_600

    :sswitch_19b
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x6c

    goto/16 :goto_600

    :sswitch_1a7
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x6b

    goto/16 :goto_600

    :sswitch_1b3
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x6a

    goto/16 :goto_600

    :sswitch_1bf
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x9

    goto/16 :goto_600

    :sswitch_1cb
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x8

    goto/16 :goto_600

    :sswitch_1d7
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x30

    goto/16 :goto_600

    :sswitch_1e3
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x44

    goto/16 :goto_600

    :sswitch_1ef
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x14

    goto/16 :goto_600

    :sswitch_1fb
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x5

    goto/16 :goto_600

    :sswitch_206
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x40

    goto/16 :goto_600

    :sswitch_212
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x37

    goto/16 :goto_600

    :sswitch_21e
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x77

    goto/16 :goto_600

    :sswitch_22a
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x70

    goto/16 :goto_600

    :sswitch_236
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x61

    goto/16 :goto_600

    :sswitch_242
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x5f

    goto/16 :goto_600

    :sswitch_24e
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x5d

    goto/16 :goto_600

    :sswitch_25a
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x24

    goto/16 :goto_600

    :sswitch_266
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x23

    goto/16 :goto_600

    :sswitch_272
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x22

    goto/16 :goto_600

    :sswitch_27e
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x21

    goto/16 :goto_600

    :sswitch_28a
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x20

    goto/16 :goto_600

    :sswitch_296
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x1f

    goto/16 :goto_600

    :sswitch_2a2
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x1e

    goto/16 :goto_600

    :sswitch_2ae
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x18

    goto/16 :goto_600

    :sswitch_2ba
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x4

    goto/16 :goto_600

    :sswitch_2c5
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0xc

    goto/16 :goto_600

    :sswitch_2d1
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x45

    goto/16 :goto_600

    :sswitch_2dd
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x4e

    goto/16 :goto_600

    :sswitch_2e9
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x47

    goto/16 :goto_600

    :sswitch_2f5
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x3f

    goto/16 :goto_600

    :sswitch_301
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x26

    goto/16 :goto_600

    :sswitch_30d
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x78

    goto/16 :goto_600

    :sswitch_319
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x60

    goto/16 :goto_600

    :sswitch_325
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x5e

    goto/16 :goto_600

    :sswitch_331
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x4f

    goto/16 :goto_600

    :sswitch_33d
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x2

    goto/16 :goto_600

    :sswitch_348
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x1

    goto/16 :goto_600

    :sswitch_353
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x0

    goto/16 :goto_600

    :sswitch_35e
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x25

    goto/16 :goto_600

    :sswitch_36a
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x17

    goto/16 :goto_600

    :sswitch_376
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x16

    goto/16 :goto_600

    :sswitch_382
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x15

    goto/16 :goto_600

    :sswitch_38e
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x7b

    goto/16 :goto_600

    :sswitch_39a
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x64

    goto/16 :goto_600

    :sswitch_3a6
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x5c

    goto/16 :goto_600

    :sswitch_3b2
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x50

    goto/16 :goto_600

    :sswitch_3be
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x48

    goto/16 :goto_600

    :sswitch_3ca
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x42

    goto/16 :goto_600

    :sswitch_3d6
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x3d

    goto/16 :goto_600

    :sswitch_3e2
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x46

    goto/16 :goto_600

    :sswitch_3ee
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x71

    goto/16 :goto_600

    :sswitch_3fa
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x6f

    goto/16 :goto_600

    :sswitch_406
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x62

    goto/16 :goto_600

    :sswitch_412
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x10

    goto/16 :goto_600

    :sswitch_41e
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x76

    goto/16 :goto_600

    :sswitch_42a
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x19

    goto/16 :goto_600

    :sswitch_436
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x7a

    goto/16 :goto_600

    :sswitch_442
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0xd

    goto/16 :goto_600

    :sswitch_44e
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x69

    goto/16 :goto_600

    :sswitch_45a
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x5a

    goto/16 :goto_600

    :sswitch_466
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x29

    goto/16 :goto_600

    :sswitch_472
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x27

    goto/16 :goto_600

    :sswitch_47e
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x4d

    goto/16 :goto_600

    :sswitch_48a
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x74

    goto/16 :goto_600

    :sswitch_496
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x73

    goto/16 :goto_600

    :sswitch_4a2
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x67

    goto/16 :goto_600

    :sswitch_4ae
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x6

    goto/16 :goto_600

    :sswitch_4b9
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x4a

    goto/16 :goto_600

    :sswitch_4c5
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x6e

    goto/16 :goto_600

    :sswitch_4d1
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x1c

    goto/16 :goto_600

    :sswitch_4dd
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x68

    goto/16 :goto_600

    :sswitch_4e9
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/4 v2, 0x3

    goto/16 :goto_600

    :sswitch_4f4
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x49

    goto/16 :goto_600

    :sswitch_500
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x66

    goto/16 :goto_600

    :sswitch_50c
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x3a

    goto/16 :goto_600

    :sswitch_518
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0xe

    goto/16 :goto_600

    :sswitch_524
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x28

    goto/16 :goto_600

    :sswitch_530
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x54

    goto/16 :goto_600

    :sswitch_53c
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x53

    goto/16 :goto_600

    :sswitch_548
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x52

    goto/16 :goto_600

    :sswitch_554
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x72

    goto/16 :goto_600

    :sswitch_560
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x59

    goto/16 :goto_600

    :sswitch_56c
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x11

    goto/16 :goto_600

    :sswitch_578
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x79

    goto/16 :goto_600

    :sswitch_584
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0xa

    goto/16 :goto_600

    :sswitch_590
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x58

    goto/16 :goto_600

    :sswitch_59c
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x57

    goto :goto_600

    :sswitch_5a7
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x56

    goto :goto_600

    :sswitch_5b2
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x4c

    goto :goto_600

    :sswitch_5bd
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x4b

    goto :goto_600

    :sswitch_5c8
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x12

    goto :goto_600

    :sswitch_5d3
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x3e

    goto :goto_600

    :sswitch_5de
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x2c

    goto :goto_600

    :sswitch_5e9
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x2b

    goto :goto_600

    :sswitch_5f4
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    const/16 v2, 0x2a

    goto :goto_600

    :cond_5ff
    :goto_5ff
    const/4 v2, -0x1

    :goto_600
    packed-switch v2, :pswitch_data_82e

    goto :goto_606

    .line 1584
    :pswitch_604
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1590
    :goto_606
    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x1e9d52

    if-eq v2, v4, :cond_621

    const v0, 0x1e9d5f

    if-eq v2, v0, :cond_617

    goto :goto_62a

    :cond_617
    const-string v0, "AFTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62a

    const/4 v0, 0x1

    goto :goto_62b

    :cond_621
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62a

    goto :goto_62b

    :cond_62a
    :goto_62a
    const/4 v0, -0x1

    :goto_62b
    if-eqz v0, :cond_630

    if-eq v0, v3, :cond_630

    goto :goto_632

    .line 1593
    :cond_630
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1600
    :goto_632
    sput-boolean v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1602
    :cond_634
    monitor-exit p1
    :try_end_635
    .catchall {:try_start_d .. :try_end_635} :catchall_638

    .line 1603
    sget-boolean p1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p1

    :catchall_638
    move-exception v0

    .line 1602
    :try_start_639
    monitor-exit p1
    :try_end_63a
    .catchall {:try_start_639 .. :try_end_63a} :catchall_638

    throw v0

    nop

    :sswitch_data_63c
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_5f4
        -0x7fd6c381 -> :sswitch_5e9
        -0x7fd6c368 -> :sswitch_5de
        -0x7d026749 -> :sswitch_5d3
        -0x78929d6a -> :sswitch_5c8
        -0x75f50a1e -> :sswitch_5bd
        -0x75f4fe9d -> :sswitch_5b2
        -0x736f875c -> :sswitch_5a7
        -0x736f83c2 -> :sswitch_59c
        -0x736f83c1 -> :sswitch_590
        -0x7327ce1c -> :sswitch_584
        -0x651ebb62 -> :sswitch_578
        -0x6423293b -> :sswitch_56c
        -0x604f5117 -> :sswitch_560
        -0x5ca40cc4 -> :sswitch_554
        -0x58520ec1 -> :sswitch_548
        -0x58520eba -> :sswitch_53c
        -0x58520eb9 -> :sswitch_530
        -0x4eaed329 -> :sswitch_524
        -0x4892fb4f -> :sswitch_518
        -0x465b3df3 -> :sswitch_50c
        -0x43e6c939 -> :sswitch_500
        -0x3ec0fcc5 -> :sswitch_4f4
        -0x3b33cca0 -> :sswitch_4e9
        -0x398ae3f6 -> :sswitch_4dd
        -0x391f0fb4 -> :sswitch_4d1
        -0x346837ae -> :sswitch_4c5
        -0x323788e3 -> :sswitch_4b9
        -0x30f57652 -> :sswitch_4ae
        -0x2f88a116 -> :sswitch_4a2
        -0x2f61ed98 -> :sswitch_496
        -0x2efd0837 -> :sswitch_48a
        -0x2e9e9441 -> :sswitch_47e
        -0x2247b8b1 -> :sswitch_472
        -0x1f0fa2b7 -> :sswitch_466
        -0x19af3b41 -> :sswitch_45a
        -0x114fad3e -> :sswitch_44e
        -0x10dae90b -> :sswitch_442
        -0x1084b7b7 -> :sswitch_436
        -0xa5988e9 -> :sswitch_42a
        -0x35f9fbf -> :sswitch_41e
        0x84e -> :sswitch_412
        0xa04 -> :sswitch_406
        0xa9b -> :sswitch_3fa
        0xa9f -> :sswitch_3ee
        0xd9b -> :sswitch_3e2
        0x11ebd -> :sswitch_3d6
        0x127db -> :sswitch_3ca
        0x12beb -> :sswitch_3be
        0x1334d -> :sswitch_3b2
        0x135c9 -> :sswitch_3a6
        0x13aea -> :sswitch_39a
        0x158d2 -> :sswitch_38e
        0x1821e -> :sswitch_382
        0x18220 -> :sswitch_376
        0x18401 -> :sswitch_36a
        0x18c69 -> :sswitch_35e
        0x1716e6 -> :sswitch_353
        0x171ac8 -> :sswitch_348
        0x171ac9 -> :sswitch_33d
        0x252f5f -> :sswitch_331
        0x25981d -> :sswitch_325
        0x259b88 -> :sswitch_319
        0x290a13 -> :sswitch_30d
        0x3021fd -> :sswitch_301
        0x321e47 -> :sswitch_2f5
        0x332327 -> :sswitch_2e9
        0x33ab63 -> :sswitch_2dd
        0x27691fb -> :sswitch_2d1
        0x349f581 -> :sswitch_2c5
        0x3ab0ea7 -> :sswitch_2ba
        0x3e53ea5 -> :sswitch_2ae
        0x3f25a44 -> :sswitch_2a2
        0x3f25a46 -> :sswitch_296
        0x3f25a49 -> :sswitch_28a
        0x3f25e05 -> :sswitch_27e
        0x3f25e07 -> :sswitch_272
        0x3f25e09 -> :sswitch_266
        0x3f261c6 -> :sswitch_25a
        0x48dce49 -> :sswitch_24e
        0x48dd589 -> :sswitch_242
        0x48dd8af -> :sswitch_236
        0x4d36832 -> :sswitch_22a
        0x4f0b0e7 -> :sswitch_21e
        0x5e2479e -> :sswitch_212
        0x6214744 -> :sswitch_206
        0x9d91379 -> :sswitch_1fb
        0xadc0551 -> :sswitch_1ef
        0xea056b3 -> :sswitch_1e3
        0x1121dbc3 -> :sswitch_1d7
        0x1255818c -> :sswitch_1cb
        0x1263990d -> :sswitch_1bf
        0x12d90f3a -> :sswitch_1b3
        0x12d90f4c -> :sswitch_1a7
        0x12d98b1b -> :sswitch_19b
        0x12d98b22 -> :sswitch_18f
        0x1844c711 -> :sswitch_183
        0x1e3e8044 -> :sswitch_177
        0x2f5336ed -> :sswitch_16b
        0x2f54115e -> :sswitch_15f
        0x2f541849 -> :sswitch_153
        0x31cf010e -> :sswitch_147
        0x36ad82f4 -> :sswitch_13c
        0x391a0b61 -> :sswitch_130
        0x3f3728cd -> :sswitch_124
        0x448ec687 -> :sswitch_118
        0x46260f63 -> :sswitch_10c
        0x4c505106 -> :sswitch_100
        0x4de67084 -> :sswitch_f4
        0x506ac5a9 -> :sswitch_e8
        0x5abad9cd -> :sswitch_dc
        0x64d2e6e9 -> :sswitch_d0
        0x65e4085b -> :sswitch_c4
        0x6f373556 -> :sswitch_b8
        0x719f1dcb -> :sswitch_ac
        0x75d9a0f0 -> :sswitch_a0
        0x7796d144 -> :sswitch_94
        0x78fc0e50 -> :sswitch_88
        0x790521fb -> :sswitch_7c
        0x7933207f -> :sswitch_70
        0x7a05a409 -> :sswitch_64
        0x7a0696bd -> :sswitch_5a
        0x7a16dfe7 -> :sswitch_4e
        0x7a1f0e95 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_82e
    .packed-switch 0x0
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
        :pswitch_604
    .end packed-switch
.end method

.method protected configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "codec",
            "format",
            "crypto",
            "codecOperatingRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxValues(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 593
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    iget v6, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    move-object v1, p0

    move-object v2, p3

    move v4, p5

    .line 594
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMediaFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p3

    .line 600
    iget-object p5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez p5, :cond_32

    .line 601
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result p5

    invoke-static {p5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 602
    iget-object p5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-nez p5, :cond_2e

    .line 603
    iget-object p5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p5, p1}, Landroidx/media2/exoplayer/external/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 605
    :cond_2e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 607
    :cond_32
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 608
    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_4a

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_4a

    .line 609
    new-instance p1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_4a
    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs"
        }
    .end annotation

    const-string p3, "dropVideoBuffer"

    .line 955
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 956
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 957
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 958
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    return-void
.end method

.method protected flushOrReleaseCodec()Z
    .registers 3

    const/4 v0, 0x0

    .line 642
    :try_start_1
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    .line 644
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return v1

    :catchall_8
    move-exception v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    throw v1
.end method

.method protected getCodecMaxValues(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format",
            "streamFormats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1219
    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 1220
    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 1221
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v2

    .line 1222
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_2b

    if-eq v2, v5, :cond_25

    .line 1226
    iget-object p3, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->width:I

    iget p2, p2, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 1227
    invoke-static {p1, p3, v3, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p1

    if-eq p1, v5, :cond_25

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1235
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1238
    :cond_25
    new-instance p1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1241
    :cond_2b
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2f
    if-ge v7, v3, :cond_5d

    aget-object v9, p3, v7

    .line 1242
    invoke-virtual {p1, p2, v9, v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 1244
    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->width:I

    if-eq v10, v5, :cond_44

    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v10, v5, :cond_42

    goto :goto_44

    :cond_42
    const/4 v10, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v10, 0x1

    :goto_45
    or-int/2addr v8, v10

    .line 1246
    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1247
    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1248
    invoke-static {p1, v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_5d
    if-eqz v8, :cond_b7

    const/16 p3, 0x42

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_b7

    .line 1255
    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1256
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1257
    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1260
    invoke-static {p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p1

    .line 1258
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 p1, 0x39

    .line 1261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Codec max resolution adjusted to: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_b7
    new-instance p1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method protected getCodecNeedsEosPropagation()Z
    .registers 2

    .line 581
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    return v0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "operatingRate",
            "format",
            "streamFormats"
        }
    .end annotation

    .line 654
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_6
    if-ge v1, p2, :cond_17

    aget-object v3, p3, v1

    .line 655
    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_14

    .line 657
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    cmpl-float p2, v2, v0

    if-nez p2, :cond_1c

    goto :goto_1e

    :cond_1c
    mul-float v0, v2, p1

    :goto_1e
    return v0
.end method

.method protected getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "format",
            "requiresSecureDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 362
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    invoke-static {p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "codecMaxValues",
            "codecOperatingRate",
            "deviceNeedsNoPostProcessWorkaround",
            "tunnelingAudioSessionId"
        }
    .end annotation

    .line 1164
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 1166
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1168
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1169
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1171
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const-string v2, "frame-rate"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1172
    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    const-string v2, "rotation-degrees"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1173
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    .line 1174
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1177
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 1178
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 1180
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "profile"

    .line 1180
    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1185
    :cond_51
    iget p1, p2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string v1, "max-width"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1186
    iget p1, p2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string v1, "max-height"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1187
    iget p1, p2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1190
    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 v1, 0x0

    if-lt p1, p2, :cond_7d

    const-string p1, "priority"

    .line 1191
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_7d

    const-string p1, "operating-rate"

    .line 1193
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_7d
    if-eqz p4, :cond_8a

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    .line 1197
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1198
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8a
    if-eqz p5, :cond_8f

    .line 1201
    invoke-static {v0, p5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_8f
    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 512
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_2b

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_20

    .line 514
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 515
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 517
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_2b

    :cond_20
    const/4 v0, 0x6

    if-ne p1, v0, :cond_28

    .line 520
    check-cast p2, Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    goto :goto_2b

    .line 522
    :cond_28
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public isReady()Z
    .registers 10

    .line 445
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_18

    iget-object v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_22

    .line 446
    :cond_18
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_25

    .line 448
    :cond_22
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 450
    :cond_25
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_2d

    return v0

    .line 453
    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_38

    return v1

    .line 458
    :cond_38
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs",
            "positionUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0, p5, p6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 979
    :cond_8
    iget-object p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget p3, p2, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p2, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 982
    iget p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 983
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    return p4
.end method

.method maybeNotifyRenderedFirstFrame()V
    .registers 3

    .line 1073
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1074
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1075
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 667
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    return-void
.end method

.method protected onDisabled()V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 480
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 481
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    const/4 v0, 0x0

    .line 482
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 483
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 484
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 485
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->disable()V

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 488
    :try_start_1a
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_25

    .line 490
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    return-void

    :catchall_25
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "joining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 397
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 398
    iget p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 399
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getConfiguration()Landroidx/media2/exoplayer/external/RendererConfiguration;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 400
    :goto_12
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 401
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq v0, p1, :cond_1b

    .line 402
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 404
    :cond_1b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->enabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 405
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->enable()V

    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formatHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 672
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    .line 673
    iget-object p1, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 674
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 675
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 676
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "outputFormat"
        }
    .end annotation

    const-string v0, "crop-right"

    .line 698
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_23

    .line 699
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 700
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_31

    .line 703
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_37

    :cond_31
    const-string v0, "width"

    .line 704
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_37
    if-eqz v1, :cond_44

    .line 707
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_4a

    :cond_44
    const-string v1, "height"

    .line 708
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 709
    :goto_4a
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "joining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 428
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 429
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 431
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 432
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v1, :cond_20

    .line 433
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v2, v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 434
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    :cond_20
    if-eqz p3, :cond_26

    .line 437
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_28

    .line 439
    :cond_26
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_28
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .line 875
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 876
    :goto_6
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v0, :cond_28

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_28

    .line 878
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    add-int/lit8 v0, v0, -0x1

    .line 879
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 880
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_28
    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .line 858
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 860
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    .line 862
    :cond_11
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 863
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 864
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 687
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 688
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 689
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1f

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1f

    .line 692
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_1f
    return-void
.end method

.method protected onReset()V
    .registers 5

    const/4 v0, 0x0

    .line 497
    :try_start_1
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    .line 499
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v1, :cond_15

    .line 500
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v2, v1, :cond_e

    .line 501
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 503
    :cond_e
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 504
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    :cond_15
    return-void

    :catchall_16
    move-exception v1

    .line 499
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v2, :cond_28

    .line 500
    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v3, v2, :cond_21

    .line 501
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 503
    :cond_21
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 504
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    :cond_28
    throw v1
.end method

.method protected onStarted()V
    .registers 5

    .line 465
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 466
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 473
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 474
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 475
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formats",
            "offsetUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 410
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 411
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    goto :goto_46

    .line 413
    :cond_e
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v2, v1

    if-ne v0, v2, :cond_32

    add-int/lit8 v0, v0, -0x1

    .line 414
    aget-wide v0, v1, v0

    const/16 v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 417
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 419
    :goto_36
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 420
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    aput-wide v2, v0, v1

    .line 422
    :goto_46
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
    .registers 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "elapsedRealtimeUs",
            "codec",
            "buffer",
            "bufferIndex",
            "bufferFlags",
            "bufferPresentationTimeUs",
            "shouldSkip",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v5, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p7

    move-wide/from16 v0, p9

    .line 724
    iget-wide v2, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v12

    if-nez v4, :cond_19

    .line 725
    iput-wide v5, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 728
    :cond_19
    iget-wide v2, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    sub-long v12, v0, v2

    const/4 v14, 0x1

    if-eqz p11, :cond_24

    .line 731
    invoke-virtual {v7, v10, v11, v12, v13}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v14

    :cond_24
    sub-long v2, v0, v5

    .line 736
    iget-object v4, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v15, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    const/16 v16, 0x0

    if-ne v4, v15, :cond_39

    .line 738
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 739
    invoke-virtual {v7, v10, v11, v12, v13}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v14

    :cond_38
    return v16

    .line 745
    :cond_39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getState()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_4a

    const/4 v4, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x0

    .line 747
    :goto_4b
    iget-boolean v15, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v15, :cond_eb

    if-eqz v4, :cond_5d

    iget-wide v14, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    sub-long v14, v17, v14

    .line 749
    invoke-virtual {v7, v2, v3, v14, v15}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v14

    if-eqz v14, :cond_5d

    goto/16 :goto_eb

    :cond_5d
    if-eqz v4, :cond_ea

    .line 760
    iget-wide v14, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v4, v5, v14

    if-nez v4, :cond_67

    goto/16 :goto_ea

    :cond_67
    sub-long v17, v17, v8

    sub-long v2, v2, v17

    .line 770
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    mul-long v2, v2, v19

    add-long/2addr v2, v14

    .line 774
    iget-object v4, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v17

    sub-long v0, v17, v14

    .line 776
    div-long v14, v0, v19

    .line 778
    invoke-virtual {v7, v14, v15, v8, v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v0

    if-eqz v0, :cond_92

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide/from16 v5, p1

    .line 779
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJ)Z

    move-result v0

    if-eqz v0, :cond_92

    return v16

    .line 781
    :cond_92
    invoke-virtual {v7, v14, v15, v8, v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 782
    invoke-virtual {v7, v10, v11, v12, v13}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;IJ)V

    :goto_9b
    const/4 v0, 0x1

    return v0

    .line 786
    :cond_9d
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_bf

    const-wide/32 v0, 0xc350

    cmp-long v2, v14, v0

    if-gez v2, :cond_ea

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, v17

    move-object/from16 v5, p12

    .line 789
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide/from16 v5, v17

    .line 790
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    goto :goto_9b

    :cond_bf
    const-wide/16 v0, 0x7530

    cmp-long v2, v14, v0

    if-gez v2, :cond_ea

    const-wide/16 v0, 0x2af8

    cmp-long v2, v14, v0

    if-lez v2, :cond_dc

    const-wide/16 v0, 0x2710

    sub-long/2addr v14, v0

    .line 801
    :try_start_ce
    div-long v14, v14, v19

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d3
    .catch Ljava/lang/InterruptedException; {:try_start_ce .. :try_end_d3} :catch_d4

    goto :goto_dc

    .line 803
    :catch_d4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    :cond_dc
    :goto_dc
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide/from16 v3, v17

    move-object/from16 v5, p12

    .line 807
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V

    .line 808
    invoke-virtual {v7, v10, v11, v12, v13}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    goto :goto_9b

    :cond_ea
    :goto_ea
    return v16

    .line 750
    :cond_eb
    :goto_eb
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v8

    move-object/from16 v5, p12

    .line 751
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V

    .line 752
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10a

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide v5, v8

    .line 753
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    goto :goto_10d

    .line 755
    :cond_10a
    invoke-virtual {v7, v10, v11, v12, v13}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    :goto_10d
    const/4 v0, 0x1

    return v0
.end method

.method protected releaseCodec()V
    .registers 3

    const/4 v0, 0x0

    .line 632
    :try_start_1
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 634
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void

    :catchall_7
    move-exception v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    throw v1
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs"
        }
    .end annotation

    .line 1013
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1014
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1015
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1016
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1018
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1019
    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1020
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs",
            "releaseTimeNs"
        }
    .end annotation

    .line 1035
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1036
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 1038
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 1039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1040
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1041
    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1042
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "earlyUs",
            "elapsedRealtimeUs"
        }
    .end annotation

    .line 917
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "earlyUs",
            "elapsedRealtimeUs"
        }
    .end annotation

    .line 904
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "earlyUs",
            "elapsedSinceLastRenderUs"
        }
    .end annotation

    .line 930
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_f

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method protected shouldInitCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecInfo"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method protected skipOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "presentationTimeUs"
        }
    .end annotation

    const-string p3, "skipVideoBuffer"

    .line 941
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 942
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 943
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 944
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "drmSessionManager",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 303
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 304
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 307
    :cond_a
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    .line 311
    :goto_12
    invoke-static {p1, p3, v3, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_22

    .line 316
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 319
    invoke-static {p1, p3, v1, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v4

    .line 325
    :cond_22
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_29

    return v2

    .line 328
    :cond_29
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->supportsFormatDrm(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p2

    if-nez p2, :cond_31

    const/4 p1, 0x2

    return p1

    .line 332
    :cond_31
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 333
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    .line 335
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_44

    const/16 p2, 0x10

    goto :goto_46

    :cond_44
    const/16 p2, 0x8

    :goto_46
    if-eqz v0, :cond_66

    .line 341
    invoke-static {p1, p3, v3, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 346
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_66

    .line 347
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 348
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 349
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_66

    const/16 v1, 0x20

    :cond_66
    if-eqz v0, :cond_6a

    const/4 p1, 0x4

    goto :goto_6b

    :cond_6a
    const/4 p1, 0x3

    :goto_6b
    or-int/2addr p2, v1

    or-int/2addr p1, p2

    return p1
.end method

.method protected updateDroppedBufferCounters(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "droppedBufferCount"
        }
    .end annotation

    .line 994
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedBufferCount:I

    .line 995
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 996
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 997
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 999
    iget p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_2a

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_2a

    .line 1000
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_2a
    return-void
.end method
