.class public Lcom/startapp/android/mediation/admob/StartAppBannerExtras;
.super Lcom/startapp/android/mediation/admob/StartAppExtras;
.source "StartAppBannerExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;,
        Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;
    }
.end annotation


# instance fields
.field private bannerMode:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/startapp/android/mediation/admob/StartAppExtras;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/mediation/admob/StartAppBannerExtras$1;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerMode()Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;->bannerMode:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    return-object v0
.end method

.method public setBannerMode(Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;)Lcom/startapp/android/mediation/admob/StartAppExtras;
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;->bannerMode:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    return-object p0
.end method
