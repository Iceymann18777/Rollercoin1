.class public abstract Landroidx/media2/common/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/futures/AbstractResolvableFuture$SynchronizedHelper;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$SafeAtomicHelper;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

.field volatile value:Ljava/lang/Object;

.field volatile waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 64
    const-class v0, Landroidx/media2/common/futures/AbstractResolvableFuture;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 66
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    .line 86
    :try_start_1a
    new-instance v1, Landroidx/media2/common/futures/AbstractResolvableFuture$SafeAtomicHelper;

    const-class v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "thread"

    .line 88
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-class v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-string v5, "next"

    .line 89
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-string v5, "waiters"

    .line 90
    invoke-static {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    const-string v6, "listeners"

    .line 91
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v2, Ljava/lang/Object;

    const-string v7, "value"

    .line 95
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroidx/media2/common/futures/AbstractResolvableFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_4c
    .catchall {:try_start_1a .. :try_end_4c} :catchall_4e

    const/4 v0, 0x0

    goto :goto_54

    :catchall_4e
    move-exception v0

    .line 102
    new-instance v1, Landroidx/media2/common/futures/AbstractResolvableFuture$SynchronizedHelper;

    invoke-direct {v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$SynchronizedHelper;-><init>()V

    .line 105
    :goto_54
    sput-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    .line 110
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v0, :cond_63

    .line 115
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :cond_63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "]"

    .line 1024
    :try_start_2
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 1025
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_15} :catch_2f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_15} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_3f

    :catch_16
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 1031
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :catch_29
    const-string v0, "CANCELLED"

    .line 1029
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :catch_2f
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 1027
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3

    .line 1193
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    .line 1202
    throw p0
.end method

