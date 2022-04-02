.class public Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;
.super Ljava/lang/Object;
.source "StartAppInterstitialExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extras:Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;-><init>(Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$1;)V

    iput-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lcom/google/ads/mediation/NetworkExtras;
    .registers 4

    .line 43
    new-instance v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAdMode(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;

    invoke-virtual {v0, p1}, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;->setAdMode(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Lcom/startapp/android/mediation/admob/StartAppExtras;

    return-object p0
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;

    invoke-virtual {v0, p1}, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;->setAdTag(Ljava/lang/String;)Lcom/startapp/android/mediation/admob/StartAppExtras;

    return-object p0
.end method
