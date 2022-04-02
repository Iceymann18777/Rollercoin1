.class public abstract Lcom/mopub/nativeads/BaseNativeAd;
.super Ljava/lang/Object;
.source "BaseNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;
    }
.end annotation


# instance fields
.field private final mClickTrackers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpressionTrackers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvalidated:Z

.field private mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionTrackers:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mClickTrackers:Ljava/util/Set;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mInvalidated:Z

    return-void
.end method


# virtual methods
.method public final addClickTracker(Ljava/lang/String;)V
    .registers 3

    const-string v0, "clickTracker url is not allowed to be null"

    .line 140
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mClickTrackers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addClickTrackers(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 117
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_26

    .line 121
    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 122
    :goto_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 124
    :try_start_e
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/BaseNativeAd;->addClickTracker(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_22

    .line 127
    :catch_16
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to parse click trackers."

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_25
    return-void

    .line 118
    :cond_26
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Expected click trackers of type JSONArray."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    :goto_2e
    throw p1

    :goto_2f
    goto :goto_2e
.end method

.method public final addImpressionTracker(Ljava/lang/String;)V
    .registers 3

    const-string v0, "impressionTracker url is not allowed to be null"

    .line 133
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addImpressionTrackers(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 101
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_26

    .line 105
    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    :goto_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 108
    :try_start_e
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/BaseNativeAd;->addImpressionTracker(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_22

    .line 111
    :catch_16
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to parse impression trackers."

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_25
    return-void

    .line 102
    :cond_26
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Expected impression trackers of type JSONArray."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    :goto_2e
    throw p1

    :goto_2f
    goto :goto_2e
.end method

.method public abstract clear(Landroid/view/View;)V
.end method

.method public abstract destroy()V
.end method

.method getClickTrackers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseNativeAd;->mClickTrackers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getImpressionTrackers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/BaseNativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mInvalidated:Z

    return-void
.end method

.method public isInvalidated()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mInvalidated:Z

    return v0
.end method

.method protected final notifyAdClicked()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    if-eqz v0, :cond_7

    .line 96
    invoke-interface {v0}, Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;->onAdClicked()V

    :cond_7
    return-void
.end method

.method protected final notifyAdImpressed()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    if-eqz v0, :cond_7

    .line 85
    invoke-interface {v0}, Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;->onAdImpressed()V

    :cond_7
    return-void
.end method

.method public abstract prepare(Landroid/view/View;)V
.end method

.method public setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/mopub/nativeads/BaseNativeAd;->mNativeEventListener:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    return-void
.end method