.method private clearListeners(Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    .registers 6

    .line 961
    :cond_0
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 962
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_f
    if-eqz p1, :cond_18

    .line 966
    iget-object v1, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 967
    iput-object v0, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    move-object v0, p1

    move-object p1, v1

    goto :goto_f

    :cond_18
    return-object v0
.end method

.method static complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/futures/AbstractResolvableFuture<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 872
    :goto_1
    invoke-direct {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->releaseWaiters()V

    .line 878
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->afterDone()V

    .line 880
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->clearListeners(Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_33

    .line 884
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 885
    iget-object v1, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->task:Ljava/lang/Runnable;

    .line 886
    instance-of v2, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v2, :cond_2c

    .line 887
    check-cast v1, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    .line 894
    iget-object p0, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/common/futures/AbstractResolvableFuture;

    .line 895
    iget-object v2, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-ne v2, v1, :cond_31

    .line 896
    iget-object v2, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 897
    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_1

    .line 903
    :cond_2c
    iget-object p0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_31
    move-object p0, v0

    goto :goto_b

    :cond_33
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 1054
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_25

    :catch_4
    move-exception v0

    .line 1059
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 514
    instance-of v0, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    if-nez v0, :cond_18

    .line 518
    instance-of v0, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    if-nez v0, :cond_e

    .line 520
    sget-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1

    .line 519
    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    iget-object p1, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 515
    :cond_18
    check-cast p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    iget-object p1, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 801
    instance-of v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 807
    check-cast p0, Landroidx/media2/common/futures/AbstractResolvableFuture;

    iget-object p0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 808
    instance-of v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v0, :cond_22

    .line 812
    move-object v0, p0

    check-cast v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    .line 813
    iget-boolean v2, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v2, :cond_22

    .line 814
    iget-object p0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz p0, :cond_20

    new-instance p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_22

    :cond_20
    sget-object p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    :cond_22
    :goto_22
    return-object p0

    .line 820
    :cond_23
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    .line 822
    sget-boolean v2, Landroidx/media2/common/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_31

    .line 823
    sget-object p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    return-object p0

    .line 827
    :cond_31
    :try_start_31
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_39

    .line 828
    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;
    :try_end_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_31 .. :try_end_39} :catch_66
    .catch Ljava/util/concurrent/CancellationException; {:try_start_31 .. :try_end_39} :catch_41
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    :cond_39
    return-object v2

    :catchall_3a
    move-exception p0

    .line 842
    new-instance v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v0, p0}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_41
    move-exception v2

    if-nez v0, :cond_60

    .line 833
    new-instance v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 840
    :cond_60
    new-instance p0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    invoke-direct {p0, v1, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_66
    move-exception p0

    .line 830
    new-instance v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 854
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    .line 861
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private releaseWaiters()V
    .registers 4

    .line 940
    :cond_0
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 941
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_c
    if-eqz v0, :cond_14

    .line 944
    invoke-virtual {v0}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->unpark()V

    .line 943
    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    goto :goto_c

    :cond_14
    return-void
.end method

.method private removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V
    .registers 6

    const/4 v0, 0x0

    .line 172
    iput-object v0, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 176
    :goto_3
    iget-object p1, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 177
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-ne p1, v1, :cond_a

    return-void

    :cond_a
    move-object v1, v0

    :goto_b
    if-eqz p1, :cond_29

    .line 182
    iget-object v2, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 183
    iget-object v3, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    move-object v1, p1

    goto :goto_27

    :cond_15
    if-eqz v1, :cond_1e

    .line 186
    iput-object v2, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 187
    iget-object p1, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_27

    goto :goto_3

    .line 191
    :cond_1e
    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v3, p0, p1, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3

    :cond_27
    :goto_27
    move-object p1, v2

    goto :goto_b

    :cond_29
    return-void
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-ne p1, p0, :cond_5

    const-string p1, "this future"

    return-object p1

    .line 1045
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 654
    invoke-static {p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-static {p2}, Landroidx/media2/common/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 657
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    if-eq v0, v1, :cond_22

    .line 658
    new-instance v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    invoke-direct {v1, p1, p2}, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 660
    :cond_11
    iput-object v0, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 661
    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 664
    :cond_1c
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 665
    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    if-ne v0, v2, :cond_11

    .line 669
    :cond_22
    invoke-static {p1, p2}, Landroidx/media2/common/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected afterDone()V
    .registers 1

    return-void
.end method

.method public final cancel(Z)Z
    .registers 9

    .line 556
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 558
    :goto_9
    instance-of v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v3, v4

    if-eqz v3, :cond_61

    .line 561
    sget-boolean v3, Landroidx/media2/common/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v3, :cond_1f

    new-instance v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_26

    :cond_1f
    if-eqz p1, :cond_24

    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    goto :goto_26

    :cond_24
    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    :goto_26
    const/4 v5, 0x0

    move-object v4, p0

    .line 571
    :cond_28
    :goto_28
    sget-object v6, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v6, v4, v0, v3}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    if-eqz p1, :cond_35

    .line 576
    invoke-virtual {v4}, Landroidx/media2/common/futures/AbstractResolvableFuture;->interruptTask()V

    .line 578
    :cond_35
    invoke-static {v4}, Landroidx/media2/common/futures/AbstractResolvableFuture;->complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V

    .line 579
    instance-of v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v4, :cond_62

    .line 583
    check-cast v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 584
    instance-of v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;

    if-eqz v4, :cond_55

    .line 593
    move-object v4, v0

    check-cast v4, Landroidx/media2/common/futures/AbstractResolvableFuture;

    .line 595
    iget-object v0, v4, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-nez v0, :cond_4d

    const/4 v5, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    .line 596
    :goto_4e
    instance-of v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v5, v6

    if-eqz v5, :cond_62

    const/4 v5, 0x1

    goto :goto_28

    .line 602
    :cond_55
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_62

    .line 608
    :cond_59
    iget-object v0, v4, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 609
    instance-of v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v6, :cond_28

    move v1, v5

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :cond_62
    :goto_62
    return v1
.end method

.method public final get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 471
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_61

    .line 474
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    .line 475
    :goto_f
    instance-of v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 476
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 478
    :cond_1a
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 479
    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-eq v0, v3, :cond_5a

    .line 480
    new-instance v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v3}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 482
    :cond_25
    invoke-virtual {v3, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 483
    sget-object v4, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v4, p0, v0, v3}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 486
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 496
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    .line 497
    :goto_40
    instance-of v5, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    .line 498
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 490
    :cond_4b
    invoke-direct {p0, v3}, Landroidx/media2/common/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 491
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 502
    :cond_54
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 503
    sget-object v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-ne v0, v4, :cond_25

    .line 507
    :cond_5a
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 472
    :cond_61
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_68

    :goto_67
    throw v0

    :goto_68
    goto :goto_67
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 360
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 362
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1b0

    .line 365
    iget-object v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    const/4 v9, 0x1

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    .line 366
    :goto_18
    instance-of v10, v6, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    .line 367
    invoke-direct {v0, v6}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2f

    .line 370
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_30

    :cond_2f
    move-wide v11, v9

    :goto_30
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_8b

    .line 373
    iget-object v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 374
    sget-object v15, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-eq v6, v15, :cond_84

    .line 375
    new-instance v15, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v15}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 377
    :cond_41
    invoke-virtual {v15, v6}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 378
    sget-object v7, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v7, v0, v6, v15}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 380
    :cond_4c
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 383
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_75

    .line 390
    iget-object v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5b

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    .line 391
    :goto_5c
    instance-of v6, v4, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_67

    .line 392
    invoke-direct {v0, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 396
    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4c

    .line 400
    invoke-direct {v0, v15}, Landroidx/media2/common/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    goto :goto_8b

    .line 384
    :cond_75
    invoke-direct {v0, v15}, Landroidx/media2/common/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 385
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 405
    :cond_7e
    iget-object v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 406
    sget-object v7, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-ne v6, v7, :cond_41

    .line 410
    :cond_84
    iget-object v1, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8b
    :goto_8b
    cmp-long v6, v4, v9

    if-lez v6, :cond_b4

    .line 415
    iget-object v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v4, :cond_95

    const/4 v5, 0x1

    goto :goto_96

    :cond_95
    const/4 v5, 0x0

    .line 416
    :goto_96
    instance-of v6, v4, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_a1

    .line 417
    invoke-direct {v0, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 419
    :cond_a1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 422
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_8b

    .line 420
    :cond_ae
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 425
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v6

    .line 426
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 427
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Waited "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_179

    .line 432
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 434
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 435
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_115

    cmp-long v3, v4, v13

    if-lez v3, :cond_112

    goto :goto_115

    :cond_112
    const/16 v16, 0x0

    goto :goto_117

    :cond_115
    :goto_115
    const/16 v16, 0x1

    :goto_117
    cmp-long v3, v11, v9

    if-lez v3, :cond_152

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_143

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_152
    if-eqz v16, :cond_168

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    :cond_179
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_196

    .line 455
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_196
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_1b0
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_1b7

    :goto_1b6
    throw v1

    :goto_1b7
    goto :goto_1b6
.end method

.method protected interruptTask()V
    .registers 1

    return-void
.end method

.method public final isCancelled()Z
    .registers 2

    .line 537
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 538
    instance-of v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    return v0
.end method

.method public final isDone()Z
    .registers 4

    .line 531
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    .line 532
    :goto_8
    instance-of v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 4

    .line 1011
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 1012
    instance-of v1, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v1, :cond_25

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1014
    :cond_25
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_49

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remaining delay=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1016
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    .line 686
    sget-object p1, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    .line 687
    :cond_4
    sget-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 688
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1f

    const-string v1, "CANCELLED"

    .line 978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 979
    :cond_1f
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 980
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_67

    .line 984
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_44

    :catch_2e
    move-exception v1

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_44
    if-eqz v1, :cond_58

    .line 992
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "PENDING, info=["

    .line 993
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 994
    :cond_58
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 995
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_67

    :cond_62
    const-string v1, "PENDING"

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :goto_67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
