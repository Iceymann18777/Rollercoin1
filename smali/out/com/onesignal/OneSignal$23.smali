.class final Lcom/onesignal/OneSignal$23;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->cancelNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 2704
    iput p1, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "dismissed"

    const-string v1, "Error closing transaction! "

    .line 2707
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    const/4 v3, 0x0

    .line 2710
    :try_start_b
    invoke-virtual {v2}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_69

    .line 2711
    :try_start_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_notification_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "opened"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = 0 AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2717
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x1

    .line 2718
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "notification"

    .line 2720
    invoke-virtual {v2, v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_58

    .line 2723
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget v3, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-static {v0, v2, v3}, Lcom/onesignal/NotificationSummaryManager;->updatePossibleDependentSummaryOnDismiss(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2724
    :cond_58
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 2726
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catchall {:try_start_f .. :try_end_60} :catchall_66

    if-eqz v2, :cond_93

    .line 2732
    :try_start_62
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_8d

    goto :goto_93

    :catchall_66
    move-exception v0

    move-object v3, v2

    goto :goto_6a

    :catchall_69
    move-exception v0

    .line 2728
    :goto_6a
    :try_start_6a
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error marking a notification id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as dismissed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_6a .. :try_end_87} :catchall_9f

    if-eqz v3, :cond_93

    .line 2732
    :try_start_89
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_93

    :catchall_8d
    move-exception v0

    .line 2734
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v2, v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2739
    :cond_93
    :goto_93
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 2740
    iget v1, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :catchall_9f
    move-exception v0

    if-eqz v3, :cond_ac

    .line 2732
    :try_start_a2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_ac

    :catchall_a6
    move-exception v2

    .line 2734
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v3, v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2737
    :cond_ac
    :goto_ac
    throw v0
.end method
