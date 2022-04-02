.class final Lcom/appnext/ads/fullscreen/FullscreenActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/FullscreenActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 171
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$1;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lcom/appnext/core/Ad;
    .registers 2

    .line 179
    sget-object v0, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    return-object v0
.end method

.method public final f()Lcom/appnext/core/AppnextAd;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$1;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/appnext/core/p;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$1;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    return-object v0
.end method

.method public final report(Ljava/lang/String;)V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$1;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v0, p1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Lcom/appnext/ads/fullscreen/FullscreenActivity;Ljava/lang/String;)V

    return-void
.end method
