.class public abstract Lrx/plugins/RxJavaCompletableExecutionHook;
.super Ljava/lang/Object;
.source "RxJavaCompletableExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public onLift(Lrx/Completable$Operator;)Lrx/Completable$Operator;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public onSubscribeStart(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p2
.end method
