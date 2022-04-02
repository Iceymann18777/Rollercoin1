.class public Lcom/appsgeyser/sdk/push/PushStarterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushStarterReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_6e

    if-eqz p1, :cond_6e

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 31
    :cond_28
    new-instance p2, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p2, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "ServerResponse"

    .line 33
    invoke-virtual {p2, v1, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6e

    .line 36
    invoke-static {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isPushNotificationsActive()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 39
    :try_start_40
    invoke-static {p1}, Lcom/appsgeyser/sdk/push/OneSignalCreator;->init(Landroid/content/Context;)V
    :try_end_43
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_4b

    :catch_44
    const-string v0, "OneSignalStarterRcv"

    const-string v1, "unexpected JsonSyntaxException"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_4b
    :goto_4b
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInactivityReminderEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/sdk/push/AlarmService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getInactivityDaysPeriod()I

    move-result p2

    const-string v1, "days_inactivity"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_6b

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6e

    .line 51
    :cond_6b
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6e
    :goto_6e
    return-void
.end method
