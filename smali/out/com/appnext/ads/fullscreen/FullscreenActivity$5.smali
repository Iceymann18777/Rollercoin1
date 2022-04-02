.class final Lcom/appnext/ads/fullscreen/FullscreenActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/FullscreenActivity;->videoEnded()V
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

    .line 461
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$5;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$5;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->e(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    instance-of v0, v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_2c

    .line 465
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$5;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->e(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    check-cast v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->getRewardedServerSidePostback()Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 467
    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->p()Ljava/util/HashMap;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity$5;->aK:Lcom/appnext/ads/fullscreen/FullscreenActivity;

    invoke-static {v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->f(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "placementId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_27
    const-string v1, "https://admin.appnext.com/adminService.asmx/SetRewards"

    .line 470
    invoke-static {v1, v0}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method
