.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial$CustomEventInterstitialAd;
.super Lcom/appnext/ads/interstitial/Interstitial;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomEventInterstitialAd"
.end annotation


# static fields
.field protected static final TID:Ljava/lang/String; = "321"


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial;


# direct methods
.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 26
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial$CustomEventInterstitialAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial;

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/appnext/ads/interstitial/Interstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/interstitial/InterstitialConfig;)V
    .registers 5

    .line 30
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial$CustomEventInterstitialAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventInterstitial;

    .line 31
    invoke-direct {p0, p2, p3, p4}, Lcom/appnext/ads/interstitial/Interstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/interstitial/InterstitialConfig;)V

    return-void
.end method


# virtual methods
.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "321"

    return-object v0
.end method
