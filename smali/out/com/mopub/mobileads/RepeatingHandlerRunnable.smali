.class public abstract Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.super Ljava/lang/Object;
.source "RepeatingHandlerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field protected volatile mUpdateIntervalMillis:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract doWork()V
.end method

.method public isRunning()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .registers 4

    .line 29
    iget-boolean v0, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mIsRunning:Z

    if-eqz v0, :cond_e

    .line 30
    invoke-virtual {p0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->doWork()V

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mUpdateIntervalMillis:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method public startRepeating(J)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    new-array v3, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "intervalMillis must be greater than 0. Saw: %d"

    .line 41
    invoke-static {v2, v0, v3}, Lcom/mopub/common/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-wide p1, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mUpdateIntervalMillis:J

    .line 44
    iget-boolean p1, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mIsRunning:Z

    if-nez p1, :cond_25

    .line 45
    iput-boolean v1, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mIsRunning:Z

    .line 46
    iget-object p1, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->mIsRunning:Z

    return-void
.end method
