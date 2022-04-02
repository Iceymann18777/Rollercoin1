.class Lcom/startapp/android/publish/ads/video/f$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/f;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/f;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f;)Lcom/b/a/a/a/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 499
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f;)Lcom/b/a/a/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/b/a/a;->f()V

    .line 501
    :cond_19
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->F:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$2$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$2$1;-><init>(Lcom/startapp/android/publish/ads/video/f$2;)V

    .line 514
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/n;->g()J

    move-result-wide v2

    .line 501
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_58

    :catch_32
    move-exception v0

    .line 516
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->M()V

    .line 517
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "VideoMode.startBufferingIndicator"

    invoke-direct {v2, v3, v4, v0}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/f;->b(Lcom/startapp/android/publish/ads/video/f;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    :goto_58
    return-void
.end method
