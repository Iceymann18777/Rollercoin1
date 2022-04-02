.class final Lcom/onesignal/OneSignalCacheCleaner$1;
.super Ljava/lang/Object;
.source "OneSignalCacheCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalCacheCleaner;->cleanNotificationCache(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$writableDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "Error closing transaction! "

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 44
    iget-object v1, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 46
    :try_start_10
    iget-object v1, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/onesignal/OneSignalCacheCleaner;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    iget-object v1, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/onesignal/OneSignalCacheCleaner;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    iget-object v1, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_2c

    .line 51
    :try_start_1f
    iget-object v1, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_24
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_2b

    :catch_25
    move-exception v1

    .line 53
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v2, v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    return-void

    :catchall_2c
    move-exception v1

    .line 51
    :try_start_2d
    iget-object v2, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_32
    .catch Landroid/database/SQLException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v2

    .line 53
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v3, v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :goto_39
    throw v1
.end method
