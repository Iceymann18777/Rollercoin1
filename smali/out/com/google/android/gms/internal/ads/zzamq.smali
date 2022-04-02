.class public final Lcom/google/android/gms/internal/ads/zzamq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzcuc:Landroid/content/BroadcastReceiver;

.field private final zzcud:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private zzcue:Z

.field private zzsh:Z

.field private zzsz:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzsh:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcud:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Lcom/google/android/gms/internal/ads/zzamq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcuc:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzamq;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final declared-synchronized zzc(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcud:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    goto :goto_b

    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    goto :goto_37

    :goto_36
    throw p1

    :goto_37
    goto :goto_36
.end method


# virtual methods
.method public final declared-synchronized initialize(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzsh:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_48

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzsz:Landroid/content/Context;

    if-nez v0, :cond_11

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzsz:Landroid/content/Context;

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzsz:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbcc:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcue:Z

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzsz:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcuc:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzsh:Z
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_48

    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcue:Z

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcud:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcue:Z

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzcud:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
