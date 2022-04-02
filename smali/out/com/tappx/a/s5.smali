.class public abstract Lcom/tappx/a/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/s5$c;,
        Lcom/tappx/a/s5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tappx/a/s5<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/a6$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/Object;

.field private f:Lcom/tappx/a/u5$a;

.field private g:Ljava/lang/Integer;

.field private h:Lcom/tappx/a/t5;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/tappx/a/w5;

.field private n:Lcom/tappx/a/h5$a;

.field private o:Ljava/lang/Object;

.field private p:Lcom/tappx/a/s5$b;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/tappx/a/u5$a;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/tappx/a/a6$a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/tappx/a/a6$a;

    invoke-direct {v0}, Lcom/tappx/a/a6$a;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/tappx/a/s5;->a:Lcom/tappx/a/a6$a;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/tappx/a/s5;->i:Z

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/tappx/a/s5;->j:Z

    .line 39
    iput-boolean v0, p0, Lcom/tappx/a/s5;->k:Z

    .line 43
    iput-boolean v0, p0, Lcom/tappx/a/s5;->l:Z

    .line 53
    iput-object v1, p0, Lcom/tappx/a/s5;->n:Lcom/tappx/a/h5$a;

    .line 81
    iput p1, p0, Lcom/tappx/a/s5;->b:I

    .line 82
    iput-object p2, p0, Lcom/tappx/a/s5;->c:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/tappx/a/s5;->f:Lcom/tappx/a/u5$a;

    .line 84
    new-instance p1, Lcom/tappx/a/k5;

    invoke-direct {p1}, Lcom/tappx/a/k5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/w5;)Lcom/tappx/a/s5;

    .line 86
    invoke-static {p2}, Lcom/tappx/a/s5;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tappx/a/s5;->d:I

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 27
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_4c} :catch_70

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    :try_start_4f
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 33
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4f .. :try_end_6f} :catch_70

    return-object p1

    :catch_70
    move-exception p1

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method

.method static synthetic b(Lcom/tappx/a/s5;)Lcom/tappx/a/a6$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/s5;->a:Lcom/tappx/a/a6$a;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/tappx/a/s5;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "TT;>;)I"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/tappx/a/s5;->m()Lcom/tappx/a/s5$c;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/tappx/a/s5;->m()Lcom/tappx/a/s5$c;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 68
    iget-object v0, p0, Lcom/tappx/a/s5;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/tappx/a/s5;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_22

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_22
    return v0
.end method

.method public a(Lcom/tappx/a/h5$a;)Lcom/tappx/a/s5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/h5$a;",
            ")",
            "Lcom/tappx/a/s5<",
            "*>;"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/tappx/a/s5;->n:Lcom/tappx/a/h5$a;

    return-object p0
.end method

.method public a(Lcom/tappx/a/t5;)Lcom/tappx/a/s5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/t5;",
            ")",
            "Lcom/tappx/a/s5<",
            "*>;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/tappx/a/s5;->h:Lcom/tappx/a/t5;

    return-object p0
.end method

.method public a(Lcom/tappx/a/w5;)Lcom/tappx/a/s5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/w5;",
            ")",
            "Lcom/tappx/a/s5<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tappx/a/s5;->m:Lcom/tappx/a/w5;

    return-object p0
.end method

.method public final a(Z)Lcom/tappx/a/s5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/tappx/a/s5<",
            "*>;"
        }
    .end annotation

    .line 47
    iput-boolean p1, p0, Lcom/tappx/a/s5;->i:Z

    return-object p0
.end method

.method protected abstract a(Lcom/tappx/a/q5;)Lcom/tappx/a/u5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/q5;",
            ")",
            "Lcom/tappx/a/u5<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 9
    :try_start_4
    iput-boolean v1, p0, Lcom/tappx/a/s5;->j:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/tappx/a/s5;->f:Lcom/tappx/a/u5$a;

    .line 11
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method a(I)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/tappx/a/s5;->h:Lcom/tappx/a/t5;

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/tappx/a/t5;->a(Lcom/tappx/a/s5;I)V

    :cond_7
    return-void
.end method

