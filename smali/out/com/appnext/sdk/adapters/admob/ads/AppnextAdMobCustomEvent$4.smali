.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdClosed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;


# direct methods
.method constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$4;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$4;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;

    iget-object v0, v0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    return-void
.end method
