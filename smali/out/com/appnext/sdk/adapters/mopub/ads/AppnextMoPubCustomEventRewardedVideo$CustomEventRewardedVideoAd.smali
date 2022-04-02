.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;
.super Lcom/appnext/ads/fullscreen/RewardedVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomEventRewardedVideoAd"
.end annotation


# static fields
.field protected static final TID:Ljava/lang/String; = "311"


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;


# direct methods
.method public constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 28
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;

    .line 29
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V
    .registers 5

    .line 32
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo$CustomEventRewardedVideoAd;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventRewardedVideo;

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    return-void
.end method


# virtual methods
.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "311"

    return-object v0
.end method
