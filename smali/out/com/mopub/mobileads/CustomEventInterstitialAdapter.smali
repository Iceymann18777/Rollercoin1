.class public Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
.super Ljava/lang/Object;
.source "CustomEventInterstitialAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERSTITIAL_TIMEOUT_DELAY:I = 0x7530


# instance fields
.field private mBroadcastIdentifier:J

.field private mContext:Landroid/content/Context;

.field private mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

.field private mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

.field private final mHandler:Landroid/os/Handler;

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

.field private final mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

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


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubInterstitial;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 53
    iput-wide p4, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mBroadcastIdentifier:J

    .line 54
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)V

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mTimeout:Ljava/lang/Runnable;

    .line 65
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

    .line 67
    :try_start_3a
    invoke-static {p2}, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_77

    .line 75
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mServerExtras:Ljava/util/Map;

    .line 76
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocalExtras()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    .line 77
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 78
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object p2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocation()Landroid/location/Location;

    move-result-object p2

    const-string p3, "location"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_64
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "broadcastIdentifier"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    const-string p2, "mopub-intent-ad-report"

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_77
    move-exception p1

    .line 69
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "CustomEventInterstitialFactory.create() failed with exception"

    aput-object p4, p3, v3

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubInterstitial;->onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private cancelTimeout()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getTimeoutDelayMilliseconds()I
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    const/16 v1, 0x7530

    if-nez v0, :cond_7

    return v1

    .line 169
    :cond_7
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdTimeoutDelay(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method invalidate()V
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 125
    :try_start_5
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitial;->onInvalidate()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_19

    :catch_9
    move-exception v0

    .line 127
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalidating a custom event interstitial threw an exception."

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_19
    :goto_19
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    .line 131
    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mContext:Landroid/content/Context;

    .line 132
    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mServerExtras:Ljava/util/Map;

    .line 133
    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    .line 134
    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    .line 135
    iget-wide v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mBroadcastIdentifier:J

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 138
    invoke-virtual {v0}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebView;->destroy()V

    .line 140
    :cond_37
    iput-boolean v1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mInvalidated:Z

    return-void
.end method

.method isAutomaticImpressionAndClickTrackingEnabled()Z
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 157
    :cond_6
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitial;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method isInvalidated()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mInvalidated:Z

    return v0
.end method

.method loadInterstitial()V
    .registers 5

    .line 85
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    if-nez v0, :cond_b

    goto :goto_35

    .line 88
    :cond_b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "loadInterstitial()"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->getTimeoutDelayMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :try_start_24
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/CustomEventInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_30

    goto :goto_35

    .line 97
    :catch_30
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public onInterstitialClicked()V
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 238
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_e

    .line 239
    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialClicked()V

    :cond_e
    return-void
.end method

.method public onInterstitialDismissed()V
    .registers 2

    .line 261
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_e

    .line 266
    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialDismissed()V

    :cond_e
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 7

    .line 201
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_b

    .line 206
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 209
    :cond_b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterstitialFailed() failed with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 209
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_3f

    .line 214
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->cancelTimeout()V

    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_3f
    return-void
.end method

.method public onInterstitialImpression()V
    .registers 2

    .line 245
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_e

    .line 250
    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialImpression()V

    :cond_e
    return-void
.end method

.method public onInterstitialLoaded()V
    .registers 5

    .line 186
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 190
    :cond_7
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onInterstitialLoaded()"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->cancelTimeout()V

    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_1e

    .line 195
    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialLoaded()V

    :cond_1e
    return-void
.end method

.method public onInterstitialShown()V
    .registers 5

    .line 221
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 225
    :cond_7
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onInterstitialShown()"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    if-eqz v0, :cond_1b

    .line 228
    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;->onCustomEventInterstitialShown()V

    :cond_1b
    return-void
.end method

.method public onLeaveApplication()V
    .registers 1

    .line 256
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->onInterstitialClicked()V

    return-void
.end method

.method setAdapterListener(Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitialAdapterListener:Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;

    return-void
.end method

.method setCustomEventInterstitial(Lcom/mopub/mobileads/CustomEventInterstitial;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    return-void
.end method

.method showInterstitial()V
    .registers 6

    .line 102
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    if-nez v0, :cond_b

    goto :goto_4d

    .line 105
    :cond_b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "showInterstitial()"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 110
    :try_start_18
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->mCustomEventInterstitial:Lcom/mopub/mobileads/CustomEventInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitial;->showInterstitial()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_4d

    .line 112
    :catch_1e
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInterstitial() failed with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 113
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 112
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_4d
    :goto_4d
    return-void
.end method
