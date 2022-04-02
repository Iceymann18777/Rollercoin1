.class public abstract Lrx/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field private producer:Lrx/Producer;

.field private requested:J

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "*>;"
        }
    .end annotation
.end field

.field private final subscriptions:Lrx/internal/util/SubscriptionList;


# direct methods
.method protected constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, v0, v1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1, v0}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "*>;Z)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 43
    iput-wide v0, p0, Lrx/Subscriber;->requested:J

    .line 80
    iput-object p1, p0, Lrx/Subscriber;->subscriber:Lrx/Subscriber;

    if-eqz p2, :cond_10

    if-eqz p1, :cond_10

    .line 81
    iget-object p1, p1, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    goto :goto_15

    :cond_10
    new-instance p1, Lrx/internal/util/SubscriptionList;

    invoke-direct {p1}, Lrx/internal/util/SubscriptionList;-><init>()V

    :goto_15
    iput-object p1, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    return-void
.end method


# virtual methods
.method public final add(Lrx/Subscription;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    return-void
.end method

.method public final isUnsubscribed()Z
    .registers 2

    .line 108
    iget-object v0, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 6

    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    iget-wide v0, p0, Lrx/Subscriber;->requested:J

    .line 194
    iput-object p1, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    .line 195
    iget-object p1, p0, Lrx/Subscriber;->subscriber:Lrx/Subscriber;

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz p1, :cond_11

    cmp-long p1, v0, v2

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 202
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_32

    if-eqz p1, :cond_1d

    .line 205
    iget-object p1, p0, Lrx/Subscriber;->subscriber:Lrx/Subscriber;

    iget-object v0, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_31

    :cond_1d
    cmp-long p1, v0, v2

    if-nez p1, :cond_2c

    .line 209
    iget-object p1, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_31

    .line 211
    :cond_2c
    iget-object p1, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    :goto_31
    return-void

    :catchall_32
    move-exception p1

    .line 202
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public final unsubscribe()V
    .registers 2

    .line 98
    iget-object v0, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    return-void
.end method
