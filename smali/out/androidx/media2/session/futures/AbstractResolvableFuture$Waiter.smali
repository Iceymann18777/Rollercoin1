.class final Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Waiter"
.end annotation


# static fields
.field static final TOMBSTONE:Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;


# instance fields
.field volatile next:Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 122
    new-instance v0, Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;-><init>(Z)V

    sput-object v0, Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Landroidx/media2/session/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;->putThread(Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setNext(Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;)V
    .registers 3

    .line 144
    sget-object v0, Landroidx/media2/session/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v0, p0, p1}, Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;->putNext(Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;)V

    return-void
.end method

.method unpark()V
    .registers 3

    .line 152
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 155
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_a
    return-void
.end method
