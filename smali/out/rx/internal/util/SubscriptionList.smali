.class public final Lrx/internal/util/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 134
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 136
    :try_start_14
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_8

    :catchall_18
    move-exception v1

    if-nez v0, :cond_20

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :cond_20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 144
    :cond_24
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .registers 3

    .line 71
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 74
    :cond_7
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_25

    .line 75
    monitor-enter p0

    .line 76
    :try_start_c
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_20

    .line 77
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 80
    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 82
    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit p0

    return-void

    .line 85
    :cond_20
    monitor-exit p0

    goto :goto_25

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p1

    .line 88
    :cond_25
    :goto_25
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    return v0
.end method

.method public unsubscribe()V
    .registers 3

    .line 114
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_1b

    .line 116
    monitor-enter p0

    .line 117
    :try_start_5
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-eqz v0, :cond_b

    .line 118
    monitor-exit p0

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    .line 121
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 123
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 125
    invoke-static {v0}, Lrx/internal/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_1b

    :catchall_18
    move-exception v0

    .line 123
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :goto_1b
    return-void
.end method
