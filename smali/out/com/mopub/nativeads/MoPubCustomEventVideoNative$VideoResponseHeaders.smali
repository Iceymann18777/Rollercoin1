.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoResponseHeaders"
.end annotation


# instance fields
.field private mHeadersAreValid:Z

.field private mImpressionMinVisiblePercent:I

.field private mImpressionVisibleMs:I

.field private mImpressionVisiblePx:Ljava/lang/Integer;

.field private mMaxBufferMs:I

.field private mPauseVisiblePercent:I

.field private mPlayVisiblePercent:I

.field private mVideoTrackers:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "play-visible-percent"

    .line 982
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    const-string v2, "pause-visible-percent"

    .line 983
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    const-string v2, "impression-visible-ms"

    .line 984
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    const-string v2, "max-buffer-ms"

    .line 985
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    .line 986
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_3f} :catch_40

    goto :goto_42

    .line 988
    :catch_40
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    :goto_42
    const-string v2, "impression-min-visible-px"

    .line 991
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 992
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 994
    :try_start_50
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisiblePx:Ljava/lang/Integer;
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_5a} :catch_5b

    goto :goto_66

    .line 996
    :catch_5b
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Unable to parse impression min visible px from server extras."

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_66
    :goto_66
    :try_start_66
    const-string v2, "impression-min-visible-percent"

    .line 1001
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_74} :catch_75

    goto :goto_8d

    :catch_75
    nop

    .line 1003
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Unable to parse impression min visible percent from server extras."

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1004
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisiblePx:Ljava/lang/Integer;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_8d

    .line 1005
    :cond_8b
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    :cond_8d
    :goto_8d
    const-string v2, "video-trackers"

    .line 1010
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1011
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9c

    return-void

    .line 1016
    :cond_9c
    :try_start_9c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;
    :try_end_a3
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_a3} :catch_a4

    goto :goto_c5

    :catch_a4
    move-exception v2

    .line 1018
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse video trackers to JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1019
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;

    :goto_c5
    return-void
.end method


# virtual methods
.method getImpressionMinVisiblePercent()I
    .registers 2

    .line 1036
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    return v0
.end method

.method getImpressionVisibleMs()I
    .registers 2

    .line 1040
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    return v0
.end method

.method getImpressionVisiblePx()Ljava/lang/Integer;
    .registers 2

    .line 1049
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisiblePx:Ljava/lang/Integer;

    return-object v0
.end method

.method getMaxBufferMs()I
    .registers 2

    .line 1044
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    return v0
.end method

.method getPauseVisiblePercent()I
    .registers 2

    .line 1032
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    return v0
.end method

.method getPlayVisiblePercent()I
    .registers 2

    .line 1028
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    return v0
.end method

.method getVideoTrackers()Lorg/json/JSONObject;
    .registers 2

    .line 1053
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;

    return-object v0
.end method

.method hasValidHeaders()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    return v0
.end method
