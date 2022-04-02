.class Lcom/startapp/android/publish/ads/video/f$19;
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

    .line 433
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-eqz v0, :cond_48

    .line 437
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->a()V

    .line 438
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f;)Lcom/b/a/a/a/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 439
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f;)Lcom/b/a/a/a/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v2, v2, Lcom/startapp/android/publish/ads/video/f;->l:Z

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    goto :goto_2e

    :cond_2c
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2e
    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/b/a/a;->a(FF)V

    .line 441
    :cond_31
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/android/publish/ads/video/f;->r:Z

    .line 442
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->M()V

    .line 443
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/ads/video/f$19$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/video/f$19$1;-><init>(Lcom/startapp/android/publish/ads/video/f$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_48
    return-void
.end method
