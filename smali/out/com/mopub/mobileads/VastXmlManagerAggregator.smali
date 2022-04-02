.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "VastXmlManagerAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;,
        Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field private static final BITRATE_THRESHOLD_HIGH:I = 0x5dc

.field private static final BITRATE_THRESHOLD_LOW:I = 0x2bc

.field static final MAX_TIMES_TO_FOLLOW_VAST_REDIRECT:I = 0xa

.field private static final MIME_TYPE_3GPP:Ljava/lang/String; = "video/3gpp"

.field private static final MIME_TYPE_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MINIMUM_COMPANION_AD_HEIGHT:I = 0xfa

.field private static final MINIMUM_COMPANION_AD_WIDTH:I = 0x12c

.field private static final MOPUB:Ljava/lang/String; = "MoPub"

.field private static final VIDEO_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScreenAspectRatio:D

.field private final mScreenWidthDp:I

.field private mTimesFollowedVastRedirect:I

.field private final mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "video/mp4"

    const-string v1, "video/3gpp"

    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V
    .registers 7

    .line 103
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    .line 109
    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    .line 110
    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenWidthDp:I

    .line 111
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculateBitrateFitnessFactor(Ljava/lang/Integer;)D
    .registers 7

    if-eqz p1, :cond_e

    .line 762
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p1, 0x0

    :goto_f
    const/16 v0, 0x5dc

    const/16 v1, 0x2bc

    if-gt v1, p1, :cond_1a

    if-gt p1, v0, :cond_1a

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1a
    rsub-int v1, p1, 0x2bc

    .line 767
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    sub-int/2addr v0, p1

    .line 769
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x44bb8000    # 1500.0f

    div-float/2addr p1, v0

    float-to-double v3, p1

    .line 771
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private calculateFitness(IILjava/lang/Integer;Ljava/lang/String;)D
    .registers 9

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateScreenFitnessFactor(II)D

    move-result-wide p1

    .line 746
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateBitrateFitnessFactor(Ljava/lang/Integer;)D

    move-result-wide v0

    .line 747
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFormatFitnessFactor(Ljava/lang/String;)D

    move-result-wide p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v2

    add-double/2addr p1, v0

    div-double/2addr v2, p1

    mul-double p3, p3, v2

    return-wide p3
.end method

.method private calculateFormatFitnessFactor(Ljava/lang/String;)D
    .registers 5

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    const/4 v0, -0x1

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x63306f58

    if-eq v1, v2, :cond_1e

    const v2, 0x4f62635d

    if-eq v1, v2, :cond_14

    goto :goto_27

    :cond_14
    const-string v1, "video/mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_1e
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v0, 0x1

    :cond_27
    :goto_27
    if-eqz v0, :cond_2c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_2c
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method

