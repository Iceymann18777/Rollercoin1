.class Lcom/startapp/android/publish/ads/splash/h$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/splash/h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/splash/h;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/splash/h;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$4;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$4;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->b:Lcom/startapp/android/publish/ads/splash/c;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/splash/h$4;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/splash/h;->g:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/splash/h$4;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v2, v2, Lcom/startapp/android/publish/ads/splash/h;->c:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/splash/c;->b(Ljava/lang/Runnable;Lcom/startapp/android/publish/cache/c;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 312
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$4;->a:Lcom/startapp/android/publish/ads/splash/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/startapp/android/publish/ads/splash/h;->f:Lcom/startapp/android/publish/ads/splash/h$a;

    .line 313
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$4;->a:Lcom/startapp/android/publish/ads/splash/h;

    iput-object v1, v0, Lcom/startapp/android/publish/ads/splash/h;->c:Lcom/startapp/android/publish/cache/c;

    :cond_1b
    return-void
.end method
