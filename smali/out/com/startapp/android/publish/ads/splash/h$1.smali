.class Lcom/startapp/android/publish/ads/splash/h$1;
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

    .line 93
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$1;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$1;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/h;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 99
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$1;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/h;->d()V

    .line 102
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$1;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/h;->e()V

    goto :goto_1a

    .line 105
    :cond_13
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$1;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1a
    return-void
.end method
