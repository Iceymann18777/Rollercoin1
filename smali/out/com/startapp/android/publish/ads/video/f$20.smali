.class Lcom/startapp/android/publish/ads/video/f$20;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->K()V
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

    .line 455
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-eqz v0, :cond_71

    .line 460
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    if-lez v0, :cond_3b

    .line 462
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/f;->f(I)V

    .line 463
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/f;->g(I)V

    .line 464
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    iget v0, v0, Lcom/startapp/android/publish/ads/video/f;->m:I

    if-nez v0, :cond_71

    .line 465
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->Z()V

    .line 466
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    goto :goto_71

    .line 468
    :cond_3b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/video/f;->s:Z

    if-nez v0, :cond_71

    .line 469
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->C:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_71

    :catch_4b
    move-exception v0

    .line 473
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 474
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "VideoMode.startVideoPlayback"

    invoke-direct {v2, v3, v4, v0}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/f;->b(Lcom/startapp/android/publish/ads/video/f;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$20;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->p()V

    :cond_71
    :goto_71
    return-void
.end method
