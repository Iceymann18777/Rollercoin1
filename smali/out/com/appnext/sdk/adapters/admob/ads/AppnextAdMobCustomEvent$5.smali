.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdError;


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

    .line 101
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adError(Ljava/lang/String;)V
    .registers 7

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_56

    goto :goto_34

    :sswitch_c
    const-string v0, "Too Slow Connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x0

    goto :goto_35

    :sswitch_16
    const-string v0, "Timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :sswitch_20
    const-string v0, "Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x2

    goto :goto_35

    :sswitch_2a
    const-string v0, "No Ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x3

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p1, -0x1

    :goto_35
    if-eqz p1, :cond_4d

    if-eq p1, v2, :cond_4d

    if-eq p1, v4, :cond_4d

    if-eq p1, v3, :cond_45

    .line 117
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;

    iget-object p1, p1, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void

    .line 114
    :cond_45
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;

    iget-object p1, p1, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1, v3}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void

    .line 111
    :cond_4d
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;

    iget-object p1, p1, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1, v4}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void

    nop

    :sswitch_data_56
    .sparse-switch
        -0x74ba422f -> :sswitch_2a
        -0x580965ba -> :sswitch_20
        0x14e7e541 -> :sswitch_16
        0x32510371 -> :sswitch_c
    .end sparse-switch
.end method
