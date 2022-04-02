.class public Lcom/mopub/mobileads/StartAppInterstitialExtras;
.super Lcom/mopub/mobileads/StartAppExtras;
.source "StartAppInterstitialExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/StartAppInterstitialExtras$Builder;
    }
.end annotation


# instance fields
.field private adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/mopub/mobileads/StartAppExtras;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/StartAppInterstitialExtras$1;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/mopub/mobileads/StartAppInterstitialExtras;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdMode()Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppInterstitialExtras;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object v0
.end method

.method public setAdMode(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Lcom/mopub/mobileads/StartAppExtras;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppInterstitialExtras;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p0
.end method
