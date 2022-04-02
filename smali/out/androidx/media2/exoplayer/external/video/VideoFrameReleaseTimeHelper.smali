.class public final Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;,
        Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    }
.end annotation


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private final displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private vsyncDurationNs:J

.field private vsyncOffsetNs:J

.field private final vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    goto :goto_17

    .line 84
    :cond_15
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    .line 86
    :goto_17
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_2e

    .line 87
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_25

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->maybeBuildDefaultDisplayListenerV17(Landroid/content/Context;)Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    move-result-object v0

    :cond_25
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 88
    invoke-static {}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    goto :goto_32

    .line 90
    :cond_2e
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 91
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    :goto_32
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 94
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->updateDefaultDisplayRefreshRateParams()V

    return-void
.end method

.method private static closestVsync(JJJ)J
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "releaseTime",
            "sampledVsyncTime",
            "vsyncDuration"
        }
    .end annotation

    sub-long v0, p0, p2

    .line 219
    div-long/2addr v0, p4

    mul-long v0, v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_d

    sub-long p4, p2, p4

    goto :goto_11

    :cond_d
    add-long/2addr p4, p2

    move-wide v3, p2

    move-wide p2, p4

    move-wide p4, v3

    :goto_11
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long v2, v0, p0

    if-gez v2, :cond_19

    goto :goto_1a

    :cond_19
    move-wide p2, p4

    :goto_1a
    return-wide p2
.end method

.method private isDriftTooLarge(JJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameTimeNs",
            "releaseTimeNs"
        }
    .end annotation

    .line 213
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long/2addr p1, v0

    .line 214
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    .line 215
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long v0, p1, p3

    if-lez v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private maybeBuildDefaultDisplayListenerV17(Landroid/content/Context;)Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "display"

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    .line 199
    :cond_c
    new-instance v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-direct {v0, p0, p1}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;-><init>(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;Landroid/hardware/display/DisplayManager;)V

    move-object p1, v0

    :goto_12
    return-object p1
.end method

.method private updateDefaultDisplayRefreshRateParams()V
    .registers 5

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 206
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    .line 208
    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    :cond_22
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "framePresentationTimeUs",
            "unadjustedReleaseTimeNs"
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p1

    .line 139
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v2, :cond_42

    .line 141
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v4, p1, v2

    if-eqz v4, :cond_19

    .line 142
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 143
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    .line 145
    :cond_19
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v4, 0x6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_3a

    .line 150
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v4, v0, v4

    div-long/2addr v4, v2

    .line 153
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long/2addr v2, v4

    .line 155
    invoke-direct {p0, v2, v3, p3, p4}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 156
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_42

    .line 159
    :cond_33
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long/2addr v4, v6

    goto :goto_44

    .line 165
    :cond_3a
    invoke-direct {p0, v0, v1, p3, p4}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 166
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    :cond_42
    :goto_42
    move-wide v4, p3

    move-wide v2, v0

    .line 172
    :goto_44
    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v6, :cond_53

    .line 173
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    .line 174
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    const-wide/16 p3, 0x0

    .line 175
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const/4 p3, 0x1

    .line 176
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 179
    :cond_53
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    .line 180
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 182
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz p1, :cond_78

    iget-wide p2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p2, v0

    if-nez p4, :cond_67

    goto :goto_78

    .line 185
    :cond_67
    iget-wide v6, p1, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long p1, v6, v0

    if-nez p1, :cond_6e

    return-wide v4

    .line 191
    :cond_6e
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide p1

    .line 193
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_78
    :goto_78
    return-wide v4
.end method

.method public disable()V
    .registers 2

    .line 115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_10

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_b

    .line 117
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->unregister()V

    .line 119
    :cond_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    :cond_10
    return-void
.end method

.method public enable()V
    .registers 2

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_16

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_13

    .line 105
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->register()V

    .line 107
    :cond_13
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->updateDefaultDisplayRefreshRateParams()V

    :cond_16
    return-void
.end method
