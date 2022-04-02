.class public Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    }
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field private videoNativeAd:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-class v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v6, p2

    move-object v0, p3

    const-string v1, "com_mopub_native_json"

    .line 76
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    instance-of v2, v1, Lorg/json/JSONObject;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-nez v2, :cond_31

    .line 79
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v10, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 80
    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v7

    .line 79
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    :cond_31
    const-string v2, "event-details"

    .line 86
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v4, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    move-object/from16 v2, p4

    invoke-direct {v4, v2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;-><init>(Ljava/util/Map;)V

    .line 89
    invoke-virtual {v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->hasValidHeaders()Z

    move-result v2

    if-nez v2, :cond_64

    .line 90
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v10, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 91
    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v7

    .line 90
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    :cond_64
    const-string v2, "click-tracking-url"

    .line 98
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_ab

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 101
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_ab

    .line 110
    :cond_78
    new-instance v11, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    move-object v0, v11

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Ljava/lang/String;)V

    move-object v0, p0

    iput-object v11, v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->videoNativeAd:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    .line 114
    :try_start_86
    invoke-virtual {v11}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->loadAd()V
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_aa

    .line 116
    :catch_8a
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v10, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v2, v9

    sget-object v3, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    .line 117
    invoke-virtual {v3}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v3, v2, v7

    .line 116
    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 119
    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :goto_aa
    return-void

    :cond_ab
    :goto_ab
    move-object v0, p0

    .line 102
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v10, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v2, v9

    sget-object v3, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    .line 103
    invoke-virtual {v3}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v3, v2, v7

    .line 102
    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 105
    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->videoNativeAd:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    if-nez v0, :cond_5

    return-void

    .line 128
    :cond_5
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->invalidate()V

    return-void
.end method
