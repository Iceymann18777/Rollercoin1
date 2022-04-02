.class public Lcom/tappx/a/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/m2;->a:Ljava/util/List;

    return-void
.end method

.method private c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m2;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tappx/a/m2;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v2, p0, Lcom/tappx/a/m2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_25

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_14

    :cond_24
    return-void

    :catchall_25
    move-exception v1

    .line 7
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    goto :goto_29

    :goto_28
    throw v1

    :goto_29
    goto :goto_28
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tappx/a/m2;->b:Z

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/m2;->c()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 3
    iget-boolean v0, p0, Lcom/tappx/a/m2;->b:Z

    if-eqz v0, :cond_a

    .line 4
    iget-object v0, p0, Lcom/tappx/a/m2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 6
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/m2;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/m2;->b:Z

    return-void
.end method
