.class Lcom/startapp/android/publish/ads/video/f$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/video/b/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->aa()V
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

    .line 280
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$1;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$1;->a:Lcom/startapp/android/publish/ads/video/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/android/publish/ads/video/f;->w:Z

    .line 284
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$1;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/video/f;->p:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$1;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/video/f;->q:Z

    if-eqz v0, :cond_16

    .line 285
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$1;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->G()V

    .line 287
    :cond_16
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$1;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->Y()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 288
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$1;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->K()V

    :cond_23
    return-void
.end method
