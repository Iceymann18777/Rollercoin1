.class public Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;
.super Ljava/lang/Object;
.source "StartAppBannerExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/mediation/admob/StartAppBannerExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extras:Lcom/startapp/android/mediation/admob/StartAppBannerExtras;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;-><init>(Lcom/startapp/android/mediation/admob/StartAppBannerExtras$1;)V

    iput-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppBannerExtras;

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lcom/google/ads/mediation/NetworkExtras;
    .registers 4

    .line 46
    new-instance v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppBannerExtras;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppBannerExtras;

    invoke-virtual {v0, p1}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;->setAdTag(Ljava/lang/String;)Lcom/startapp/android/mediation/admob/StartAppExtras;

    return-object p0
.end method

.method public setBannerMode(Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;)Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$Builder;->extras:Lcom/startapp/android/mediation/admob/StartAppBannerExtras;

    invoke-virtual {v0, p1}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras;->setBannerMode(Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;)Lcom/startapp/android/mediation/admob/StartAppExtras;

    return-object p0
.end method
