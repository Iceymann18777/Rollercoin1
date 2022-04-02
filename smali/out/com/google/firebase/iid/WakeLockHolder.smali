.class public final Lcom/google/firebase/iid/WakeLockHolder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"


# static fields
.field private static final WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

.field private static final syncObject:Ljava/lang/Object;

.field private static wakeLock:Lcom/google/android/gms/stats/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/WakeLockHolder;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/WakeLockHolder;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method private static checkAndInitWakeLock(Landroid/content/Context;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/google/firebase/iid/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    if-nez v0, :cond_11

    .line 3
    new-instance v0, Lcom/google/android/gms/stats/WakeLock;

    const/4 v1, 0x1

    const-string v2, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/stats/WakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 4
    sput-object v0, Lcom/google/firebase/iid/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/stats/WakeLock;->setReferenceCounted(Z)V

    :cond_11
    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)V
    .registers 3

    .line 20
    sget-object v0, Lcom/google/firebase/iid/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/google/firebase/iid/WakeLockHolder;->isWakefulIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    .line 22
    invoke-static {p0, v1}, Lcom/google/firebase/iid/WakeLockHolder;->setAsWakefulIntent(Landroid/content/Intent;Z)V

    .line 23
    sget-object p0, Lcom/google/firebase/iid/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    invoke-virtual {p0}, Lcom/google/android/gms/stats/WakeLock;->release()V

    .line 24
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method static isWakefulIntent(Landroid/content/Intent;)Z
    .registers 3

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static setAsWakefulIntent(Landroid/content/Intent;Z)V
    .registers 3

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 5

    .line 6
    sget-object v0, Lcom/google/firebase/iid/WakeLockHolder;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_3
    invoke-static {p0}, Lcom/google/firebase/iid/WakeLockHolder;->checkAndInitWakeLock(Landroid/content/Context;)V

    .line 8
    invoke-static {p1}, Lcom/google/firebase/iid/WakeLockHolder;->isWakefulIntent(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    .line 9
    invoke-static {p1, v2}, Lcom/google/firebase/iid/WakeLockHolder;->setAsWakefulIntent(Landroid/content/Intent;Z)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_17

    const/4 p0, 0x0

    .line 12
    monitor-exit v0

    return-object p0

    :cond_17
    if-nez v1, :cond_20

    .line 14
    sget-object p1, Lcom/google/firebase/iid/WakeLockHolder;->wakeLock:Lcom/google/android/gms/stats/WakeLock;

    sget-wide v1, Lcom/google/firebase/iid/WakeLockHolder;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/stats/WakeLock;->acquire(J)V

    .line 15
    :cond_20
    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method
