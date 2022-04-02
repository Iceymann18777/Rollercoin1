.class public Lcom/mopub/mobileads/CustomEventBannerAdapter;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/InternalCustomEventBannerListener;


# static fields
.field public static final DEFAULT_BANNER_TIMEOUT_DELAY:I = 0x2710


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

.field private final mHandler:Landroid/os/Handler;

.field private mImpressionMinVisibleDips:I

.field private mImpressionMinVisibleMs:I

.field private mInvalidated:Z

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mServerExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeout:Ljava/lang/Runnable;

.field private mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 49
    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    .line 50
    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    .line 58
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 61
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    .line 73
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to invoke custom event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 75
    :try_start_3e
    invoke-static {p2}, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_a0

    .line 83
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 86
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->parseBannerImpressionTrackingHeaders()V

    .line 88
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getLocalExtras()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 89
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 90
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object p2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object p2

    const-string p3, "location"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_6b
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "broadcastIdentifier"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string p2, "mopub-intent-ad-report"

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object p2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubView;->getAdWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "com_mopub_ad_width"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object p2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "com_mopub_ad_height"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 77
    :catch_a0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v0, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Couldn\'t locate or instantiate custom event: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/MoPubView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/CustomEventBanner;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    return-object p0
.end method

.method private cancelTimeout()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getTimeoutDelayMilliseconds()I
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/16 v1, 0x2710

    if-nez v0, :cond_7

    return v1

    .line 176
    :cond_7
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private parseBannerImpressionTrackingHeaders()V
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    const-string v1, "banner-impression-min-pixels"

    .line 181
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    const-string v2, "banner-impression-min-ms"

    .line 183
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 188
    :try_start_22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_34

    .line 190
    :catch_29
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Cannot parse integer from header banner-impression-min-pixels"

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 195
    :goto_34
    :try_start_34
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3a} :catch_3b

    goto :goto_46

    .line 197
    :catch_3b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Cannot parse integer from header banner-impression-min-ms"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method getImpressionMinVisibleDips()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    iget v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    return v0
.end method

.method getImpressionMinVisibleMs()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    iget v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    return v0
.end method

.method getVisibilityTracker()Lcom/mopub/mobileads/BannerVisibilityTracker;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    return-object v0
.end method

.method invalidate()V
    .registers 8

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_19

    .line 124
    :try_start_7
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->onInvalidate()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_19

    :catch_b
    move-exception v0

    .line 126
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Invalidating a custom event banner threw an exception"

    aput-object v6, v5, v1

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 129
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    const/4 v4, 0x0

    if-eqz v0, :cond_32

    .line 131
    :try_start_1e
    invoke-virtual {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->destroy()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_30

    :catch_22
    move-exception v0

    .line 133
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Destroying a banner visibility tracker threw an exception"

    aput-object v6, v2, v1

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 135
    :goto_30
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    .line 137
    :cond_32
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 138
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    .line 139
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 140
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 141
    iput-boolean v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    return-void
.end method

.method isInvalidated()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    return v0
.end method

.method loadAd()V
    .registers 6

    .line 100
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-nez v0, :cond_b

    goto :goto_54

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->getTimeoutDelayMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :try_start_17
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_54

    .line 111
    :catch_23
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAd() failed with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 112
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 111
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public onBannerClicked()V
    .registers 2

    .line 295
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 299
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_e

    .line 300
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    :cond_e
    return-void
.end method

.method public onBannerCollapsed()V
    .registers 2

    .line 285
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->dismissOverlay()V

    .line 290
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adClosed()V

    return-void
.end method

.method public onBannerExpanded()V
    .registers 2

    .line 275
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 279
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->engageOverlay()V

    .line 280
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adPresentedOverlay()V

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 3

    .line 259
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 263
    :cond_7
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 265
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_17

    if-nez p1, :cond_12

    .line 267
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 269
    :cond_12
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    :cond_17
    return-void
.end method

.method public onBannerImpression()V
    .registers 2

    .line 306
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v0, :cond_1f

    .line 312
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 313
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    .line 314
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->trackMpxAndThirdPartyImpressions()V

    :cond_1f
    return-void
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .registers 13

    .line 208
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 212
    :cond_7
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onBannerLoaded() success. Attempting to show."

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 218
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_5a

    .line 219
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->creativeDownloaded()V

    .line 227
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v0, :cond_49

    .line 228
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 230
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->pauseAutoRefresh()V

    .line 232
    new-instance v0, Lcom/mopub/mobileads/BannerVisibilityTracker;

    iget-object v6, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget v9, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    iget v10, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    move-object v5, v0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/mopub/mobileads/BannerVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    .line 234
    new-instance v2, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/BannerVisibilityTracker;->setBannerVisibilityTrackerListener(Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;)V

    .line 247
    :cond_49
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 249
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onBannerLoaded() - Show successful."

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_84

    .line 251
    :cond_5a
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBannerLoaded() - Show failed with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 252
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 251
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_84
    return-void
.end method

.method public onLeaveApplication()V
    .registers 1

    .line 320
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerClicked()V

    return-void
.end method

.method public onPauseAutoRefresh()V
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_7

    .line 326
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->engageOverlay()V

    :cond_7
    return-void
.end method

.method public onResumeAutoRefresh()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_7

    .line 333
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->dismissOverlay()V

    :cond_7
    return-void
.end method
