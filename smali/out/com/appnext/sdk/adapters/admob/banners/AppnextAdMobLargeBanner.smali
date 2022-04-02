.class public Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobLargeBanner;
.super Lcom/appnext/banners/LargeBannerAd;
.source "SourceFile"


# static fields
.field private static final TID:Ljava/lang/String; = "321"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/appnext/banners/LargeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/appnext/core/Ad;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/appnext/banners/LargeBannerAd;-><init>(Lcom/appnext/core/Ad;)V

    return-void
.end method


# virtual methods
.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "321"

    return-object v0
.end method
