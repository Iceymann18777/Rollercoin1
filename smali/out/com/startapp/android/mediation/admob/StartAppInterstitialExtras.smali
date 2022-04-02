.class public Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;
.super Lcom/startapp/android/mediation/admob/StartAppExtras;
.source "StartAppInterstitialExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$Builder;
    }
.end annotation


# instance fields
.field private adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/startapp/android/mediation/admob/StartAppExtras;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras$1;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdMode()Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object v0
.end method

.method public setAdMode(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Lcom/startapp/android/mediation/admob/StartAppExtras;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppInterstitialExtras;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-object p0
.end method
