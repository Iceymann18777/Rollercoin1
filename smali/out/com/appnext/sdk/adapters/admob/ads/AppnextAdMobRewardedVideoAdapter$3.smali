.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdClosed;


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

    .line 82
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    invoke-static {v0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->access$000(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 86
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    invoke-static {v0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->access$000(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    :cond_13
    return-void
.end method
