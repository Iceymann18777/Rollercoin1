.class final Lcom/appnext/ads/fullscreen/Video$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/Video;->loadAd()V
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

    .line 240
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video$4;->bJ:Lcom/appnext/ads/fullscreen/Video;

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

    .line 243
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/Video$4;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/Video;->access$400(Lcom/appnext/ads/fullscreen/Video;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 2

    .line 248
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/Video$4;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-static {p1}, Lcom/appnext/ads/fullscreen/Video;->access$400(Lcom/appnext/ads/fullscreen/Video;)V

    return-void
.end method
