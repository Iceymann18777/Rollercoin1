.class public Lcom/startapp/android/publish/adsCommon/adListeners/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;


# instance fields
.field a:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adListeners/a;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adListeners/a;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz v0, :cond_15

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/adsCommon/adListeners/a$3;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/adListeners/a$3;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/a;Lcom/startapp/android/publish/adsCommon/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public adDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adListeners/a;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz v0, :cond_15

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/adsCommon/adListeners/a$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/adListeners/a$2;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/a;Lcom/startapp/android/publish/adsCommon/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public adHidden(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adListeners/a;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz v0, :cond_15

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/adsCommon/adListeners/a$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/adListeners/a$1;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/a;Lcom/startapp/android/publish/adsCommon/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adListeners/a;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz v0, :cond_15

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/adsCommon/adListeners/a$4;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/adListeners/a$4;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/a;Lcom/startapp/android/publish/adsCommon/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method
