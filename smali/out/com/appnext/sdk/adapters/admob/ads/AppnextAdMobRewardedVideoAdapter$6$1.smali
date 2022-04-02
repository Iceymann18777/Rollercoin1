.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;->videoEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;


# direct methods
.method constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6$1;->this$1:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
