.class Lcom/startapp/android/publish/ads/video/f$19$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/f$19;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/f$19;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$19$1;->a:Lcom/startapp/android/publish/ads/video/f$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$19$1;->a:Lcom/startapp/android/publish/ads/video/f$19;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f$19;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->G()V

    return-void
.end method
