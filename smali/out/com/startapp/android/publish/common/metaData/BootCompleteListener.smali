.class public Lcom/startapp/android/publish/common/metaData/BootCompleteListener;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 p2, 0x3

    :try_start_1
    const-string v0, "BootCompleteListener - onReceive"

    .line 23
    invoke-static {p2, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 27
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;)V

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;Ljava/lang/Long;)V

    .line 29
    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception p2

    .line 31
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BootCompleteListener.onReceive - failed to start services"

    const-string v2, ""

    invoke-static {p1, v0, v1, p2, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method
