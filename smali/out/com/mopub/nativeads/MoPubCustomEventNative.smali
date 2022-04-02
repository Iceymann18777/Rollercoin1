.class public Lcom/mopub/nativeads/MoPubCustomEventNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "MoPubCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;
    }
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field private moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/mopub/nativeads/MoPubCustomEventNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 16
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

    .line 48
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative;->moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    const-string v0, "com_mopub_native_json"

    .line 54
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 56
    instance-of v0, p3, Lorg/json/JSONObject;

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v0, :cond_45

    .line 57
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, v2, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    sget-object p4, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 58
    invoke-virtual {p4}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    sget-object p4, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object p4, p3, v3

    .line 57
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 64
    :cond_45
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    move-object v7, p3

    check-cast v7, Lorg/json/JSONObject;

    new-instance v8, Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {v8, p1}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/mopub/nativeads/NativeClickHandler;

    invoke-direct {v9, p1}, Lcom/mopub/nativeads/NativeClickHandler;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    move-object v6, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative;->moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    const-string p1, "impression-min-visible-percent"

    .line 71
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_98

    .line 73
    :try_start_64
    iget-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative;->moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    .line 74
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setImpressionMinPercentageViewed(I)V
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_73} :catch_74

    goto :goto_98

    .line 76
    :catch_74
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to format min visible percent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 76
    invoke-static {p3, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_98
    :goto_98
    const-string p1, "impression-visible-ms"

    .line 81
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d4

    .line 83
    :try_start_a0
    iget-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative;->moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    .line 84
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-virtual {p3, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setImpressionMinTimeViewed(I)V
    :try_end_af
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_af} :catch_b0

    goto :goto_d4

    .line 86
    :catch_b0
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to format min time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 86
    invoke-static {p3, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_d4
    :goto_d4
    const-string p1, "impression-min-visible-px"

    .line 91
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_114

    .line 93
    :try_start_dc
    iget-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative;->moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    .line 94
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setImpressionMinVisiblePx(Ljava/lang/Integer;)V
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_dc .. :try_end_ef} :catch_f0

    goto :goto_114

    .line 96
    :catch_f0
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to format min visible px: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 96
    invoke-static {p3, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 102
    :cond_114
    :goto_114
    :try_start_114
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative;->moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->loadAd()V

    .line 103
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_124
    .catch Ljava/lang/IllegalArgumentException; {:try_start_114 .. :try_end_124} :catch_125

    goto :goto_145

    .line 105
    :catch_125
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, v2, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    sget-object p4, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    .line 106
    invoke-virtual {p4}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    sget-object p4, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object p4, p3, v3

    .line 105
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 108
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :goto_145
    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative;->moPubStaticNativeAd:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    if-nez v0, :cond_5

    return-void

    .line 117
    :cond_5
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->invalidate()V

    return-void
.end method
