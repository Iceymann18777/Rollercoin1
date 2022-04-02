.class Lcom/onesignal/BadgeCountUpdater;
.super Ljava/lang/Object;
.source "BadgeCountUpdater.java"


# static fields
.field private static badgesEnabled:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static areBadgeSettingsEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 54
    sget v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 58
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 59
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_31

    const-string v0, "com.onesignal.BadgeCount"

    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DISABLE"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x1

    :goto_2e
    sput p0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    goto :goto_3e

    .line 65
    :cond_31
    sput v2, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_33} :catch_34

    goto :goto_3e

    :catch_34
    move-exception p0

    .line 67
    sput v1, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    .line 68
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error reading meta-data tag \'com.onesignal.BadgeCount\'. Disabling badge setting."

    invoke-static {v0, v3, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :goto_3e
    sget p0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    if-ne p0, v2, :cond_43

    const/4 v1, 0x1

    :cond_43
    return v1
.end method

.method private static areBadgesEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 75
    invoke-static {p0}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 4

    .line 79
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 82
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    .line 83
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->updateStandard(Landroid/content/Context;)V

    goto :goto_14

    .line 85
    :cond_11
    invoke-static {p0, p1}, Lcom/onesignal/BadgeCountUpdater;->updateFallback(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    :goto_14
    return-void
.end method

.method static updateCount(ILandroid/content/Context;)V
    .registers 3

    .line 121
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 125
    :cond_7
    :try_start_7
    invoke-static {p1, p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_a
    .catch Lcom/onesignal/shortcutbadger/ShortcutBadgeException; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method private static updateFallback(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 12

    .line 106
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    const-string v2, "notification"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 103
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 115
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-static {v0, p1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    return-void
.end method

.method private static updateStandard(Landroid/content/Context;)V
    .registers 6

    .line 90
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 93
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    aget-object v4, v0, v2

    .line 94
    invoke-static {v4}, Lcom/onesignal/NotificationLimitManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v3, v3, 0x1

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 99
    :cond_17
    invoke-static {v3, p0}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    return-void
.end method
