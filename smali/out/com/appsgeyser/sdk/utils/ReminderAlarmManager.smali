.class public Lcom/appsgeyser/sdk/utils/ReminderAlarmManager;
.super Ljava/lang/Object;
.source "ReminderAlarmManager.java"


# direct methods
.method public static startReminderAlarm(Landroid/content/Context;IZ)V
    .registers 14

    const-string v0, "alarm"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 21
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appsgeyser/sdk/push/AlarmReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e2

    const/4 v4, 0x0

    .line 24
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    int-to-long p0, p1

    const-wide/32 v2, 0x5265c00

    mul-long p0, p0, v2

    if-eqz v1, :cond_4e

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v10, "appsgeyserSdk_lastReminderSetTiming"

    if-eqz p2, :cond_3c

    .line 32
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    add-long v3, v8, p0

    const-wide/32 v5, 0x5265c00

    .line 33
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 34
    invoke-virtual {v0, v10, v8, v9}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    goto :goto_4e

    .line 36
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v10, v2, v3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 p2, 0x0

    add-long/2addr p0, v2

    const-wide/32 v5, 0x5265c00

    move v2, p2

    move-wide v3, p0

    .line 37
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_4e
    :goto_4e
    return-void
.end method
