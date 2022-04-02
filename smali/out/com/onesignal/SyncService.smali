.class public Lcom/onesignal/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 39
    new-instance p1, Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;

    invoke-direct {p1, p0}, Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;-><init>(Landroid/app/Service;)V

    invoke-static {p0, p1}, Lcom/onesignal/OneSignalSyncServiceUtils;->doBackgroundSync(Landroid/content/Context;Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V

    const/4 p1, 0x1

    return p1
.end method
