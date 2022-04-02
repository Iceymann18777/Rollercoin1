.class Lcom/startapp/android/publish/ads/video/f$5;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f$c;)V
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

    .line 751
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$5;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$5;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/video/f;->t:Z

    if-nez v0, :cond_e

    .line 757
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$5;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->j:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    :cond_e
    return-void
.end method
