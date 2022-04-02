.class public abstract Lcom/appnext/ads/fullscreen/Video;
.super Lcom/appnext/core/Ad;
.source "SourceFile"


# static fields
.field protected static final FULL_SCREEN_VIDEO:I = 0x1

.field protected static final REWARDED_VIDEO:I = 0x2

.field protected static final TID:Ljava/lang/String; = "301"

.field protected static final VID:Ljava/lang/String; = "2.5.1.472"

.field public static final VIDEO_LENGTH_LONG:Ljava/lang/String; = "30"

.field public static final VIDEO_LENGTH_SHORT:Ljava/lang/String; = "15"

.field private static cacheVideo:Z = true

.field protected static currentAd:Lcom/appnext/ads/fullscreen/Video; = null

.field private static init:Z = false

.field private static streamingEnable:Z = false


# instance fields
.field private canClose:Z

.field private language:Ljava/lang/String;

.field protected rnd:J

.field private rollCaptionTime:I

.field private showCta:Z

.field private type:I

.field private userOnAdError:Lcom/appnext/core/callbacks/OnAdError;

.field private videoEnded:Lcom/appnext/core/callbacks/OnVideoEnded;

.field private videoLength:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p3}, Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "15"

    .line 42
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video;->videoLength:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->showCta:Z

    const/4 p3, -0x2

    .line 50
    iput p3, p0, Lcom/appnext/ads/fullscreen/Video;->rollCaptionTime:I

    const-string p3, ""

    .line 51
    iput-object p3, p0, Lcom/appnext/ads/fullscreen/Video;->language:Ljava/lang/String;

    .line 61
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->canClose:Z

    .line 65
    iput p2, p0, Lcom/appnext/ads/fullscreen/Video;->type:I

    .line 66
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    .line 68
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/Video;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/appnext/ads/fullscreen/VideoConfig;)V
    .registers 7

    .line 72
    invoke-direct {p0, p1, p3}, Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "15"

    .line 42
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video;->videoLength:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->showCta:Z

    const/4 p3, -0x2

    .line 50
    iput p3, p0, Lcom/appnext/ads/fullscreen/Video;->rollCaptionTime:I

    const-string p3, ""

    .line 51
    iput-object p3, p0, Lcom/appnext/ads/fullscreen/Video;->language:Ljava/lang/String;

    .line 61
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->canClose:Z

    .line 73
    iput p2, p0, Lcom/appnext/ads/fullscreen/Video;->type:I

    .line 74
    new-instance p2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    const p3, 0x7fffffff

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    .line 76
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/Video;->init()V

    if-eqz p4, :cond_85

    .line 79
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getPostback()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/Video;->setPostback(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getCategories()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/Video;->setCategories(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getOrientation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/Video;->setOrientation(Ljava/lang/String;)V

    .line 1071
    iget-object p2, p4, Lcom/appnext/ads/fullscreen/VideoConfig;->showCta:Ljava/lang/Boolean;

    const/4 p3, 0x0

    if-eqz p2, :cond_49

    const/4 p2, 0x1

    goto :goto_4a

    :cond_49
    const/4 p2, 0x0

    :goto_4a
    if-eqz p2, :cond_53

    .line 83
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->isShowCta()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/Video;->setShowCta(Z)V

    .line 87
    :cond_53
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getRollCaptionTime()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/Video;->setRollCaptionTime(I)V

    .line 88
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getVideoLength()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/Video;->setVideoLength(Ljava/lang/String;)V

    .line 2059
    iget-object p2, p4, Lcom/appnext/ads/fullscreen/VideoConfig;->mute:Ljava/lang/Boolean;

    if-eqz p2, :cond_66

    goto :goto_67

    :cond_66
    const/4 p1, 0x0

    :goto_67
    if-eqz p1, :cond_70

    .line 90
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getMute()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setMute(Z)V

    .line 91
    :cond_70
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getMinVideoLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setMinVideoLength(I)V

    .line 92
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getMaxVideoLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setMaxVideoLength(I)V

    .line 93
    invoke-virtual {p4}, Lcom/appnext/ads/fullscreen/VideoConfig;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setLanguage(Ljava/lang/String;)V

    :cond_85
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/appnext/ads/fullscreen/Video;)V
    .registers 5

    .line 98
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "15"

    .line 42
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video;->videoLength:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->showCta:Z

    const/4 v0, -0x2

    .line 50
    iput v0, p0, Lcom/appnext/ads/fullscreen/Video;->rollCaptionTime:I

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/Video;->language:Ljava/lang/String;

    .line 61
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->canClose:Z

    .line 99
    iget p1, p2, Lcom/appnext/ads/fullscreen/Video;->type:I

    iput p1, p0, Lcom/appnext/ads/fullscreen/Video;->type:I

    .line 100
    iget-wide v0, p2, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    iput-wide v0, p0, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    .line 102
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getPostback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setPostback(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getCategories()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setCategories(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getOrientation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setOrientation(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getVideoLength()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setVideoLength(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getMute()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setMute(Z)V

    .line 107
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getMinVideoLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setMinVideoLength(I)V

    .line 108
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getMaxVideoLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setMaxVideoLength(I)V

    .line 109
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getRollCaptionTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setRollCaptionTime(I)V

    .line 110
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->isShowCta()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setShowCta(Z)V

    .line 111
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setLanguage(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getOnVideoEndedCallback()Lcom/appnext/core/callbacks/OnVideoEnded;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setOnVideoEndedCallback(Lcom/appnext/core/callbacks/OnVideoEnded;)V

    .line 114
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getOnAdClosedCallback()Lcom/appnext/core/callbacks/OnAdClosed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 115
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 116
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 117
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getOnAdOpenedCallback()Lcom/appnext/core/callbacks/OnAdOpened;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 118
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getOnAdLoadedCallback()Lcom/appnext/core/callbacks/OnAdLoaded;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 120
    invoke-virtual {p2}, Lcom/appnext/ads/fullscreen/Video;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/Video;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/appnext/ads/fullscreen/Video;->init:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/appnext/ads/fullscreen/Video;->init:Z

    return p0
.end method

.method static synthetic access$100(Lcom/appnext/ads/fullscreen/Video;)Landroid/content/Context;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appnext/ads/fullscreen/Video;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/appnext/ads/fullscreen/Video;->type:I

    return p0
.end method

.method static synthetic access$300(Lcom/appnext/ads/fullscreen/Video;)Lcom/appnext/core/callbacks/OnAdError;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/Video;->userOnAdError:Lcom/appnext/core/callbacks/OnAdError;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appnext/ads/fullscreen/Video;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/Video;->load()V

    return-void
.end method

.method static synthetic access$500(Lcom/appnext/ads/fullscreen/Video;)Landroid/content/Context;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appnext/ads/fullscreen/Video;)Landroid/content/Context;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static getCacheVideo()Z
    .registers 1

    .line 371
    sget-boolean v0, Lcom/appnext/ads/fullscreen/Video;->cacheVideo:Z

    return v0
.end method

.method private init()V
    .registers 4

    .line 124
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getTID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v0, v2, v1}, Lcom/appnext/core/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    new-instance v2, Lcom/appnext/ads/fullscreen/Video$1;

    invoke-direct {v2, p0}, Lcom/appnext/ads/fullscreen/Video$1;-><init>(Lcom/appnext/ads/fullscreen/Video;)V

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/p;->a(Landroid/content/Context;Lcom/appnext/core/p$a;)V

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/ads/fullscreen/Video$2;

    invoke-direct {v1, p0}, Lcom/appnext/ads/fullscreen/Video$2;-><init>(Lcom/appnext/ads/fullscreen/Video;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    new-instance v0, Lcom/appnext/ads/fullscreen/Video$3;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/Video$3;-><init>(Lcom/appnext/ads/fullscreen/Video;)V

    invoke-super {p0, v0}, Lcom/appnext/core/Ad;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    return-void
.end method

.method public static isStreamingModeEnabled()Z
    .registers 1

    .line 379
    sget-boolean v0, Lcom/appnext/ads/fullscreen/Video;->streamingEnable:Z

    return v0
.end method

.method private load()V
    .registers 5

    .line 254
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appnext/ads/fullscreen/Video$5;

    invoke-direct {v3, p0}, Lcom/appnext/ads/fullscreen/Video$5;-><init>(Lcom/appnext/ads/fullscreen/Video;)V

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;)V

    return-void
.end method

.method public static setCacheVideo(Z)V
    .registers 1

    .line 367
    sput-boolean p0, Lcom/appnext/ads/fullscreen/Video;->cacheVideo:Z

    return-void
.end method

.method public static setStreamingMode(Z)V
    .registers 1

    .line 375
    sput-boolean p0, Lcom/appnext/ads/fullscreen/Video;->streamingEnable:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 5

    .line 444
    invoke-super {p0}, Lcom/appnext/core/Ad;->destroy()V

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/Video;->videoEnded:Lcom/appnext/core/callbacks/OnVideoEnded;

    .line 450
    :try_start_6
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/appnext/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tmp/vid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appnext/core/f;->a(Ljava/io/File;)V
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_38

    :catchall_38
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 460
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected getConfig()Lcom/appnext/core/p;
    .registers 3

    .line 299
    iget v0, p0, Lcom/appnext/ads/fullscreen/Video;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 300
    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 302
    invoke-static {}, Lcom/appnext/ads/fullscreen/c;->m()Lcom/appnext/ads/fullscreen/c;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .registers 8

    if-eqz p1, :cond_17

    .line 280
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/appnext/ads/fullscreen/Video$6;

    invoke-direct {v4, p0, p1}, Lcom/appnext/ads/fullscreen/Video$6;-><init>(Lcom/appnext/ads/fullscreen/Video;Lcom/appnext/core/callbacks/OnECPMLoaded;)V

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V

    return-void

    .line 278
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;
    .registers 2

    .line 389
    invoke-super {p0}, Lcom/appnext/core/Ad;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    return-object v0
.end method

.method public getOnVideoEndedCallback()Lcom/appnext/core/callbacks/OnVideoEnded;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video;->videoEnded:Lcom/appnext/core/callbacks/OnVideoEnded;

    return-object v0
.end method

.method public getRollCaptionTime()I
    .registers 2

    .line 393
    iget v0, p0, Lcom/appnext/ads/fullscreen/Video;->rollCaptionTime:I

    return v0
.end method

.method protected getSessionId()Ljava/lang/String;
    .registers 2

    .line 439
    invoke-super {p0}, Lcom/appnext/core/Ad;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "301"

    return-object v0
.end method

.method public getVID()Ljava/lang/String;
    .registers 2

    const-string v0, "2.5.1.472"

    return-object v0
.end method

.method public getVideoLength()Ljava/lang/String;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video;->videoLength:Ljava/lang/String;

    return-object v0
.end method

.method public isAdLoaded()Z
    .registers 3

    .line 309
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 311
    :cond_e
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appnext/ads/fullscreen/b;->b(Lcom/appnext/core/Ad;)Z

    move-result v0

    return v0
.end method

.method public isBackButtonCanClose()Z
    .registers 2

    .line 434
    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/Video;->canClose:Z

    return v0
.end method

.method public isShowCta()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/Video;->showCta:Z

    return v0
.end method

.method public loadAd()V
    .registers 4

    .line 231
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 234
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 235
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 236
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    const-string v1, "Connection Error"

    invoke-interface {v0, v1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_25
    return-void

    .line 240
    :cond_26
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    new-instance v2, Lcom/appnext/ads/fullscreen/Video$4;

    invoke-direct {v2, p0}, Lcom/appnext/ads/fullscreen/Video$4;-><init>(Lcom/appnext/ads/fullscreen/Video;)V

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/p;->a(Landroid/content/Context;Lcom/appnext/core/p$a;)V

    return-void

    .line 232
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placement ID cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackButtonCanClose(Z)V
    .registers 2

    .line 430
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->canClose:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video;->language:Ljava/lang/String;

    return-void
.end method

.method public setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video;->userOnAdError:Lcom/appnext/core/callbacks/OnAdError;

    return-void
.end method

.method public setOnVideoEndedCallback(Lcom/appnext/core/callbacks/OnVideoEnded;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video;->videoEnded:Lcom/appnext/core/callbacks/OnVideoEnded;

    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 402
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/Video;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appnext/core/p;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRollCaptionTime(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-lt p1, v0, :cond_c

    const/16 v0, 0xa

    if-gt p1, v0, :cond_c

    .line 398
    :cond_a
    iput p1, p0, Lcom/appnext/ads/fullscreen/Video;->rollCaptionTime:I

    :cond_c
    return-void
.end method

.method public setShowCta(Z)V
    .registers 2

    .line 418
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/Video;->showCta:Z

    return-void
.end method

.method public setVideoLength(Ljava/lang/String;)V
    .registers 3

    const-string v0, "15"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 330
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong video length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_19
    :goto_19
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video;->videoLength:Ljava/lang/String;

    return-void
.end method

.method public showAd()V
    .registers 24

    move-object/from16 v0, p0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_100

    .line 188
    iget-object v1, v0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-static {v1, v2}, Lcom/appnext/core/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Connection Error"

    if-nez v1, :cond_28

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_27
    return-void

    .line 194
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getConfig()Lcom/appnext/core/p;

    move-result-object v1

    const-string v3, "min_internet_connection_video"

    invoke-virtual {v1, v3}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/f;->Z(Ljava/lang/String;)I

    move-result v1

    .line 195
    iget-object v3, v0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/appnext/core/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appnext/core/f;->Z(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_51

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_50
    return-void

    :cond_51
    if-ge v3, v1, :cond_63

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    const-string v2, "Too Slow Connection"

    invoke-interface {v1, v2}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_62
    return-void

    .line 207
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getTID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getVID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getAUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getSessionId()Ljava/lang/String;

    move-result-object v7

    iget v1, v0, Lcom/appnext/ads/fullscreen/Video;->type:I

    const-string v2, "fullscreen"

    const-string v12, "rewarded"

    const/4 v13, 0x1

    if-ne v1, v13, :cond_82

    move-object v9, v2

    goto :goto_83

    :cond_82
    move-object v9, v12

    :goto_83
    const-string v8, "show_request"

    const-string v10, ""

    const-string v11, ""

    invoke-static/range {v3 .. v11}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/ads/fullscreen/b;->b(Lcom/appnext/core/Ad;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 209
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    const-class v3, Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 210
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget v2, v0, Lcom/appnext/ads/fullscreen/Video;->type:I

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    sput-object v0, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    .line 218
    iget-object v2, v0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 221
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    if-eqz v1, :cond_cb

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v1

    const-string v3, "Ad Not Ready"

    invoke-interface {v1, v3}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    .line 224
    :cond_cb
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v1

    iget-object v3, v0, Lcom/appnext/ads/fullscreen/Video;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/appnext/ads/fullscreen/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getTID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getVID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getAUID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getPlacementID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/appnext/ads/fullscreen/Video;->getSessionId()Ljava/lang/String;

    move-result-object v18

    iget v1, v0, Lcom/appnext/ads/fullscreen/Video;->type:I

    if-ne v1, v13, :cond_f4

    move-object/from16 v20, v2

    goto :goto_f6

    :cond_f4
    move-object/from16 v20, v12

    :goto_f6
    const-string v19, "ad_not_ready"

    const-string v21, ""

    const-string v22, ""

    invoke-static/range {v14 .. v22}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Placement ID cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
