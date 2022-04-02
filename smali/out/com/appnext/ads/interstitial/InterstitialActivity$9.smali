.class final Lcom/appnext/ads/interstitial/InterstitialActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$9;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$9;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->l(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    return-void
.end method
