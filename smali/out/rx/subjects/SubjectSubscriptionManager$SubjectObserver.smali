.class public final Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SubjectObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field fastPath:Z

.field first:Z

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 219
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method accept(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 317
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method emitFirst(Ljava/lang/Object;)V
    .registers 3

    .line 261
    monitor-enter p0

    .line 262
    :try_start_1
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v0, :cond_a

    goto :goto_1a

    :cond_a
    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    .line 266
    :cond_10
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 267
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1c

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitLoop(Ljava/util/List;Ljava/lang/Object;)V

    :cond_19
    return-void

    .line 263
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    .line 267
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method emitLoop(Ljava/util/List;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    .line 284
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 285
    invoke-virtual {p0, v3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;)V

    goto :goto_9

    :catchall_17
    move-exception p1

    const/4 v0, 0x0

    goto :goto_36

    :cond_1a
    if-eqz v1, :cond_20

    .line 290
    invoke-virtual {p0, p2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 292
    :cond_20
    monitor-enter p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_17

    .line 293
    :try_start_21
    iget-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    const/4 v3, 0x0

    .line 294
    iput-object v3, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    if-nez p1, :cond_2c

    .line 296
    iput-boolean v2, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 298
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_34

    return-void

    .line 300
    :cond_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2e

    goto :goto_2

    :catchall_2e
    move-exception p1

    const/4 v0, 0x0

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_34

    :try_start_31
    throw p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    goto :goto_36

    :catchall_34
    move-exception p1

    goto :goto_30

    :goto_36
    if-nez v0, :cond_40

    .line 304
    monitor-enter p0

    .line 305
    :try_start_39
    iput-boolean v2, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 306
    monitor-exit p0

    goto :goto_40

    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3d

    throw p1

    :cond_40
    :goto_40
    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method

.method emitNext(Ljava/lang/Object;)V
    .registers 3

    .line 240
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    if-nez v0, :cond_26

    .line 241
    monitor-enter p0

    const/4 v0, 0x0

    .line 242
    :try_start_6
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 243
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v0, :cond_1e

    .line 244
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    if-nez v0, :cond_17

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    .line 247
    :cond_17
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit p0

    return-void

    .line 250
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_23

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->fastPath:Z

    goto :goto_26

    :catchall_23
    move-exception p1

    .line 250
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1

    .line 253
    :cond_26
    :goto_26
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    return-void
.end method

.method public onCompleted()V
    .registers 2

    .line 231
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 227
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
