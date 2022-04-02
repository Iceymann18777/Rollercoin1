.class Lcom/startapp/android/publish/ads/video/f$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->ah()V
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

    .line 613
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$3;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 616
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$3;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->P()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_17

    .line 618
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$3;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/video/f;->D:Landroid/os/Handler;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/f$3;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/ads/video/f;->c(I)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method
