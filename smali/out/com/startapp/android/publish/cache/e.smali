.class public abstract Lcom/startapp/android/publish/cache/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field protected a:Lcom/startapp/android/publish/cache/g;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Long;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/cache/g;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/cache/e;->b:Landroid/os/Handler;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/cache/e;->c:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/e;->d:Z

    .line 27
    iput-object p1, p0, Lcom/startapp/android/publish/cache/e;->a:Lcom/startapp/android/publish/cache/g;

    return-void
.end method

.method private j()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/cache/e;->b:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private k()V
    .registers 2

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/startapp/android/publish/cache/e;->c:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/e;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 91
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/cache/e;->a:Lcom/startapp/android/publish/cache/g;

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/g;->c()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->g()V

    return-void
.end method

.method protected b()V
    .registers 4

    .line 96
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time reached, reloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/cache/e;->a:Lcom/startapp/android/publish/cache/g;

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/g;->c()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/e;->k()V

    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/cache/e;->a:Lcom/startapp/android/publish/cache/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/g;->k()Z

    return-void
.end method

.method protected abstract c()Z
.end method

.method protected abstract d()J
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    const-string v0, "CacheScheduledTask"

    return-object v0
.end method

.method public f()V
    .registers 7

    .line 34
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/e;->d:Z

    if-nez v0, :cond_81

    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/cache/e;->c:Ljava/lang/Long;

    if-nez v0, :cond_12

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/cache/e;->c:Ljava/lang/Long;

    .line 41
    :cond_12
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->c()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_78

    .line 42
    iget-object v0, p0, Lcom/startapp/android/publish/cache/e;->b:Landroid/os/Handler;

    if-nez v0, :cond_2f

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 44
    new-instance v2, Landroid/os/Handler;

    if-eqz v0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_2a
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/startapp/android/publish/cache/e;->b:Landroid/os/Handler;

    .line 47
    :cond_2f
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6e

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/e;->d:Z

    .line 50
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/startapp/android/publish/cache/e;->a:Lcom/startapp/android/publish/cache/g;

    invoke-virtual {v5}, Lcom/startapp/android/publish/cache/g;->c()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - scheduled to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/cache/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/cache/e$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/cache/e$1;-><init>(Lcom/startapp/android/publish/cache/e;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_81

    .line 59
    :cond_6e
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t start, scheduled time < 0"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_81

    .line 62
    :cond_78
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Not allowed"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public g()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/e;->j()V

    .line 74
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/e;->k()V

    return-void
.end method

.method public h()V
    .registers 2

    .line 83
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/e;->j()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/e;->d:Z

    return-void
.end method

.method protected final i()Ljava/lang/Long;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/startapp/android/publish/cache/e;->c:Ljava/lang/Long;

    return-object v0
.end method
