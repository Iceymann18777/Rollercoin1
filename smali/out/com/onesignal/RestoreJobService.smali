.class public Lcom/onesignal/RestoreJobService;
.super Lcom/onesignal/JobIntentService;
.source "RestoreJobService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/onesignal/JobIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 33
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreate()V
    .registers 1

    .line 33
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onCreate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .registers 1

    .line 33
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onDestroy()V

    return-void
.end method

.method protected final onHandleWork(Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 47
    :cond_a
    invoke-virtual {p0}, Lcom/onesignal/RestoreJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v1, p1}, Lcom/onesignal/BundleCompatBundle;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 46
    invoke-static {v0, v1, p1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    return-void
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/onesignal/JobIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopCurrentWork()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method
