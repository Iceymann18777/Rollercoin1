.class final Lcom/appnext/ads/interstitial/Interstitial$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/Interstitial$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bM:Lcom/appnext/ads/interstitial/Interstitial$2;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/Interstitial$2;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$2$2;->bM:Lcom/appnext/ads/interstitial/Interstitial$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$2$2;->bM:Lcom/appnext/ads/interstitial/Interstitial$2;

    iget-object p1, p1, Lcom/appnext/ads/interstitial/Interstitial$2;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/Interstitial;->access$400(Lcom/appnext/ads/interstitial/Interstitial;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 2

    .line 197
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$2$2;->bM:Lcom/appnext/ads/interstitial/Interstitial$2;

    iget-object p1, p1, Lcom/appnext/ads/interstitial/Interstitial$2;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/Interstitial;->access$400(Lcom/appnext/ads/interstitial/Interstitial;)V

    return-void
.end method
