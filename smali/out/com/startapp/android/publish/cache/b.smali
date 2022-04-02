.class public Lcom/startapp/android/publish/cache/b;
.super Lcom/startapp/android/publish/cache/e;
.source "StartAppSDK"


# instance fields
.field private final b:Lcom/startapp/android/publish/cache/FailuresHandler;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/cache/g;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/cache/e;-><init>(Lcom/startapp/android/publish/cache/g;)V

    .line 23
    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/ACMConfig;->getFailuresHandler()Lcom/startapp/android/publish/cache/FailuresHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/cache/b;->b:Lcom/startapp/android/publish/cache/FailuresHandler;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/startapp/android/publish/cache/b;->c:I

    .line 25
    iput-boolean p1, p0, Lcom/startapp/android/publish/cache/b;->d:Z

    return-void
.end method

.method private j()V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/startapp/android/publish/cache/b;->b:Lcom/startapp/android/publish/cache/FailuresHandler;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/FailuresHandler;->getIntervals()Ljava/util/List;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/startapp/android/publish/cache/b;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x4

    const-string v4, "CacheErrorReloadTimer"

    if-ne v1, v0, :cond_2c

    .line 66
    iput-boolean v2, p0, Lcom/startapp/android/publish/cache/b;->d:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reached end index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/cache/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_47

    .line 69
    :cond_2c
    iget v0, p0, Lcom/startapp/android/publish/cache/b;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/startapp/android/publish/cache/b;->c:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced to index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/cache/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_47
    return-void
.end method

.method private k()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/startapp/android/publish/cache/b;->b:Lcom/startapp/android/publish/cache/FailuresHandler;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/FailuresHandler;->getIntervals()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 33
    invoke-super {p0}, Lcom/startapp/android/publish/cache/e;->a()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/startapp/android/publish/cache/b;->c:I

    .line 35
    iput-boolean v0, p0, Lcom/startapp/android/publish/cache/b;->d:Z

    return-void
.end method

.method protected b()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/b;->j()V

    .line 41
    invoke-super {p0}, Lcom/startapp/android/publish/cache/e;->b()V

    return-void
.end method

.method protected c()Z
    .registers 3

    .line 46
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/m;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 50
    :cond_c
    invoke-direct {p0}, Lcom/startapp/android/publish/cache/b;->k()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 55
    :cond_13
    iget-boolean v0, p0, Lcom/startapp/android/publish/cache/b;->d:Z

    if-eqz v0, :cond_1e

    .line 56
    iget-object v0, p0, Lcom/startapp/android/publish/cache/b;->b:Lcom/startapp/android/publish/cache/FailuresHandler;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/FailuresHandler;->isInfiniteLastRetry()Z

    move-result v0

    return v0

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method protected d()J
    .registers 8

    .line 81
    iget v0, p0, Lcom/startapp/android/publish/cache/b;->c:I

    iget-object v1, p0, Lcom/startapp/android/publish/cache/b;->b:Lcom/startapp/android/publish/cache/FailuresHandler;

    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/FailuresHandler;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, -0x1

    if-lt v0, v1, :cond_11

    return-wide v2

    .line 85
    :cond_11
    invoke-virtual {p0}, Lcom/startapp/android/publish/cache/b;->i()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_18

    return-wide v2

    .line 91
    :cond_18
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/startapp/android/publish/cache/b;->b:Lcom/startapp/android/publish/cache/FailuresHandler;

    invoke-virtual {v2}, Lcom/startapp/android/publish/cache/FailuresHandler;->getIntervals()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/cache/b;->c:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_42

    goto :goto_43

    :cond_42
    move-wide v1, v3

    :goto_43
    return-wide v1
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    const-string v0, "CacheErrorReloadTimer"

    return-object v0
.end method
