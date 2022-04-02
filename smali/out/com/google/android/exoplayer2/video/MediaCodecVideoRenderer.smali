.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentMediaFormat:Landroid/media/MediaFormat;

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private dummySurface:Landroid/view/Surface;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private final frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

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

.field tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 86
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 18

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 212
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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

    .line 255
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 337
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZZF)V

    move-wide v0, p3

    .line 344
    iput-wide v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    move/from16 v0, p10

    .line 345
    iput v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 347
    new-instance v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    .line 348
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 349
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v0

    iput-boolean v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 350
    iput-object v1, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    new-array v0, v0, [J

    .line 351
    iput-object v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 352
    iput-wide v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 353
    iput-wide v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 354
    iput-wide v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, -0x1

    .line 355
    iput v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 356
    iput v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 357
    iput v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 358
    iput v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    const/4 v0, 0x1

    .line 359
    iput v0, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 360
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .registers 4

    const/4 v0, 0x0

    .line 1216
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1221
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1b

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1225
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_1b
    return-void
.end method

.method private clearReportedVideoSize()V
    .registers 3

    const/4 v0, -0x1

    .line 1244
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1245
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedHeight:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1246
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    .line 1247
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .registers 4

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1305
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1306
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .registers 2

    .line 1579
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I
    .registers 11

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a9

    if-ne p3, v0, :cond_7

    goto/16 :goto_a9

    .line 1527
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

    .line 1534
    :cond_61
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1535
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 1536
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 1537
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_8e

    goto :goto_9f

    :cond_8e
    const/16 p0, 0x10

    .line 1543
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {p3, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

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

    .line 1561
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

.method private static getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .registers 15

    .line 1447
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    .line 1448
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    goto :goto_11

    :cond_f
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    :goto_11
    if-eqz v0, :cond_16

    .line 1449
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    goto :goto_18

    :cond_16
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    :goto_18
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1451
    sget-object v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

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

    .line 1456
    :cond_2c
    sget v10, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_4d

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

    .line 1457
    :goto_3b
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1459
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1460
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_72

    return-object v7

    :cond_4d
    const/16 v10, 0x10

    .line 1466
    :try_start_4f
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1467
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    .line 1468
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v10, v11, :cond_72

    .line 1469
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

    :goto_6e
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_71
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_4f .. :try_end_71} :catch_75

    return-object p0

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :catch_75
    :cond_75
    :goto_75
    return-object v7
.end method

.method private static getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 445
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 450
    :cond_9
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 452
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object v1

    const-string v2, "video/dolby-vision"

    .line 453
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 456
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 458
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x100

    if-ne p1, v0, :cond_30

    goto :goto_3e

    :cond_30
    const/16 v0, 0x200

    if-ne p1, v0, :cond_47

    const-string p1, "video/avc"

    .line 466
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 465
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    :cond_3e
    :goto_3e
    const-string p1, "video/hevc"

    .line 462
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 461
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    :cond_47
    :goto_47
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 5

    .line 1491
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 1495
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p0, :cond_1c

    .line 1497
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1499
    :cond_1c
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1503
    :cond_20
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static isBufferLate(J)Z
    .registers 5

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

    .line 1272
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_18

    .line 1273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1274
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1275
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1276
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1277
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_18
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .registers 6

    .line 1251
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v0, v1, :cond_40

    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedWidth:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedHeight:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_40

    .line 1255
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 1257
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1258
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedHeight:I

    .line 1259
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    .line 1260
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    :cond_40
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 1238
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_b

    .line 1239
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_b
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .registers 6

    .line 1265
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_16

    .line 1266
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedHeight:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_16
    return-void
.end method

.method private notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 14

    .line 976
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_b

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 977
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_b
    return-void
.end method

.method private onProcessedTunneledEndOfStream()V
    .registers 1

    .line 1004
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingOutputEndOfStream()V

    return-void
.end method

.method private processOutputFormat(Landroid/media/MediaCodec;II)V
    .registers 4

    .line 953
    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 954
    iput p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 955
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 956
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_28

    .line 960
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_18

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_2c

    .line 961
    :cond_18
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 962
    iget p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 963
    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 964
    iget p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    goto :goto_2c

    .line 968
    :cond_28
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 971
    :cond_2c
    :goto_2c
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method private static setHdr10PlusInfoV29(Landroid/media/MediaCodec;[B)V
    .registers 4

    .line 1293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 1294
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1295
    invoke-virtual {p0, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .registers 6

    .line 1211
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 1212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private static setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .registers 2

    .line 1300
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-nez p1, :cond_1e

    .line 609
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_8

    move-object p1, v0

    goto :goto_1e

    .line 612
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 613
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 614
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 620
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_5e

    .line 621
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 622
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 623
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 625
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3e

    if-eqz p1, :cond_3e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_3e

    .line 626
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    goto :goto_44

    .line 628
    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 629
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeInitCodec()V

    :cond_44
    :goto_44
    if-eqz p1, :cond_57

    .line 632
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v1, :cond_57

    .line 634
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 636
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_6a

    .line 638
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_6a

    .line 642
    :cond_57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 643
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_6a

    :cond_5e
    if-eqz p1, :cond_6a

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_6a

    .line 648
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 649
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 4

    .line 1204
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1206
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1207
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

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
.method protected canKeepCodec(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .registers 6

    const/4 p1, 0x1

    .line 697
    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v0, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt p1, v0, :cond_2b

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->height:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v0, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt p1, v0, :cond_2b

    .line 701
    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt p1, p2, :cond_2b

    .line 702
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

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
    .registers 9

    const-string v0, "OMX.google"

    .line 1605
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    .line 1609
    :cond_a
    const-class p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    monitor-enter p1

    .line 1610
    :try_start_d
    sget-boolean v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v1, :cond_65e

    .line 1611
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-gt v1, v2, :cond_30

    const-string v1, "dangal"

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "HWEML"

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1614
    :cond_2c
    sput-boolean v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    goto/16 :goto_65c

    .line 1615
    :cond_30
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_36

    goto/16 :goto_65c

    .line 1634
    :cond_36
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    sparse-switch v4, :sswitch_data_666

    goto/16 :goto_618

    :sswitch_43
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x37

    goto/16 :goto_619

    :sswitch_4f
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x36

    goto/16 :goto_619

    :sswitch_5b
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x1c

    goto/16 :goto_619

    :sswitch_67
    const-string v4, "ELUGA_Note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    goto/16 :goto_619

    :sswitch_71
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0xc

    goto/16 :goto_619

    :sswitch_7d
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x35

    goto/16 :goto_619

    :sswitch_89
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x34

    goto/16 :goto_619

    :sswitch_95
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x10

    goto/16 :goto_619

    :sswitch_a1
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x3a

    goto/16 :goto_619

    :sswitch_ad
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x57

    goto/16 :goto_619

    :sswitch_b9
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x67

    goto/16 :goto_619

    :sswitch_c5
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x39

    goto/16 :goto_619

    :sswitch_d1
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x14

    goto/16 :goto_619

    :sswitch_dd
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x77

    goto/16 :goto_619

    :sswitch_e9
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x32

    goto/16 :goto_619

    :sswitch_f5
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x1e

    goto/16 :goto_619

    :sswitch_101
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x33

    goto/16 :goto_619

    :sswitch_10d
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x3c

    goto/16 :goto_619

    :sswitch_119
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x43

    goto/16 :goto_619

    :sswitch_125
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x53

    goto/16 :goto_619

    :sswitch_131
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x3d

    goto/16 :goto_619

    :sswitch_13d
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x8

    goto/16 :goto_619

    :sswitch_149
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x45

    goto/16 :goto_619

    :sswitch_155
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x30

    goto/16 :goto_619

    :sswitch_161
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x2f

    goto/16 :goto_619

    :sswitch_16d
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x2e

    goto/16 :goto_619

    :sswitch_179
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x65

    goto/16 :goto_619

    :sswitch_185
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x5d

    goto/16 :goto_619

    :sswitch_191
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x6f

    goto/16 :goto_619

    :sswitch_19d
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x6e

    goto/16 :goto_619

    :sswitch_1a9
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x6d

    goto/16 :goto_619

    :sswitch_1b5
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x6c

    goto/16 :goto_619

    :sswitch_1c1
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0xa

    goto/16 :goto_619

    :sswitch_1cd
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x9

    goto/16 :goto_619

    :sswitch_1d9
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x31

    goto/16 :goto_619

    :sswitch_1e5
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x46

    goto/16 :goto_619

    :sswitch_1f1
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x15

    goto/16 :goto_619

    :sswitch_1fd
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x6

    goto/16 :goto_619

    :sswitch_208
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x42

    goto/16 :goto_619

    :sswitch_214
    const-string v2, "l5460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x41

    goto/16 :goto_619

    :sswitch_220
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x38

    goto/16 :goto_619

    :sswitch_22c
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x79

    goto/16 :goto_619

    :sswitch_238
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x72

    goto/16 :goto_619

    :sswitch_244
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x63

    goto/16 :goto_619

    :sswitch_250
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x61

    goto/16 :goto_619

    :sswitch_25c
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x5f

    goto/16 :goto_619

    :sswitch_268
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x25

    goto/16 :goto_619

    :sswitch_274
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x24

    goto/16 :goto_619

    :sswitch_280
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x23

    goto/16 :goto_619

    :sswitch_28c
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x22

    goto/16 :goto_619

    :sswitch_298
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x21

    goto/16 :goto_619

    :sswitch_2a4
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x20

    goto/16 :goto_619

    :sswitch_2b0
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x1f

    goto/16 :goto_619

    :sswitch_2bc
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x19

    goto/16 :goto_619

    :sswitch_2c8
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x5

    goto/16 :goto_619

    :sswitch_2d3
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0xd

    goto/16 :goto_619

    :sswitch_2df
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x47

    goto/16 :goto_619

    :sswitch_2eb
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x50

    goto/16 :goto_619

    :sswitch_2f7
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x49

    goto/16 :goto_619

    :sswitch_303
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x40

    goto/16 :goto_619

    :sswitch_30f
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x27

    goto/16 :goto_619

    :sswitch_31b
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x7a

    goto/16 :goto_619

    :sswitch_327
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x62

    goto/16 :goto_619

    :sswitch_333
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x60

    goto/16 :goto_619

    :sswitch_33f
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x51

    goto/16 :goto_619

    :sswitch_34b
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x2

    goto/16 :goto_619

    :sswitch_356
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x1

    goto/16 :goto_619

    :sswitch_361
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x0

    goto/16 :goto_619

    :sswitch_36c
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x26

    goto/16 :goto_619

    :sswitch_378
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x18

    goto/16 :goto_619

    :sswitch_384
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x17

    goto/16 :goto_619

    :sswitch_390
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x16

    goto/16 :goto_619

    :sswitch_39c
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x7d

    goto/16 :goto_619

    :sswitch_3a8
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x66

    goto/16 :goto_619

    :sswitch_3b4
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x5e

    goto/16 :goto_619

    :sswitch_3c0
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x52

    goto/16 :goto_619

    :sswitch_3cc
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x4a

    goto/16 :goto_619

    :sswitch_3d8
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x44

    goto/16 :goto_619

    :sswitch_3e4
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x3e

    goto/16 :goto_619

    :sswitch_3f0
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x48

    goto/16 :goto_619

    :sswitch_3fc
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x73

    goto/16 :goto_619

    :sswitch_408
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x71

    goto/16 :goto_619

    :sswitch_414
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x64

    goto/16 :goto_619

    :sswitch_420
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x11

    goto/16 :goto_619

    :sswitch_42c
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x78

    goto/16 :goto_619

    :sswitch_438
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x1a

    goto/16 :goto_619

    :sswitch_444
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x7c

    goto/16 :goto_619

    :sswitch_450
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0xe

    goto/16 :goto_619

    :sswitch_45c
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x6b

    goto/16 :goto_619

    :sswitch_468
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x5c

    goto/16 :goto_619

    :sswitch_474
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x2a

    goto/16 :goto_619

    :sswitch_480
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x28

    goto/16 :goto_619

    :sswitch_48c
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x4f

    goto/16 :goto_619

    :sswitch_498
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x76

    goto/16 :goto_619

    :sswitch_4a4
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x75

    goto/16 :goto_619

    :sswitch_4b0
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x69

    goto/16 :goto_619

    :sswitch_4bc
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x7

    goto/16 :goto_619

    :sswitch_4c7
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x4c

    goto/16 :goto_619

    :sswitch_4d3
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x70

    goto/16 :goto_619

    :sswitch_4df
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x1d

    goto/16 :goto_619

    :sswitch_4eb
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x6a

    goto/16 :goto_619

    :sswitch_4f7
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x4

    goto/16 :goto_619

    :sswitch_502
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/4 v2, 0x3

    goto/16 :goto_619

    :sswitch_50d
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x4b

    goto/16 :goto_619

    :sswitch_519
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x68

    goto/16 :goto_619

    :sswitch_525
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x3b

    goto/16 :goto_619

    :sswitch_531
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0xf

    goto/16 :goto_619

    :sswitch_53d
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x29

    goto/16 :goto_619

    :sswitch_549
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x56

    goto/16 :goto_619

    :sswitch_555
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x55

    goto/16 :goto_619

    :sswitch_561
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x54

    goto/16 :goto_619

    :sswitch_56d
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x74

    goto/16 :goto_619

    :sswitch_579
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x5b

    goto/16 :goto_619

    :sswitch_585
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x12

    goto/16 :goto_619

    :sswitch_591
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x7b

    goto/16 :goto_619

    :sswitch_59d
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0xb

    goto/16 :goto_619

    :sswitch_5a9
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x5a

    goto/16 :goto_619

    :sswitch_5b5
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x59

    goto :goto_619

    :sswitch_5c0
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x58

    goto :goto_619

    :sswitch_5cb
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x4e

    goto :goto_619

    :sswitch_5d6
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x4d

    goto :goto_619

    :sswitch_5e1
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x13

    goto :goto_619

    :sswitch_5ec
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x3f

    goto :goto_619

    :sswitch_5f7
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x2d

    goto :goto_619

    :sswitch_602
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x2c

    goto :goto_619

    :sswitch_60d
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_618

    const/16 v2, 0x2b

    goto :goto_619

    :cond_618
    :goto_618
    const/4 v2, -0x1

    :goto_619
    packed-switch v2, :pswitch_data_860

    goto :goto_61f

    .line 1761
    :pswitch_61d
    sput-boolean v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1767
    :goto_61f
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x236fe21d

    if-eq v2, v4, :cond_648

    const v4, 0x1e9d52

    if-eq v2, v4, :cond_63f

    const v0, 0x1e9d5f

    if-eq v2, v0, :cond_635

    goto :goto_652

    :cond_635
    const-string v0, "AFTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_652

    const/4 v0, 0x1

    goto :goto_653

    :cond_63f
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_652

    goto :goto_653

    :cond_648
    const-string v0, "JSN-L21"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_652

    const/4 v0, 0x2

    goto :goto_653

    :cond_652
    :goto_652
    const/4 v0, -0x1

    :goto_653
    if-eqz v0, :cond_65a

    if-eq v0, v3, :cond_65a

    if-eq v0, v6, :cond_65a

    goto :goto_65c

    .line 1771
    :cond_65a
    sput-boolean v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1778
    :goto_65c
    sput-boolean v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1780
    :cond_65e
    monitor-exit p1
    :try_end_65f
    .catchall {:try_start_d .. :try_end_65f} :catchall_662

    .line 1781
    sget-boolean p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p1

    :catchall_662
    move-exception v0

    .line 1780
    :try_start_663
    monitor-exit p1
    :try_end_664
    .catchall {:try_start_663 .. :try_end_664} :catchall_662

    throw v0

    nop

    :sswitch_data_666
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_60d
        -0x7fd6c381 -> :sswitch_602
        -0x7fd6c368 -> :sswitch_5f7
        -0x7d026749 -> :sswitch_5ec
        -0x78929d6a -> :sswitch_5e1
        -0x75f50a1e -> :sswitch_5d6
        -0x75f4fe9d -> :sswitch_5cb
        -0x736f875c -> :sswitch_5c0
        -0x736f83c2 -> :sswitch_5b5
        -0x736f83c1 -> :sswitch_5a9
        -0x7327ce1c -> :sswitch_59d
        -0x651ebb62 -> :sswitch_591
        -0x6423293b -> :sswitch_585
        -0x604f5117 -> :sswitch_579
        -0x5ca40cc4 -> :sswitch_56d
        -0x58520ec1 -> :sswitch_561
        -0x58520eba -> :sswitch_555
        -0x58520eb9 -> :sswitch_549
        -0x4eaed329 -> :sswitch_53d
        -0x4892fb4f -> :sswitch_531
        -0x465b3df3 -> :sswitch_525
        -0x43e6c939 -> :sswitch_519
        -0x3ec0fcc5 -> :sswitch_50d
        -0x3b33cca0 -> :sswitch_502
        -0x3b33cc9a -> :sswitch_4f7
        -0x398ae3f6 -> :sswitch_4eb
        -0x391f0fb4 -> :sswitch_4df
        -0x346837ae -> :sswitch_4d3
        -0x323788e3 -> :sswitch_4c7
        -0x30f57652 -> :sswitch_4bc
        -0x2f88a116 -> :sswitch_4b0
        -0x2f61ed98 -> :sswitch_4a4
        -0x2efd0837 -> :sswitch_498
        -0x2e9e9441 -> :sswitch_48c
        -0x2247b8b1 -> :sswitch_480
        -0x1f0fa2b7 -> :sswitch_474
        -0x19af3b41 -> :sswitch_468
        -0x114fad3e -> :sswitch_45c
        -0x10dae90b -> :sswitch_450
        -0x1084b7b7 -> :sswitch_444
        -0xa5988e9 -> :sswitch_438
        -0x35f9fbf -> :sswitch_42c
        0x84e -> :sswitch_420
        0xa04 -> :sswitch_414
        0xa9b -> :sswitch_408
        0xa9f -> :sswitch_3fc
        0xd9b -> :sswitch_3f0
        0x11ebd -> :sswitch_3e4
        0x127db -> :sswitch_3d8
        0x12beb -> :sswitch_3cc
        0x1334d -> :sswitch_3c0
        0x135c9 -> :sswitch_3b4
        0x13aea -> :sswitch_3a8
        0x158d2 -> :sswitch_39c
        0x1821e -> :sswitch_390
        0x18220 -> :sswitch_384
        0x18401 -> :sswitch_378
        0x18c69 -> :sswitch_36c
        0x1716e6 -> :sswitch_361
        0x171ac8 -> :sswitch_356
        0x171ac9 -> :sswitch_34b
        0x252f5f -> :sswitch_33f
        0x25981d -> :sswitch_333
        0x259b88 -> :sswitch_327
        0x290a13 -> :sswitch_31b
        0x3021fd -> :sswitch_30f
        0x321e47 -> :sswitch_303
        0x332327 -> :sswitch_2f7
        0x33ab63 -> :sswitch_2eb
        0x27691fb -> :sswitch_2df
        0x349f581 -> :sswitch_2d3
        0x3ab0ea7 -> :sswitch_2c8
        0x3e53ea5 -> :sswitch_2bc
        0x3f25a44 -> :sswitch_2b0
        0x3f25a46 -> :sswitch_2a4
        0x3f25a49 -> :sswitch_298
        0x3f25e05 -> :sswitch_28c
        0x3f25e07 -> :sswitch_280
        0x3f25e09 -> :sswitch_274
        0x3f261c6 -> :sswitch_268
        0x48dce49 -> :sswitch_25c
        0x48dd589 -> :sswitch_250
        0x48dd8af -> :sswitch_244
        0x4d36832 -> :sswitch_238
        0x4f0b0e7 -> :sswitch_22c
        0x5e2479e -> :sswitch_220
        0x60acc05 -> :sswitch_214
        0x6214744 -> :sswitch_208
        0x9d91379 -> :sswitch_1fd
        0xadc0551 -> :sswitch_1f1
        0xea056b3 -> :sswitch_1e5
        0x1121dbc3 -> :sswitch_1d9
        0x1255818c -> :sswitch_1cd
        0x1263990d -> :sswitch_1c1
        0x12d90f3a -> :sswitch_1b5
        0x12d90f4c -> :sswitch_1a9
        0x12d98b1b -> :sswitch_19d
        0x12d98b22 -> :sswitch_191
        0x1844c711 -> :sswitch_185
        0x1e3e8044 -> :sswitch_179
        0x2f5336ed -> :sswitch_16d
        0x2f54115e -> :sswitch_161
        0x2f541849 -> :sswitch_155
        0x31cf010e -> :sswitch_149
        0x36ad82f4 -> :sswitch_13d
        0x391a0b61 -> :sswitch_131
        0x3f3728cd -> :sswitch_125
        0x448ec687 -> :sswitch_119
        0x46260f63 -> :sswitch_10d
        0x4c505106 -> :sswitch_101
        0x4de67084 -> :sswitch_f5
        0x506ac5a9 -> :sswitch_e9
        0x5abad9cd -> :sswitch_dd
        0x64d2e6e9 -> :sswitch_d1
        0x65e4085b -> :sswitch_c5
        0x6f373556 -> :sswitch_b9
        0x719f1dcb -> :sswitch_ad
        0x75d9a0f0 -> :sswitch_a1
        0x7796d144 -> :sswitch_95
        0x78fc0e50 -> :sswitch_89
        0x790521fb -> :sswitch_7d
        0x7933207f -> :sswitch_71
        0x7a05a409 -> :sswitch_67
        0x7a0696bd -> :sswitch_5b
        0x7a16dfe7 -> :sswitch_4f
        0x7a1f0e95 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_860
    .packed-switch 0x0
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
        :pswitch_61d
    .end packed-switch
.end method

.method protected configureCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
    .registers 13

    .line 671
    iget-object v2, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 672
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 673
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    iget v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    move-object v0, p0

    move-object v1, p3

    move v4, p5

    .line 674
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p3

    .line 681
    iget-object p5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez p5, :cond_34

    .line 682
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p5

    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 683
    iget-object p5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-nez p5, :cond_30

    .line 684
    iget-object p5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p5, p1}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 686
    :cond_30
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 688
    :cond_34
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 689
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_4c

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_4c

    .line 690
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_4c
    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .registers 5

    const-string p3, "dropVideoBuffer"

    .line 1101
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1102
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1103
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 1104
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    return-void
.end method

.method protected flushOrReleaseCodec()Z
    .registers 3

    const/4 v0, 0x0

    .line 723
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    .line 725
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return v1

    :catchall_8
    move-exception v1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 726
    throw v1
.end method

.method protected getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .registers 15

    .line 1383
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1384
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1385
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    .line 1386
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_2b

    if-eq v2, v5, :cond_25

    .line 1390
    iget-object p3, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v3, p2, Lcom/google/android/exoplayer2/Format;->width:I

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1391
    invoke-static {p1, p3, v3, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p1

    if-eq p1, v5, :cond_25

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1399
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1402
    :cond_25
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1405
    :cond_2b
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2f
    if-ge v7, v3, :cond_5d

    aget-object v9, p3, v7

    .line 1406
    invoke-virtual {p1, p2, v9, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 1408
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v10, v5, :cond_44

    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

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

    .line 1410
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1411
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1412
    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_5d
    if-eqz v8, :cond_b3

    .line 1416
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_b3

    .line 1419
    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1420
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1421
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1424
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result p1

    .line 1422
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec max resolution adjusted to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    :cond_b3
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method protected getCodecNeedsEosPropagation()Z
    .registers 3

    .line 661
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .registers 9

    .line 735
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_6
    if-ge v1, p2, :cond_17

    aget-object v3, p3, v1

    .line 736
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_14

    .line 738
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

.method protected getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 436
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .registers 9

    .line 1331
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 1333
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1335
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1336
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1338
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const-string v1, "frame-rate"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1339
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v1, "rotation-degrees"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1340
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 1341
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 1344
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1346
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1347
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 1346
    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1351
    :cond_4d
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1352
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string p2, "max-height"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1353
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1356
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_79

    const-string p1, "priority"

    .line 1357
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_79

    const-string p1, "operating-rate"

    .line 1359
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_79
    if-eqz p5, :cond_86

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    .line 1363
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1364
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_86
    if-eqz p6, :cond_8b

    .line 1367
    invoke-static {v0, p6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_8b
    return-object v0
.end method

.method protected handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 805
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_5

    return-void

    .line 808
    :cond_5
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 809
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4f

    .line 811
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 812
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 813
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 814
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 815
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 816
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_4f

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_4f

    const/4 v0, 0x1

    if-ne v2, v0, :cond_4f

    const/4 v0, 0x4

    if-ne v3, v0, :cond_4f

    if-nez v4, :cond_4f

    .line 824
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 825
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 826
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 828
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Landroid/media/MediaCodec;[B)V

    :cond_4f
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 592
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_2b

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_20

    .line 594
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 595
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 597
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_2b

    :cond_20
    const/4 v0, 0x6

    if-ne p1, v0, :cond_28

    .line 600
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_2b

    .line 602
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public isReady()Z
    .registers 10

    .line 524
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_18

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_22

    .line 525
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_25

    .line 527
    :cond_22
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 529
    :cond_25
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_2d

    return v0

    .line 532
    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_38

    return v1

    .line 537
    :cond_38
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJZ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1128
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1132
    :cond_8
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 1135
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    if-eqz p7, :cond_1d

    .line 1137
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_20

    .line 1139
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 1141
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    return p4
.end method

.method maybeNotifyRenderedFirstFrame()V
    .registers 3

    .line 1231
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1232
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1233
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .registers 12

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 748
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    return-void
.end method

.method protected onDisabled()V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 559
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 560
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    const/4 v0, 0x0

    .line 561
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentMediaFormat:Landroid/media/MediaFormat;

    .line 563
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 564
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 565
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->disable()V

    .line 566
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 568
    :try_start_1c
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_27

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 571
    throw v0
.end method

.method protected onEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 476
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 477
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 478
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 479
    :goto_12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 480
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq v0, p1, :cond_1b

    .line 481
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 483
    :cond_1b
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 484
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->enable()V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 755
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    .line 756
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 758
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 759
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 9

    .line 781
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentMediaFormat:Landroid/media/MediaFormat;

    const-string v0, "crop-right"

    .line 783
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_25

    .line 784
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 785
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 786
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_33

    .line 789
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 790
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_39

    :cond_33
    const-string v0, "width"

    .line 792
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_39
    if-eqz v1, :cond_46

    .line 795
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 796
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_4c

    :cond_46
    const-string v1, "height"

    .line 798
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 799
    :goto_4c
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 506
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 507
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 508
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const/4 v0, 0x0

    .line 509
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 510
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 511
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v1, :cond_20

    .line 512
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v2, v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 513
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    :cond_20
    if-eqz p3, :cond_26

    .line 516
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_28

    .line 518
    :cond_26
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_28
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 9

    .line 1015
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1016
    :goto_6
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_2b

    .line 1018
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    add-int/lit8 v0, v0, -0x1

    .line 1019
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 1020
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1032
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_6

    :cond_2b
    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .registers 6

    .line 993
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 995
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    .line 997
    :cond_11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 998
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 999
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 6

    .line 770
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 771
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 772
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1f

    .line 775
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_1f
    return-void
.end method

.method protected onReset()V
    .registers 5

    const/4 v0, 0x0

    .line 577
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    .line 579
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v1, :cond_15

    .line 580
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v2, v1, :cond_e

    .line 581
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 583
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 584
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    :cond_15
    return-void

    :catchall_16
    move-exception v1

    .line 579
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v2, :cond_28

    .line 580
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v3, v2, :cond_21

    .line 581
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 583
    :cond_21
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 584
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 586
    :cond_28
    throw v1
.end method

.method protected onStarted()V
    .registers 5

    .line 544
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 545
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 552
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 553
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 554
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 489
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 490
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    goto :goto_48

    .line 492
    :cond_e
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v1, v1

    if-ne v0, v1, :cond_34

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 496
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 498
    :goto_38
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    aput-wide v2, v0, v1

    .line 501
    :goto_48
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLcom/google/android/exoplayer2/Format;)Z
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v6, p1

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-wide/from16 v0, p9

    .line 846
    iget-wide v2, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v4

    if-nez v11, :cond_17

    .line 847
    iput-wide v6, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 850
    :cond_17
    iget-wide v2, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    sub-long v11, v0, v2

    const/4 v13, 0x1

    if-eqz p11, :cond_24

    if-nez p12, :cond_24

    .line 853
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v13

    :cond_24
    sub-long v2, v0, v6

    .line 858
    iget-object v14, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v15, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    const/16 v16, 0x0

    if-ne v14, v15, :cond_39

    .line 860
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 861
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v13

    :cond_38
    return v16

    .line 867
    :cond_39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    mul-long v14, v14, v17

    .line 868
    iget-wide v4, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    sub-long v4, v14, v4

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v13

    const/4 v0, 0x2

    move-wide/from16 v21, v14

    if-ne v13, v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    .line 871
    :goto_51
    iget-wide v13, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v13, v19

    if-nez v1, :cond_70

    iget-wide v13, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    cmp-long v1, v6, v13

    if-ltz v1, :cond_70

    iget-boolean v1, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v1, :cond_6e

    if-eqz v0, :cond_70

    .line 875
    invoke-virtual {v8, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v1

    if-eqz v1, :cond_70

    :cond_6e
    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    const/16 v13, 0x15

    if-eqz v1, :cond_99

    .line 877
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 878
    iget-object v6, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentMediaFormat:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v14

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 879
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v13, :cond_94

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v11

    move-wide v5, v14

    .line 880
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    goto :goto_97

    .line 882
    :cond_94
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    :goto_97
    const/4 v0, 0x1

    return v0

    :cond_99
    if-eqz v0, :cond_150

    .line 887
    iget-wide v0, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v4, v6, v0

    if-nez v4, :cond_a3

    goto/16 :goto_150

    :cond_a3
    sub-long v14, v21, p3

    sub-long/2addr v2, v14

    .line 897
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    mul-long v2, v2, v17

    add-long/2addr v2, v0

    .line 901
    iget-object v4, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    move-wide/from16 v14, p9

    invoke-virtual {v4, v14, v15, v2, v3}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v14

    sub-long v0, v14, v0

    .line 903
    div-long v21, v0, v17

    .line 905
    iget-wide v0, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c7

    const/16 v19, 0x1

    goto :goto_c9

    :cond_c7
    const/16 v19, 0x0

    :goto_c9
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move-wide/from16 v3, p3

    move/from16 v5, p12

    .line 906
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result v0

    if-eqz v0, :cond_e9

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v11

    move-wide/from16 v5, p1

    move/from16 v7, v19

    .line 907
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJZ)Z

    move-result v0

    if-eqz v0, :cond_e9

    return v16

    :cond_e9
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move-wide/from16 v3, p3

    move/from16 v5, p12

    .line 910
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v0

    if-eqz v0, :cond_102

    if-eqz v19, :cond_fd

    .line 912
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    goto :goto_100

    .line 914
    :cond_fd
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;IJ)V

    :goto_100
    const/4 v0, 0x1

    return v0

    .line 919
    :cond_102
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v13, :cond_123

    const-wide/32 v0, 0xc350

    cmp-long v2, v21, v0

    if-gez v2, :cond_150

    .line 922
    iget-object v6, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentMediaFormat:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v14

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v11

    move-wide v5, v14

    .line 924
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    :goto_121
    const/4 v0, 0x1

    return v0

    :cond_123
    const-wide/16 v0, 0x7530

    cmp-long v2, v21, v0

    if-gez v2, :cond_150

    const-wide/16 v0, 0x2af8

    cmp-long v2, v21, v0

    if-lez v2, :cond_141

    const-wide/16 v0, 0x2710

    sub-long v21, v21, v0

    .line 935
    :try_start_133
    div-long v21, v21, v17

    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_138
    .catch Ljava/lang/InterruptedException; {:try_start_133 .. :try_end_138} :catch_139

    goto :goto_141

    .line 937
    :catch_139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    .line 941
    :cond_141
    :goto_141
    iget-object v6, v8, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentMediaFormat:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v14

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 943
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    goto :goto_121

    :cond_150
    :goto_150
    return v16
.end method

.method protected releaseCodec()V
    .registers 3

    const/4 v0, 0x0

    .line 713
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 715
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void

    :catchall_7
    move-exception v1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 716
    throw v1
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .registers 7

    .line 1171
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1172
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1173
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1174
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1176
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1177
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V
    .registers 7

    .line 1193
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1194
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 1196
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1198
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1199
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJZ)Z
    .registers 6

    .line 1062
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected shouldDropOutputBuffer(JJZ)Z
    .registers 6

    .line 1047
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .registers 6

    .line 1076
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

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

.method protected shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

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

    const-string p3, "skipVideoBuffer"

    .line 1087
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1088
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1089
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1090
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 370
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 371
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 372
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 374
    :cond_e
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    .line 378
    :goto_16
    invoke-static {p1, p3, v3, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_26

    .line 383
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 386
    invoke-static {p1, p3, v1, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v4

    .line 392
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 393
    invoke-static {v2}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    :cond_31
    if-eqz v0, :cond_4a

    .line 395
    const-class v5, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    iget-object v6, p3, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 397
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    iget-object v5, p3, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez v5, :cond_48

    .line 399
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p2

    if-eqz p2, :cond_48

    goto :goto_4a

    :cond_48
    const/4 p2, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 p2, 0x1

    :goto_4b
    if-nez p2, :cond_53

    const/4 p1, 0x2

    .line 401
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 404
    :cond_53
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 405
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    .line 408
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_66

    const/16 p2, 0x10

    goto :goto_68

    :cond_66
    const/16 p2, 0x8

    :goto_68
    if-eqz v0, :cond_88

    .line 414
    invoke-static {p1, p3, v3, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_88

    .line 420
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 421
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 422
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_88

    const/16 v1, 0x20

    :cond_88
    if-eqz v0, :cond_8c

    const/4 p1, 0x4

    goto :goto_8d

    :cond_8c
    const/4 p1, 0x3

    .line 429
    :goto_8d
    invoke-static {p1, p2, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1
.end method

.method protected updateDroppedBufferCounters(I)V
    .registers 4

    .line 1152
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 1153
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1154
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1155
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1157
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_2a

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_2a

    .line 1158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_2a
    return-void
.end method
