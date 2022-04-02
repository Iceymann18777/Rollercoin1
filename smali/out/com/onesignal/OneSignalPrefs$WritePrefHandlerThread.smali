.class public Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
.super Landroid/os/HandlerThread;
.source "OneSignalPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WritePrefHandlerThread"
.end annotation


# instance fields
.field private lastSyncTime:J

.field private mHandler:Landroid/os/Handler;

.field private threadStartCalled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 125
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V
    .registers 1

    .line 118
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->flushBufferToDisk()V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V
    .registers 1

    .line 118
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->startDelayedWrite()V

    return-void
.end method

.method private flushBufferToDisk()V
    .registers 8

    .line 179
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    invoke-static {v1}, Lcom/onesignal/OneSignalPrefs;->getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 182
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 183
    monitor-enter v1

    .line 184
    :try_start_27
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 186
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_49

    .line 187
    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2f

    .line 188
    :cond_49
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_57

    .line 189
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2f

    .line 190
    :cond_57
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_65

    .line 191
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2f

    .line 192
    :cond_65
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_73

    .line 193
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2f

    .line 194
    :cond_73
    instance-of v6, v5, Ljava/util/Set;

    if-eqz v6, :cond_2f

    .line 195
    check-cast v5, Ljava/util/Set;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2f

    .line 197
    :cond_7d
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 198
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_27 .. :try_end_81} :catchall_85

    .line 199
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_a

    :catchall_85
    move-exception v0

    .line 198
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0

    .line 202
    :cond_88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    return-void
.end method

.method private declared-synchronized scheduleFlushToDisk()V
    .registers 6

    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-nez v0, :cond_7

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    iget-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 167
    :cond_1b
    iget-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    .line 169
    new-instance v2, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;-><init>(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V

    .line 175
    iget-object v3, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_31

    .line 176
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startDelayedWrite()V
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_1
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_7

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->startThread()V

    .line 146
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->scheduleFlushToDisk()V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    .line 147
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startThread()V
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->threadStartCalled:Z

    if-eqz v0, :cond_5

    return-void

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->start()V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->threadStartCalled:Z

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 3

    .line 130
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->scheduleFlushToDisk()V

    return-void
.end method
