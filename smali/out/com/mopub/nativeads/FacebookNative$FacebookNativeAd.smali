.class Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "FacebookNative.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/FacebookNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FacebookNativeAd"
.end annotation


# static fields
.field private static final SOCIAL_CONTEXT_FOR_AD:Ljava/lang/String; = "socialContextForAd"


# instance fields
.field private final mBid:Ljava/lang/String;

.field private final mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeAd:Lcom/facebook/ads/NativeAdBase;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;)V
    .registers 5

    .line 199
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    .line 201
    iput-object p3, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 202
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mExtras:Ljava/util/Map;

    .line 203
    iput-object p4, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mBid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "addExtra key is not allowed to be null"

    .line 371
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 375
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .registers 2

    .line 338
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 339
    iget-object p1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    return-void
.end method

.method public final getAdvertiserName()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "getExtra key is not allowed to be null"

    .line 353
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 357
    :cond_a
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method getFacebookNativeAd()Lcom/facebook/ads/NativeAdBase;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    return-object v0
.end method

.method public final getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdChoicesLinkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSponsoredName()Ljava/lang/String;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    instance-of v1, v0, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadAd()V
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    .line 208
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    .line 209
    invoke-interface {v0, p0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mBid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_35

    .line 212
    iget-object v1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    iget-object v4, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mBid:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    .line 213
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$100()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_4f

    .line 215
    :cond_35
    iget-object v1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    .line 216
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$100()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_4f
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 321
    invoke-virtual {p0}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->notifyAdClicked()V

    .line 322
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$000()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 7

    .line 271
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->isAdLoaded()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_35

    .line 278
    :cond_13
    iget-object p1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object p1

    const-string v2, "socialContextForAd"

    invoke-virtual {p0, v2, p1}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget-object p1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    invoke-interface {p1, p0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    .line 280
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$000()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 272
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 273
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$000()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$100()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 274
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v1, v3, v0

    .line 273
    invoke-static {p1, v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 7

    .line 287
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_25

    const/16 p2, 0x7d2

    if-eq p1, p2, :cond_22

    const/16 p2, 0xbb9

    if-eq p1, p2, :cond_1f

    packed-switch p1, :pswitch_data_50

    .line 307
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_27

    .line 295
    :pswitch_16
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_27

    .line 289
    :pswitch_19
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_27

    .line 292
    :pswitch_1c
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_27

    .line 304
    :cond_1f
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->UNEXPECTED_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_27

    .line 301
    :cond_22
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    goto :goto_27

    .line 298
    :cond_25
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 310
    :goto_27
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$000()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 313
    iget-object p2, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    if-eqz p2, :cond_4f

    .line 314
    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :cond_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x3e8
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 327
    invoke-virtual {p0}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->notifyAdImpressed()V

    .line 328
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$000()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method registerChildViewsForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-static {p1, v0, p2, p3}, Lcom/mopub/nativeads/FacebookNative;->access$200(Landroid/view/View;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    return-void
.end method
