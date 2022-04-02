.class Lcom/startapp/android/publish/ads/splash/h$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/splash/h;
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

    .line 229
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->b:Lcom/startapp/android/publish/ads/splash/c;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/splash/h;->d:Lcom/startapp/android/publish/ads/splash/d;

    new-instance v2, Lcom/startapp/android/publish/ads/splash/h$2$1;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/ads/splash/h$2$1;-><init>(Lcom/startapp/android/publish/ads/splash/h$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/splash/c;->a(Lcom/startapp/android/publish/ads/splash/d;Lcom/startapp/android/publish/ads/splash/e;)V

    return-void
.end method
