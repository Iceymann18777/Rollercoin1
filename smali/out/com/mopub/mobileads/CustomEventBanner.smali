.class public abstract Lcom/mopub/mobileads/CustomEventBanner;
.super Ljava/lang/Object;
.source "CustomEventBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    }
.end annotation


# instance fields
.field private mAutomaticImpressionAndClickTracking:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBanner;->mAutomaticImpressionAndClickTracking:Z

    return-void
.end method


# virtual methods
.method isAutomaticImpressionAndClickTrackingEnabled()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBanner;->mAutomaticImpressionAndClickTracking:Z

    return v0
.end method

.method protected abstract loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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
.end method

.method protected abstract onInvalidate()V
.end method

.method protected setAutomaticImpressionAndClickTracking(Z)V
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/mopub/mobileads/CustomEventBanner;->mAutomaticImpressionAndClickTracking:Z

    return-void
.end method

.method protected trackMpxAndThirdPartyImpressions()V
    .registers 1

    return-void
.end method
