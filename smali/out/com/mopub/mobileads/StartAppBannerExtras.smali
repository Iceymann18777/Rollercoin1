.class public Lcom/mopub/mobileads/StartAppBannerExtras;
.super Lcom/mopub/mobileads/StartAppExtras;
.source "StartAppBannerExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/StartAppBannerExtras$Builder;,
        Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;
    }
.end annotation


# instance fields
.field private bannerMode:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/mopub/mobileads/StartAppExtras;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/StartAppBannerExtras$1;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/mopub/mobileads/StartAppBannerExtras;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerMode()Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppBannerExtras;->bannerMode:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    return-object v0
.end method

.method public setBannerMode(Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;)Lcom/mopub/mobileads/StartAppExtras;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppBannerExtras;->bannerMode:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    return-object p0
.end method
