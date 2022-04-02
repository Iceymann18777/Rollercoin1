.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;
.super Lcom/appnext/ads/fullscreen/RewardedVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomEventRewardedVideoAd"
.end annotation


# static fields
.field protected static final TID:Ljava/lang/String; = "321"


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;


# direct methods
.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 27
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V
    .registers 5

    .line 31
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;

    .line 32
    invoke-direct {p0, p2, p3, p4}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    return-void
.end method


# virtual methods
.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "321"

    return-object v0
.end method