.method a(Lcom/tappx/a/s5$b;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    iput-object p1, p0, Lcom/tappx/a/s5;->p:Lcom/tappx/a/s5$b;

    .line 56
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method a(Lcom/tappx/a/u5;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/u5<",
            "*>;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Lcom/tappx/a/s5;->p:Lcom/tappx/a/s5$b;

    .line 59
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 61
    invoke-interface {v1, p0, p1}, Lcom/tappx/a/s5$b;->a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 62
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public a(Lcom/tappx/a/z5;)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    iget-object v1, p0, Lcom/tappx/a/s5;->f:Lcom/tappx/a/u5$a;

    .line 50
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 52
    invoke-interface {v1, p1}, Lcom/tappx/a/u5$a;->a(Lcom/tappx/a/z5;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 53
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 2
    sget-boolean v0, Lcom/tappx/a/a6$a;->c:Z

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lcom/tappx/a/s5;->a:Lcom/tappx/a/a6$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tappx/a/a6$a;->a(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public final b(I)Lcom/tappx/a/s5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tappx/a/s5<",
            "*>;"
        }
    .end annotation

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/s5;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/tappx/a/s5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tappx/a/s5<",
            "*>;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/tappx/a/s5;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Z)Lcom/tappx/a/s5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/tappx/a/s5<",
            "*>;"
        }
    .end annotation

    .line 29
    iput-boolean p1, p0, Lcom/tappx/a/s5;->l:Z

    return-object p0
.end method

.method protected b(Lcom/tappx/a/z5;)Lcom/tappx/a/z5;
    .registers 2

    return-object p1
.end method

.method b(Ljava/lang/String;)V
    .registers 6

    .line 3
    iget-object v0, p0, Lcom/tappx/a/s5;->h:Lcom/tappx/a/t5;

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v0, p0}, Lcom/tappx/a/t5;->b(Lcom/tappx/a/s5;)V

    .line 6
    :cond_7
    sget-boolean v0, Lcom/tappx/a/a6$a;->c:Z

    if-eqz v0, :cond_3d

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2f

    .line 11
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    new-instance v3, Lcom/tappx/a/s5$a;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/tappx/a/s5$a;-><init>(Lcom/tappx/a/s5;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 23
    :cond_2f
    iget-object v2, p0, Lcom/tappx/a/s5;->a:Lcom/tappx/a/a6$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/tappx/a/a6$a;->a(Ljava/lang/String;J)V

    .line 24
    iget-object p1, p0, Lcom/tappx/a/s5;->a:Lcom/tappx/a/a6$a;

    invoke-virtual {p0}, Lcom/tappx/a/s5;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tappx/a/a6$a;->a(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public b()[B
    .registers 3

    .line 26
    invoke-virtual {p0}, Lcom/tappx/a/s5;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 28
    invoke-virtual {p0}, Lcom/tappx/a/s5;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tappx/a/s5;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tappx/a/s5;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/s5;

    invoke-virtual {p0, p1}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/s5;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/tappx/a/h5$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->n:Lcom/tappx/a/h5$a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/s5;->r()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/tappx/a/s5;->g()I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    goto :goto_26

    .line 12
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    :goto_26
    return-object v0
.end method

.method public f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/s5;->b:I

    return v0
.end method

.method protected h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public j()[B
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/s5;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 3
    invoke-virtual {p0}, Lcom/tappx/a/s5;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tappx/a/s5;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/s5;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/s5;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/tappx/a/s5$c;
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/s5$c;->b:Lcom/tappx/a/s5$c;

    return-object v0
.end method

.method public n()Lcom/tappx/a/w5;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->m:Lcom/tappx/a/w5;

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final p()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/s5;->n()Lcom/tappx/a/w5;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/w5;->a()I

    move-result v0

    return v0
.end method

.method public q()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/s5;->d:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lcom/tappx/a/s5;->k:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public t()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lcom/tappx/a/s5;->j:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tappx/a/s5;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tappx/a/s5;->t()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "[X] "

    goto :goto_29

    :cond_27
    const-string v2, "[ ] "

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/tappx/a/s5;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/tappx/a/s5;->m()Lcom/tappx/a/s5$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tappx/a/s5;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_4
    iput-boolean v1, p0, Lcom/tappx/a/s5;->k:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method v()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/tappx/a/s5;->p:Lcom/tappx/a/s5$b;

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 5
    invoke-interface {v1, p0}, Lcom/tappx/a/s5$b;->a(Lcom/tappx/a/s5;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    .line 6
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final w()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/s5;->i:Z

    return v0
.end method

.method public final x()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/s5;->l:Z

    return v0
.end method
