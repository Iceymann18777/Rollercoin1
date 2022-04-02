.class public abstract Lcom/mopub/nativeads/StaticNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "StaticNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/ClickInterface;
.implements Lcom/mopub/nativeads/ImpressionInterface;


# static fields
.field private static final DEFAULT_IMPRESSION_MIN_PERCENTAGE_VIEWED:I = 0x32

.field private static final DEFAULT_IMPRESSION_MIN_TIME_VIEWED_MS:I = 0x3e8

.field static final MAX_STAR_RATING:D = 5.0

.field static final MIN_STAR_RATING:D


# instance fields
.field private mCallToAction:Ljava/lang/String;

.field private mClickDestinationUrl:Ljava/lang/String;

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

.field private mIconImageUrl:Ljava/lang/String;

.field private mImpressionMinPercentageViewed:I

.field private mImpressionMinTimeViewed:I

.field private mImpressionMinVisiblePx:Ljava/lang/Integer;

.field private mImpressionRecorded:Z

.field private mMainImageUrl:Ljava/lang/String;

.field private mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

.field private mPrivacyInformationIconImageUrl:Ljava/lang/String;

.field private mSponsored:Ljava/lang/String;

.field private mStarRating:Ljava/lang/Double;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    const/16 v0, 0x3e8

    .line 52
    iput v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    const/16 v0, 0x32

    .line 53
    iput v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "addExtra key is not allowed to be null"

    .line 225
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 228
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 284
    invoke-virtual {p0}, Lcom/mopub/nativeads/StaticNativeAd;->invalidate()V

    return-void
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickDestinationUrl()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "getExtra key is not allowed to be null"

    .line 150
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

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

    .line 164
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinPercentageViewed()I
    .registers 2

    .line 304
    iget v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .registers 2

    .line 314
    iget v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    return v0
.end method

.method public final getImpressionMinVisiblePx()Ljava/lang/Integer;
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mSponsored:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final isImpressionRecorded()Z
    .registers 2

    .line 330
    iget-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionRecorded:Z

    return v0
.end method

.method public prepare(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mCallToAction:Ljava/lang/String;

    return-void
.end method

.method public final setClickDestinationUrl(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIconImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setImpressionMinPercentageViewed(I)V
    .registers 7

    if-ltz p1, :cond_9

    const/16 v0, 0x64

    if-gt p1, v0, :cond_9

    .line 253
    iput p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    goto :goto_25

    .line 255
    :cond_9
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring impressionMinTimeViewed that\'s not a percent [0, 100]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_25
    return-void
.end method

.method public final setImpressionMinTimeViewed(I)V
    .registers 7

    if-lez p1, :cond_5

    .line 239
    iput p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    goto :goto_21

    .line 241
    :cond_5
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring non-positive impressionMinTimeViewed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_21
    return-void
.end method

.method public final setImpressionMinVisiblePx(Ljava/lang/Integer;)V
    .registers 7

    if-eqz p1, :cond_b

    .line 267
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    .line 268
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    goto :goto_27

    .line 270
    :cond_b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring null or non-positive impressionMinVisiblePx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_27
    return-void
.end method

.method public final setImpressionRecorded()V
    .registers 2

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionRecorded:Z

    return-void
.end method

.method public final setMainImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setSponsored(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mSponsored:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .registers 11

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_4e

    .line 202
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_1d

    .line 203
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_4e

    .line 205
    :cond_1d
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring attempt to set invalid star rating ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "). Must be between "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_4e
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mText:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mTitle:Ljava/lang/String;

    return-void
.end method
