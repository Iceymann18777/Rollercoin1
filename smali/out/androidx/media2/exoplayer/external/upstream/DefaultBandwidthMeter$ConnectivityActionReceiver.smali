.class Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityActionReceiver"
.end annotation


# static fields
.field private static staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;


# instance fields
.field private final bandwidthMeters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 437
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 438
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->mainHandler:Landroid/os/Handler;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    monitor-enter v0

    .line 428
    :try_start_3
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    if-nez v1, :cond_1d

    .line 429
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;-><init>()V

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    .line 430
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 431
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    :cond_1d
    sget-object p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private removeClearedReferences()V
    .registers 3

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 471
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 472
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    if-nez v1, :cond_1f

    .line 474
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method private updateBandwidthMeter(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bandwidthMeter"
        }
    .end annotation

    .line 466
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->access$100(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$register$0$DefaultBandwidthMeter$ConnectivityActionReceiver(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    .registers 2

    .line 447
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->updateBandwidthMeter(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V

    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    monitor-enter p0

    .line 452
    :try_start_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->isInitialStickyBroadcast()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    if-eqz p1, :cond_9

    .line 453
    monitor-exit p0

    return-void

    .line 455
    :cond_9
    :try_start_9
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->removeClearedReferences()V

    const/4 p1, 0x0

    .line 456
    :goto_d
    iget-object p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2b

    .line 457
    iget-object p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 458
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    if-eqz p2, :cond_28

    .line 460
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->updateBandwidthMeter(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_2d

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 463
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method

.method public declared-synchronized register(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bandwidthMeter"
        }
    .end annotation

    monitor-enter p0

    .line 443
    :try_start_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->removeClearedReferences()V

    .line 444
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 448
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
