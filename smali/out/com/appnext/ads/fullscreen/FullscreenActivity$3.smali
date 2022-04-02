.class final Lcom/appnext/ads/fullscreen/FullscreenActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/ads/fullscreen/FullscreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/FullscreenActivity;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$3;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$3;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->b(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/q;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 272
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$3;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/q;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$3;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->c(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/q;->e(Lcom/appnext/core/AppnextAd;)V

    .line 273
    :cond_17
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$3;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    const-string v1, "impression_event"

    const-string v2, "S2"

    invoke-virtual {v0, v1, v2}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
