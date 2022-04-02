.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adError(Ljava/lang/String;)V
    .registers 4

    .line 71
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->access$000(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 72
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->access$000(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    :cond_14
    return-void
.end method
