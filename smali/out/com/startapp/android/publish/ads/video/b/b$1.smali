.class Lcom/startapp/android/publish/ads/video/b/b$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/b/b;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/b/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/b/b;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b$1;->a:Lcom/startapp/android/publish/ads/video/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 5

    .line 158
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b$1;->a:Lcom/startapp/android/publish/ads/video/b/b;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/video/b/b;->f:Lcom/startapp/android/publish/ads/video/b/c$c;

    if-eqz p1, :cond_15

    const/4 p1, 0x4

    const-string v0, "NativeVideoPlayer"

    const-string v1, "onBufferingUpdate"

    .line 159
    invoke-static {v0, p1, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b/b$1;->a:Lcom/startapp/android/publish/ads/video/b/b;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/video/b/b;->f:Lcom/startapp/android/publish/ads/video/b/c$c;

    invoke-interface {p1, p2}, Lcom/startapp/android/publish/ads/video/b/c$c;->a(I)V

    :cond_15
    return-void
.end method
