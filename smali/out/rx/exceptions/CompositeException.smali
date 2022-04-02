.class public final Lrx/exceptions/CompositeException;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;,
        Lrx/exceptions/CompositeException$WrappedPrintWriter;,
        Lrx/exceptions/CompositeException$WrappedPrintStream;,
        Lrx/exceptions/CompositeException$PrintStreamOrWriter;
    }
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 51
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3c

    .line 54
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 55
    instance-of v2, v1, Lrx/exceptions/CompositeException;

    if-eqz v2, :cond_2d

    .line 56
    check-cast v1, Lrx/exceptions/CompositeException;

    invoke-virtual {v1}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_2d
    if-eqz v1, :cond_33

    .line 59
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 61
    :cond_33
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 65
    :cond_3c
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_44
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " exceptions occurred. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrx/exceptions/CompositeException;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9

    .line 216
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    const-string v4, "\t\tat "

    .line 218
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 220
    :cond_23
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_37

    const-string p3, "\tCaused by: "

    .line 221
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    const-string p3, ""

    invoke-direct {p0, p1, p2, p3}, Lrx/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1f

    if-ne v1, p1, :cond_e

    goto :goto_1f

    .line 290
    :cond_e
    :goto_e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1f

    if-ne p1, v1, :cond_1a

    goto :goto_1f

    .line 295
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_e

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    .line 308
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_9

    goto :goto_18

    .line 313
    :cond_9
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_17

    if-ne p1, v0, :cond_12

    goto :goto_17

    .line 317
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_9

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    :goto_18
    return-object p1
.end method

.method private printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V
    .registers 9

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lrx/exceptions/CompositeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_27

    aget-object v5, v2, v4

    const-string v6, "\tat "

    .line 202
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 205
    :cond_27
    iget-object v1, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "  ComposedException "

    .line 206
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " :\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    .line 207
    invoke-direct {p0, v0, v4, v5}, Lrx/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    add-int/2addr v3, v2

    goto :goto_2f

    .line 210
    :cond_4f
    invoke-virtual {p1}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 211
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/exceptions/CompositeException$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 212
    monitor-exit v1

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_5d

    goto :goto_61

    :goto_60
    throw p1

    :goto_61
    goto :goto_60
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 9

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_5c

    .line 129
    new-instance v0, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;

    invoke-direct {v0}, Lrx/exceptions/CompositeException$CompositeExceptionCausalChain;-><init>()V

    .line 130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 133
    iget-object v2, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 134
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_16

    .line 138
    :cond_29
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0, v4}, Lrx/exceptions/CompositeException;->getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 142
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    .line 143
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 145
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Duplicate found in causal chain so cropping to prevent loop ..."

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_34

    .line 148
    :cond_4e
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_60

    goto :goto_34

    .line 153
    :cond_52
    :try_start_52
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_55

    .line 159
    :catchall_55
    :try_start_55
    invoke-direct {p0, v3}, Lrx/exceptions/CompositeException;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_16

    .line 161
    :cond_5a
    iput-object v0, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 163
    :cond_5c
    iget-object v0, p0, Lrx/exceptions/CompositeException;->cause:Ljava/lang/Throwable;
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-object v0

    :catchall_60
    move-exception v0

    monitor-exit p0

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method public getExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lrx/exceptions/CompositeException;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lrx/exceptions/CompositeException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    .line 178
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    .line 183
    new-instance v0, Lrx/exceptions/CompositeException$WrappedPrintStream;

    invoke-direct {v0, p1}, Lrx/exceptions/CompositeException$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    .line 188
    new-instance v0, Lrx/exceptions/CompositeException$WrappedPrintWriter;

    invoke-direct {v0, p1}, Lrx/exceptions/CompositeException$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException;->printStackTrace(Lrx/exceptions/CompositeException$PrintStreamOrWriter;)V

    return-void
.end method
