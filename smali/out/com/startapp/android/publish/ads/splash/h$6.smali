.class Lcom/startapp/android/publish/ads/splash/h$6;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/splash/h;->f()V
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

    .line 332
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$6;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$6;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->b:Lcom/startapp/android/publish/ads/splash/c;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/splash/h$6;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/splash/h;->f:Lcom/startapp/android/publish/ads/splash/h$a;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/splash/c;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd;)V

    return-void
.end method
