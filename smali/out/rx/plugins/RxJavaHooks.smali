.class public final Lrx/plugins/RxJavaHooks;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# static fields
.field static volatile onCompletableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Completable$Operator;",
            "Lrx/Completable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Lrx/Completable;",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleAction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Lrx/Single;",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 87
    invoke-static {}, Lrx/plugins/RxJavaHooks;->init()V

    return-void
.end method

.method static init()V
    .registers 1

    .line 101
    new-instance v0, Lrx/plugins/RxJavaHooks$1;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$1;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 108
    new-instance v0, Lrx/plugins/RxJavaHooks$2;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$2;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 115
    new-instance v0, Lrx/plugins/RxJavaHooks$3;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$3;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 122
    new-instance v0, Lrx/plugins/RxJavaHooks$4;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$4;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 137
    new-instance v0, Lrx/plugins/RxJavaHooks$5;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$5;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 144
    new-instance v0, Lrx/plugins/RxJavaHooks$6;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$6;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 151
    new-instance v0, Lrx/plugins/RxJavaHooks$7;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$7;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 158
    new-instance v0, Lrx/plugins/RxJavaHooks$8;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$8;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 165
    new-instance v0, Lrx/plugins/RxJavaHooks$9;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$9;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 172
    new-instance v0, Lrx/plugins/RxJavaHooks$10;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$10;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 179
    new-instance v0, Lrx/plugins/RxJavaHooks$11;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$11;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 186
    new-instance v0, Lrx/plugins/RxJavaHooks$12;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$12;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 193
    new-instance v0, Lrx/plugins/RxJavaHooks$13;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$13;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 200
    invoke-static {}, Lrx/plugins/RxJavaHooks;->initCreate()V

    return-void
.end method

.method static initCreate()V
    .registers 1

    .line 205
    new-instance v0, Lrx/plugins/RxJavaHooks$14;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$14;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 212
    new-instance v0, Lrx/plugins/RxJavaHooks$15;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$15;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 219
    new-instance v0, Lrx/plugins/RxJavaHooks$16;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$16;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    return-void
.end method

.method public static onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 2

    .line 363
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    if-eqz v0, :cond_a

    .line 365
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/Completable$OnSubscribe;

    :cond_a
    return-object p0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 301
    sget-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    if-eqz v0, :cond_29

    .line 304
    :try_start_4
    invoke-interface {v0, p0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    .line 312
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    .line 318
    :cond_29
    invoke-static {p0}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 458
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    if-eqz v0, :cond_a

    .line 460
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :cond_a
    return-object p0
.end method

.method public static onObservableReturn(Lrx/Subscription;)Lrx/Subscription;
    .registers 2

    .line 445
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    if-eqz v0, :cond_a

    .line 447
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/Subscription;

    :cond_a
    return-object p0
.end method

.method public static onObservableStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .line 432
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    if-eqz v0, :cond_b

    .line 434
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/Observable$OnSubscribe;

    return-object p0

    :cond_b
    return-object p1
.end method

.method public static onSingleLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator<",
            "TR;TT;>;)",
            "Lrx/Observable$Operator<",
            "TR;TT;>;"
        }
    .end annotation

    .line 532
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    if-eqz v0, :cond_a

    .line 534
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/Observable$Operator;

    :cond_a
    return-object p0
.end method

.method static signalUncaught(Ljava/lang/Throwable;)V
    .registers 3

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 324
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