.method private calculateScreenFitnessFactor(II)D
    .registers 7

    int-to-double v0, p1

    int-to-double v2, p2

    .line 787
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 788
    iget-wide v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 789
    iget p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenWidthDp:I

    sub-int p1, p2, p1

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    .line 791
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastInLineXmlManager;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .line 303
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 304
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 310
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getMediaXmlManagers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 313
    new-instance v0, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    .line 314
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 315
    invoke-direct {p0, v1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 320
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v1

    .line 325
    sget-object v2, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 326
    invoke-virtual {p0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 328
    invoke-virtual {p0, v1, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 330
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v0

    :cond_61
    const/4 p1, 0x0

    return-object p1
.end method

.method private evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastWrapperXmlManager;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getVastAdTagURI()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 404
    :cond_8
    :try_start_8
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->followVastRedirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_2b

    :catch_d
    move-exception p1

    .line 406
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to follow VAST redirect"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 407
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 408
    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v0, v0, v1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManager;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 494
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 497
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    if-lez p2, :cond_1b

    sget-object p2, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_1d

    :cond_1b
    sget-object p2, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    :goto_1d
    const/4 v0, 0x0

    .line 496
    invoke-static {p1, p2, v0, v0, p3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method private followVastRedirect(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 841
    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_3c

    add-int/lit8 v0, v0, 0x1

    .line 842
    iput v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 847
    :try_start_e
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_2f

    .line 848
    :try_start_12
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_2a

    .line 850
    :try_start_1b
    invoke-static {v0}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_28

    .line 852
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_27

    .line 854
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_27
    return-object v1

    :catchall_28
    move-exception v1

    goto :goto_33

    :catchall_2a
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_33

    :catchall_2f
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    .line 852
    :goto_33
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_3b

    .line 854
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3b
    throw v1

    :cond_3c
    return-object v1
.end method

.method static isValidSequenceNumber(Ljava/lang/String;)Z
    .registers 3

    .line 824
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 828
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_11

    const/4 v0, 0x2

    if-ge p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :catch_11
    :goto_11
    return v1
.end method

.method private populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 4

    const-string v0, "linearXmlManager cannot be null"

    .line 426
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig cannot be null"

    .line 427
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getAbsoluteProgressTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 431
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getFractionalProgressTrackers()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 432
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getPauseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    .line 433
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getResumeTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    .line 434
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 435
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCloseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    .line 436
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoSkipTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    .line 437
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 440
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 441
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    .line 445
    :cond_4f
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-nez v0, :cond_60

    .line 446
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getIconXmlManagers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V

    :cond_60
    return-void
.end method

.method private populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 4

    const-string v0, "xmlManager cannot be null"

    .line 461
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig cannot be null"

    .line 462
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getMoPubImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 466
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 467
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    .line 469
    :cond_1e
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 470
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    .line 472
    :cond_2b
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    .line 473
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method private populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 6

    .line 345
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 346
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    if-eqz v0, :cond_d

    return-void

    .line 353
    :cond_d
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 356
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->getVastExtensionXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    .line 358
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoPub"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 360
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object p1

    .line 359
    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    :cond_3a
    return-void
.end method

.method private populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 5

    .line 371
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 374
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->getVastExtensionXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    if-eqz v0, :cond_e

    .line 377
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getAvidJavaScriptResources()Ljava/util/Set;

    move-result-object v1

    .line 378
    invoke-virtual {p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addAvidJavascriptResources(Ljava/util/Set;)V

    .line 380
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getMoatImpressionPixels()Ljava/util/Set;

    move-result-object v0

    .line 381
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addMoatImpressionPixels(Ljava/util/Set;)V

    goto :goto_e

    :cond_2b
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 123
    array-length v1, p1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_c

    goto :goto_28

    .line 128
    :cond_c
    :try_start_c
    aget-object p1, p1, v1

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    .line 131
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to generate VastVideoConfig."

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_28
    :goto_28
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 50
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    return-object p1
.end method

.method evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    const-string v0, "vastXml cannot be null"

    .line 174
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorTrackers cannot be null"

    .line 175
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/mopub/mobileads/VastXmlManager;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastXmlManager;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 179
    :try_start_12
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastXmlManager;->parseVastXml(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_f0

    .line 187
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastXmlManager;->getAdXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 190
    iget-object v4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_22

    return-object v3

    .line 194
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_26
    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/VastAdXmlManager;

    .line 195
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastAdXmlManager;->getSequence()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->isValidSequenceNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_26

    .line 201
    :cond_3d
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastAdXmlManager;->getInLineXmlManager()Lcom/mopub/mobileads/VastInLineXmlManager;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 203
    invoke-direct {p0, v5, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 207
    invoke-direct {p0, v0, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v5

    .line 214
    :cond_4d
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastAdXmlManager;->getWrapperXmlManager()Lcom/mopub/mobileads/VastWrapperXmlManager;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 216
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-direct {p0, v4, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_66

    goto :goto_26

    .line 224
    :cond_66
    invoke-virtual {p0, v6, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    if-nez v5, :cond_6d

    goto :goto_26

    .line 238
    :cond_6d
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object p1

    .line 237
    invoke-virtual {v5, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 240
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 242
    invoke-direct {p0, p2, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_7c

    .line 244
    :cond_8c
    invoke-direct {p0, v4, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 245
    invoke-direct {p0, v4, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 248
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 251
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result p2

    if-nez p2, :cond_ac

    .line 252
    sget-object p2, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p2

    sget-object v1, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 255
    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p1

    .line 252
    invoke-virtual {v5, p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    goto :goto_eb

    .line 259
    :cond_ac
    invoke-virtual {v5, v2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p2

    .line 261
    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    if-eqz p2, :cond_eb

    if-eqz v1, :cond_eb

    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_bc
    :goto_bc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 265
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->hasResources()Z

    move-result v3

    if-nez v3, :cond_bc

    .line 267
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v3

    .line 266
    invoke-virtual {p2, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 269
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v3

    .line 268
    invoke-virtual {p2, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 271
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v3

    .line 270
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 273
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    goto :goto_bc

    .line 279
    :cond_eb
    :goto_eb
    invoke-direct {p0, v0, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v5

    :cond_ef
    return-object v3

    :catch_f0
    move-exception p1

    .line 181
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Failed to parse VAST XML"

    aput-object v5, v2, v4

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 182
    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v3, v3, v0}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-object v3
.end method

.method getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;",
            ")",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "managers cannot be null"

    .line 551
    invoke-static {v1, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "orientation cannot be null"

    .line 552
    invoke-static {v2, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 562
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v1

    array-length v4, v1

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_20
    if-ge v8, v4, :cond_ce

    aget-object v12, v1, v8

    .line 564
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 565
    :goto_28
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_bb

    .line 566
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 568
    invoke-virtual {v14}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v15

    .line 569
    invoke-virtual {v14}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v15, :cond_ad

    .line 570
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v17, v1

    const/16 v1, 0x12c

    if-lt v5, v1, :cond_af

    if-eqz v16, :cond_af

    .line 571
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0xfa

    if-ge v1, v5, :cond_53

    goto :goto_af

    .line 575
    :cond_53
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v1, v5, v12, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;

    move-result-object v1

    .line 577
    invoke-virtual {v14}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v5

    move-object/from16 v18, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    move/from16 v19, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 576
    invoke-static {v5, v12, v3, v4}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v3

    if-nez v3, :cond_72

    goto :goto_b3

    .line 585
    :cond_72
    sget-object v4, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-ne v4, v2, :cond_7e

    iget-wide v4, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    cmpg-double v22, v4, v20

    if-ltz v22, :cond_88

    :cond_7e
    sget-object v4, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    if-ne v4, v2, :cond_96

    iget-wide v4, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    cmpl-double v22, v4, v20

    if-lez v22, :cond_96

    .line 587
    :cond_88
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v15, 0x0

    invoke-direct {v0, v4, v5, v15, v15}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_a4

    :cond_96
    const/4 v4, 0x0

    .line 589
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v0, v5, v15, v4, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v15

    move-wide v4, v15

    :goto_a4
    cmpl-double v15, v4, v6

    if-lez v15, :cond_b3

    move-object v11, v1

    move-object v10, v3

    move-wide v6, v4

    move-object v9, v14

    goto :goto_b3

    :cond_ad
    move-object/from16 v17, v1

    :cond_af
    :goto_af
    move-object/from16 v18, v3

    move/from16 v19, v4

    :cond_b3
    :goto_b3
    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_28

    :cond_bb
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    if-eqz v9, :cond_c4

    goto :goto_ce

    :cond_c4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_20

    :cond_ce
    :goto_ce
    move-object v4, v10

    if-eqz v9, :cond_e8

    .line 604
    new-instance v8, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v2, v11, Landroid/graphics/Point;->x:I

    iget v3, v11, Landroid/graphics/Point;->y:I

    .line 608
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    .line 609
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v6

    .line 610
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    :cond_e8
    const/4 v1, 0x0

    return-object v1
.end method

.method getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/VastIconConfig;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "managers cannot be null"

    .line 690
    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 694
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_8e

    aget-object v4, v0, v3

    .line 695
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 696
    :cond_1a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 697
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastIconXmlManager;

    .line 699
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v7

    .line 700
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_1a

    .line 703
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x12c

    if-gt v9, v10, :cond_1a

    if-eqz v8, :cond_1a

    .line 704
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_1a

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_4d

    goto :goto_1a

    .line 709
    :cond_4d
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 708
    invoke-static {v9, v4, v7, v8}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v15

    if-nez v15, :cond_60

    goto :goto_1a

    .line 715
    :cond_60
    new-instance v0, Lcom/mopub/mobileads/VastIconConfig;

    .line 716
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 717
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 718
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getOffsetMS()Ljava/lang/Integer;

    move-result-object v13

    .line 719
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getDurationMS()Ljava/lang/Integer;

    move-result-object v14

    .line 721
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickTrackingUris()Ljava/util/List;

    move-result-object v16

    .line 722
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickThroughUri()Ljava/lang/String;

    move-result-object v17

    .line 723
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getViewTrackingUris()Ljava/util/List;

    move-result-object v18

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/mopub/mobileads/VastIconConfig;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_8e
    const/4 v0, 0x0

    return-object v0
.end method

.method getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastMediaXmlManager;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "managers cannot be null"

    .line 510
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v2, 0x0

    .line 516
    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 517
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/VastMediaXmlManager;

    .line 519
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getType()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getMediaUrl()Ljava/lang/String;

    move-result-object v5

    .line 521
    sget-object v6, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    if-nez v5, :cond_30

    goto :goto_60

    .line 526
    :cond_30
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v6

    .line 527
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v7

    .line 528
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getBitrate()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v6, :cond_11

    .line 529
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_11

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gtz v8, :cond_4d

    goto :goto_11

    .line 533
    :cond_4d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 534
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 533
    invoke-direct {p0, v6, v7, v3, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v3

    cmpl-double v6, v3, v0

    if-lez v6, :cond_11

    move-wide v0, v3

    move-object v2, v5

    goto :goto_11

    .line 522
    :cond_60
    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_64
    return-object v2
.end method

.method getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;
    .registers 10

    .line 633
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 634
    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 635
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 637
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float p1, p1

    .line 639
    iget-object v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    int-to-float p2, p2

    .line 640
    iget-object v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    .line 643
    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    if-ne v3, p4, :cond_36

    .line 644
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 645
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3e

    .line 647
    :cond_36
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 648
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3e
    add-int/lit8 v2, p4, -0x10

    if-gt p1, v2, :cond_47

    add-int/lit8 v2, v1, -0x10

    if-gt p2, v2, :cond_47

    return-object v0

    .line 657
    :cond_47
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 658
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v3, p3, :cond_5d

    .line 659
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 660
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_76

    :cond_5d
    int-to-float p1, p1

    int-to-float p3, p4

    div-float p3, p1, p3

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v3, p2, v3

    cmpl-float v4, p3, v3

    if-ltz v4, :cond_70

    .line 666
    iput p4, v2, Landroid/graphics/Point;->x:I

    div-float/2addr p2, p3

    float-to-int p1, p2

    .line 667
    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_76

    :cond_70
    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 669
    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 670
    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 674
    :goto_76
    iget p1, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 p1, p1, -0x10

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 675
    iget p1, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 p1, p1, -0x10

    iput p1, v2, Landroid/graphics/Point;->y:I

    .line 677
    iget p1, v2, Landroid/graphics/Point;->x:I

    if-ltz p1, :cond_a2

    iget p1, v2, Landroid/graphics/Point;->y:I

    if-gez p1, :cond_8b

    goto :goto_a2

    .line 681
    :cond_8b
    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 682
    iget p1, v2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2

    :cond_a2
    :goto_a2
    return-object v0
.end method

.method protected onCancelled()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 148
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_e
    return-void
.end method

.method protected onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    if-eqz v0, :cond_d

    .line 140
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 50
    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method setTimesFollowedVastRedirect(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    iput p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    return-void
.end method
