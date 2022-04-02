.class public Lrx/observers/SafeSubscriber;
.super Lrx/Subscriber;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z


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

    .line 65
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 66
    iput-object p1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .registers 10

    .line 151
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 153
    :try_start_e
    iget-object v3, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_13
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_e .. :try_end_13} :catch_5d
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    .line 191
    :try_start_13
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    .line 193
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 194
    new-instance v0, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_21
    move-exception v3

    .line 179
    invoke-static {v3}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 181
    :try_start_25
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3f

    .line 187
    new-instance v4, Lrx/exceptions/OnErrorFailedException;

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string p1, "Error occurred when trying to propagate error to Observer.onError"

    invoke-direct {v4, p1, v5}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catchall_3f
    move-exception v4

    .line 183
    invoke-static {v4}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 184
    new-instance v5, Lrx/exceptions/OnErrorFailedException;

    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object p1, v7, v1

    aput-object v3, v7, v0

    aput-object v4, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string p1, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    invoke-direct {v5, p1, v6}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_5d
    move-exception v3

    .line 167
    :try_start_5e
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    .line 172
    throw v3

    :catchall_62
    move-exception v3

    .line 169
    invoke-static {v3}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 170
    new-instance v4, Lrx/exceptions/OnErrorNotImplementedException;

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string p1, "Observer.onError not implemented and error while unsubscribing."

    invoke-direct {v4, p1, v5}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public onCompleted()V
    .registers 4

    .line 76
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_42

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 79
    :try_start_7
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1e

    .line 90
    :try_start_c
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_42

    :catchall_10
    move-exception v0

    .line 92
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1e
    move-exception v0

    .line 83
    :try_start_1f
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    .line 90
    :try_start_30
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    .line 93
    throw v0

    :catchall_34
    move-exception v0

    .line 92
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_42
    :goto_42
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 112
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 113
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 115
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_e

    .line 134
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception p1

    .line 139
    invoke-static {p1, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    :cond_e
    :goto_e
    return-void
.end method
