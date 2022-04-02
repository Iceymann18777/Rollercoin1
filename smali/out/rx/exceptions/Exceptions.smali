.class public final Lrx/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 6

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 111
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2b

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x19

    if-lt v1, v3, :cond_13

    return-void

    .line 116
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_2b

    .line 120
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_6

    .line 125
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2e

    :catchall_2e
    return-void
.end method

.method public static getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4

    const/4 v0, 0x0

    .line 143
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1b

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x19

    if-lt v0, v2, :cond_15

    .line 146
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stack too deep to get final cause"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 148
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    move v0, v1

    goto :goto_1

    :cond_1b
    return-object p0
.end method

.method public static throwIfAny(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_30

    .line 161
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 162
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x0

    .line 163
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    .line 166
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_27

    .line 168
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_21

    .line 169
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 171
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 167
    :cond_27
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 174
    :cond_2a
    new-instance v0, Lrx/exceptions/CompositeException;

    invoke-direct {v0, p0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    throw v0

    :cond_30
    return-void
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 2

    .line 81
    instance-of v0, p0, Lrx/exceptions/OnErrorNotImplementedException;

    if-nez v0, :cond_28

    .line 83
    instance-of v0, p0, Lrx/exceptions/OnErrorFailedException;

    if-nez v0, :cond_25

    .line 85
    instance-of v0, p0, Lrx/exceptions/OnCompletedFailedException;

    if-nez v0, :cond_22

    .line 89
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_1f

    .line 91
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1c

    .line 93
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_19

    return-void

    .line 94
    :cond_19
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    .line 92
    :cond_1c
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    .line 90
    :cond_1f
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0

    .line 86
    :cond_22
    check-cast p0, Lrx/exceptions/OnCompletedFailedException;

    throw p0

    .line 84
    :cond_25
    check-cast p0, Lrx/exceptions/OnErrorFailedException;

    throw p0

    .line 82
    :cond_28
    check-cast p0, Lrx/exceptions/OnErrorNotImplementedException;

    throw p0
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer<",
            "*>;)V"
        }
    .end annotation

    .line 211
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 212
    invoke-interface {p1, p0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 188
    invoke-static {p0, p2}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {p1, p0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/SingleSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/SingleSubscriber<",
            "*>;)V"
        }
    .end annotation

    .line 223
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {p1, p0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
