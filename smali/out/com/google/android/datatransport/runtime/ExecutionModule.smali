.class abstract Lcom/google/android/datatransport/runtime/ExecutionModule;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.0"


# direct methods
.method static executor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
