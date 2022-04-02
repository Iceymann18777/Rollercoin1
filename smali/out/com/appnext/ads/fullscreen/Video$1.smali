.class final Lcom/appnext/ads/fullscreen/Video$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/Video;->init()V
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

    .line 125
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video$1;->bJ:Lcom/appnext/ads/fullscreen/Video;

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

    .line 128
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$1;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "banner_expiration_time"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/core/j;->b(I)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 4

    .line 133
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/Video$1;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "banner_expiration_time"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/core/j;->b(I)V

    return-void
.end method
