.class public Lcom/appsgeyser/sdk/push/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_20

    const/4 v0, 0x3

    .line 69
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Appsgeyser_channel_id"

    invoke-direct {v1, v2, p2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string p2, ""

    .line 70
    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 71
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_20

    .line 73
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string p2, ""

    .line 27
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string v1, "ServerResponse"

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 31
    invoke-static {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getInactivityReminderText()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 37
    :try_start_1c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    move-exception v1

    .line 39
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, p2

    .line 42
    :goto_32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 43
    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 45
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "Appsgeyser_channel_id"

    invoke-direct {v3, p1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 46
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, -0x1

    .line 47
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    sget v6, Lcom/appsgeyser/sdk/R$drawable;->ic_os_notification_fallback_white_24dp:I

    .line 49
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 50
    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 51
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    if-eqz v0, :cond_6f

    move-object p2, v0

    .line 52
    :cond_6f
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x5

    .line 53
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 54
    invoke-virtual {p2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 56
    invoke-direct {p0, p1, v1}, Lcom/appsgeyser/sdk/push/AlarmReceiver;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "notification"

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_8f

    .line 60
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_8f
    return-void
.end method
