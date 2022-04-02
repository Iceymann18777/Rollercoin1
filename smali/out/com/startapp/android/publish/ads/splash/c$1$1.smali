.class Lcom/startapp/android/publish/ads/splash/c$1$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/splash/c$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/splash/c$1;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/splash/c$1;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/c$1$1;->a:Lcom/startapp/android/publish/ads/splash/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/c$1$1;->a:Lcom/startapp/android/publish/ads/splash/c$1;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/c$1;->c:Lcom/startapp/android/publish/ads/splash/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/android/publish/ads/splash/c;->b:Z

    .line 70
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/c$1$1;->a:Lcom/startapp/android/publish/ads/splash/c$1;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/c$1;->c:Lcom/startapp/android/publish/ads/splash/c;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/c;->c:Lcom/startapp/android/publish/ads/splash/c$a;

    sget-object v1, Lcom/startapp/android/publish/ads/splash/c$a;->e:Lcom/startapp/android/publish/ads/splash/c$a;

    if-eq v0, v1, :cond_20

    .line 71
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/c$1$1;->a:Lcom/startapp/android/publish/ads/splash/c$1;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/c$1;->c:Lcom/startapp/android/publish/ads/splash/c;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/splash/c$1$1;->a:Lcom/startapp/android/publish/ads/splash/c$1;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/splash/c$1;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/splash/c$1$1;->a:Lcom/startapp/android/publish/ads/splash/c$1;

    iget-object v2, v2, Lcom/startapp/android/publish/ads/splash/c$1;->b:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/splash/c;->c(Ljava/lang/Runnable;Lcom/startapp/android/publish/cache/c;)V

    :cond_20
    return-void
.end method
