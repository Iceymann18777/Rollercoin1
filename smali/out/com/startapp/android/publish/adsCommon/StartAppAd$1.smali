.class Lcom/startapp/android/publish/adsCommon/StartAppAd$1;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/StartAppAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/StartAppAd;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/StartAppAd;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 2

    .line 130
    invoke-static {p1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.startapp.android.ShowFailedDisplayBroadcastListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "showFailedReason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 88
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    .line 92
    :cond_27
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p2, p2, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz p2, :cond_36

    .line 93
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p2, p2, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-interface {p2, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;->adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V

    .line 96
    :cond_36
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a(Landroid/content/Context;)V

    goto :goto_a8

    .line 98
    :cond_3a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 100
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz p1, :cond_a8

    .line 101
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-interface {p1, p2}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;->adDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V

    goto :goto_a8

    .line 103
    :cond_56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.startapp.android.OnClickCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 105
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz p1, :cond_a8

    .line 106
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-interface {p1, p2}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;->adClicked(Lcom/startapp/android/publish/adsCommon/Ad;)V

    goto :goto_a8

    .line 108
    :cond_72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.startapp.android.OnVideoCompleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_96

    .line 109
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/StartAppAd;->videoListener:Lcom/startapp/android/publish/adsCommon/VideoListener;

    if-eqz p1, :cond_a8

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/startapp/android/publish/adsCommon/StartAppAd$1$1;

    invoke-direct {p2, p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd$1$1;-><init>(Lcom/startapp/android/publish/adsCommon/StartAppAd$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a8

    .line 119
    :cond_96
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p2, p2, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz p2, :cond_a5

    .line 120
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object p2, p2, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-interface {p2, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;->adHidden(Lcom/startapp/android/publish/adsCommon/Ad;)V

    .line 123
    :cond_a5
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a(Landroid/content/Context;)V

    .line 125
    :cond_a8
    :goto_a8
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;->a:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    return-void
.end method
