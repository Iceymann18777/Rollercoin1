.class final Lcom/appnext/ads/interstitial/Interstitial$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/Interstitial;->loadConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bL:Lcom/appnext/ads/interstitial/Interstitial;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/Interstitial;)V
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 373
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->access$902(Lcom/appnext/ads/interstitial/Interstitial;Z)Z

    .line 374
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "banner_expiration_time"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/core/j;->b(I)V

    .line 375
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/Interstitial;->access$1000(Lcom/appnext/ads/interstitial/Interstitial;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 376
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->showAd()V

    :cond_2a
    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 4

    .line 381
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;->access$902(Lcom/appnext/ads/interstitial/Interstitial;Z)Z

    .line 382
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "banner_expiration_time"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/core/j;->b(I)V

    .line 383
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/Interstitial;->access$1000(Lcom/appnext/ads/interstitial/Interstitial;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 384
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$6;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->showAd()V

    :cond_2a
    return-void
.end method
