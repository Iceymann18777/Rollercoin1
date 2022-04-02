.class public Lcom/mopub/common/MoPubLifecycleManager;
.super Ljava/lang/Object;
.source "MoPubLifecycleManager.java"

# interfaces
.implements Lcom/mopub/common/LifecycleListener;


# static fields
.field private static sInstance:Lcom/mopub/common/MoPubLifecycleManager;


# instance fields
.field private final mLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;
    .registers 3

    const-class v0, Lcom/mopub/common/MoPubLifecycleManager;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Lcom/mopub/common/MoPubLifecycleManager;->sInstance:Lcom/mopub/common/MoPubLifecycleManager;

    if-nez v1, :cond_e

    .line 33
    new-instance v1, Lcom/mopub/common/MoPubLifecycleManager;

    invoke-direct {v1, p0}, Lcom/mopub/common/MoPubLifecycleManager;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/mopub/common/MoPubLifecycleManager;->sInstance:Lcom/mopub/common/MoPubLifecycleManager;

    .line 36
    :cond_e
    sget-object p0, Lcom/mopub/common/MoPubLifecycleManager;->sInstance:Lcom/mopub/common/MoPubLifecycleManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addLifecycleListener(Lcom/mopub/common/LifecycleListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 50
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 52
    invoke-interface {p1, v0}, Lcom/mopub/common/LifecycleListener;->onCreate(Landroid/app/Activity;)V

    .line 53
    invoke-interface {p1, v0}, Lcom/mopub/common/LifecycleListener;->onStart(Landroid/app/Activity;)V

    :cond_1b
    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 115
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onBackPressed(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 61
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onCreate(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 108
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onDestroy(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 75
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onPause(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 94
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onRestart(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 4

    .line 81
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    .line 86
    :cond_a
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 87
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onResume(Landroid/app/Activity;)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 68
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onStart(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/LifecycleListener;

    .line 101
    invoke-interface {v1, p1}, Lcom/mopub/common/LifecycleListener;->onStop(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method
