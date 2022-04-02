.class Lcom/startapp/android/publish/ads/splash/h$5;
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

    .line 318
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$5;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$5;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->b:Lcom/startapp/android/publish/ads/splash/c;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/splash/h$5;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/splash/h;->g:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/splash/h$5;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v2, v2, Lcom/startapp/android/publish/ads/splash/h;->c:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/splash/c;->a(Ljava/lang/Runnable;Lcom/startapp/android/publish/cache/c;)V

    return-void
.end method
