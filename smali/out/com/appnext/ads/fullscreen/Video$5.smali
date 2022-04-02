.class final Lcom/appnext/ads/fullscreen/Video$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/Video;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJ:Lcom/appnext/ads/fullscreen/Video;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/Video;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/Video;->access$500(Lcom/appnext/ads/fullscreen/Video;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {p1, v0, v1}, Lcom/appnext/ads/fullscreen/b;->b(Landroid/content/Context;Lcom/appnext/core/Ad;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdLoadedCallback()Lcom/appnext/core/callbacks/OnAdLoaded;

    move-result-object v0

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_2c

    .line 260
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdLoadedCallback()Lcom/appnext/core/callbacks/OnAdLoaded;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getCreativeType()Lcom/appnext/core/AppnextAdCreativeType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/appnext/core/callbacks/OnAdLoaded;->adLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V

    return-void

    .line 261
    :cond_2c
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 262
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object p1

    const-string v0, "No Ads"

    invoke-interface {p1, v0}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 270
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$5;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
