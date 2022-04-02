.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;
.super Lcom/appnext/ads/fullscreen/RewardedVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppnextRewardedVideoAd"
.end annotation


# static fields
.field protected static final TID:Ljava/lang/String; = "321"


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 181
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    .line 182
    invoke-direct {p0, p2, p3}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V
    .registers 5

    .line 185
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    .line 186
    invoke-direct {p0, p2, p3, p4}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    return-void
.end method


# virtual methods
.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "321"

    return-object v0
.end method
