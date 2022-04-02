.class public final Lrx/internal/producers/SingleDelayedProducer;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SingleDelayedProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    return-void
.end method

.method private static emit(Lrx/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 102
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_15

    .line 107
    invoke-virtual {p0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 110
    :cond_11
    invoke-virtual {p0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :catchall_15
    move-exception v0

    .line 104
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    return-void

    .line 59
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lrx/internal/producers/SingleDelayedProducer;->get()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 61
    invoke-virtual {p0, p1, p2}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_b

    :cond_1a
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2b

    const/4 p1, 0x3

    .line 66
    invoke-virtual {p0, p2, p1}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 67
    iget-object p1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    iget-object p2, p0, Lrx/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    invoke-static {p1, p2}, Lrx/internal/producers/SingleDelayedProducer;->emit(Lrx/Subscriber;Ljava/lang/Object;)V

    :cond_2b
    return-void

    .line 53
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    :goto_0
    invoke-virtual {p0}, Lrx/internal/producers/SingleDelayedProducer;->get()I

    move-result v0

    if-nez v0, :cond_11

    .line 78
    iput-object p1, p0, Lrx/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0, v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    const/4 v0, 0x3

    .line 84
    invoke-virtual {p0, v1, v0}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 85
    iget-object v0, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;->emit(Lrx/Subscriber;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method
