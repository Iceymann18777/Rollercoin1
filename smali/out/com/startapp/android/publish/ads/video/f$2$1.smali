.class Lcom/startapp/android/publish/ads/video/f$2$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/f$2;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/f$2;)V
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$2$1;->a:Lcom/startapp/android/publish/ads/video/f$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "VideoMode"

    const/4 v1, 0x5

    const-string v2, "Buffering timeout reached"

    .line 505
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 507
    :try_start_8
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2$1;->a:Lcom/startapp/android/publish/ads/video/f$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->M()V

    .line 508
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2$1;->a:Lcom/startapp/android/publish/ads/video/f$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/android/publish/ads/video/f;->t:Z

    .line 509
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$2$1;->a:Lcom/startapp/android/publish/ads/video/f$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    new-instance v1, Lcom/startapp/android/publish/ads/video/b/c$g;

    sget-object v3, Lcom/startapp/android/publish/ads/video/b/c$h;->c:Lcom/startapp/android/publish/ads/video/b/c$h;

    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f$2$1;->a:Lcom/startapp/android/publish/ads/video/f$2;

    iget-object v4, v4, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    iget v4, v4, Lcom/startapp/android/publish/ads/video/f;->n:I

    invoke-direct {v1, v3, v2, v4}, Lcom/startapp/android/publish/ads/video/b/c$g;-><init>(Lcom/startapp/android/publish/ads/video/b/c$h;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/b/c$g;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    goto :goto_4a

    :catch_2b
    move-exception v0

    .line 511
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$2$1;->a:Lcom/startapp/android/publish/ads/video/f$2;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/video/f$2;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "VideoMode.startBufferingIndicator"

    invoke-direct {v2, v3, v4, v0}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method
