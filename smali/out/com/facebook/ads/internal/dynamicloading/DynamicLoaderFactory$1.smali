.class final Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;
.super Ljava/lang/Object;
.source "DynamicLoaderFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fromContentProvider:Z

.field final synthetic val$initListener:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

.field final synthetic val$initSettings:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V
    .registers 5

    .line 91
    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$fromContentProvider:Z

    iput-object p3, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initSettings:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    iput-object p4, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initListener:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 95
    iget-object v0, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->registerActivityCallbacks(Landroid/content/Context;)V

    .line 98
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, v1

    const/4 v3, 0x0

    :goto_c
    const/4 v4, 0x3

    if-ge v3, v4, :cond_3a

    .line 101
    :try_start_f
    iget-object v4, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$000(Landroid/content/Context;Z)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_3a

    :catchall_16
    move-exception v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_32

    .line 108
    :try_start_1a
    iget-boolean v5, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$fromContentProvider:Z

    if-nez v5, :cond_30

    .line 110
    iget-object v5, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    .line 111
    invoke-static {v4}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$100(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 110
    invoke-static {v5, v6, v7, v8}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->reportDexLoadingIssue(Landroid/content/Context;Ljava/lang/String;D)V

    const/4 v5, 0x1

    .line 112
    invoke-static {v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->setFallbackMode(Z)V

    :cond_30
    move-object v6, v4

    goto :goto_37

    :cond_32
    const-wide/16 v4, 0xc8

    .line 116
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_3a
    :goto_3a
    move-object v5, v1

    .line 120
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_4f

    .line 121
    iget-object v4, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$fromContentProvider:Z

    iget-object v8, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initSettings:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    iget-object v9, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initListener:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$200(Landroid/content/Context;Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;Ljava/lang/Throwable;ZLcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V

    .line 128
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_4f
    move-exception v1

    .line 120
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    goto :goto_53

    :goto_52
    throw v1

    :goto_53
    goto :goto_52
.end method
