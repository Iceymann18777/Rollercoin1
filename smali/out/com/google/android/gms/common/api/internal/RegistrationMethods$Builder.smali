.class public Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/RegistrationMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$AnyClient;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/RemoteCall<",
            "TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private zab:Lcom/google/android/gms/common/api/internal/RemoteCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/RemoteCall<",
            "TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private zac:Ljava/lang/Runnable;

.field private zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private zae:[Lcom/google/android/gms/common/Feature;

.field private zaf:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zac:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaf:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zabt;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;-><init>()V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;)Lcom/google/android/gms/common/api/internal/RemoteCall;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;)Lcom/google/android/gms/common/api/internal/RemoteCall;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zab:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/api/internal/RegistrationMethods;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v3, "Must set register function"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zab:Lcom/google/android/gms/common/api/internal/RemoteCall;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const-string v3, "Must set unregister function"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    const-string v0, "Must set holder"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    const-string v1, "Key must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 26
    new-instance v1, Lcom/google/android/gms/common/api/internal/RegistrationMethods;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaby;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zae:[Lcom/google/android/gms/common/Feature;

    iget-boolean v5, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaf:Z

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zaby;-><init>(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Lcom/google/android/gms/common/Feature;Z)V

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabx;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zabx;-><init>(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zac:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/common/api/internal/RegistrationMethods;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;Lcom/google/android/gms/common/api/internal/zabt;)V

    return-object v1
.end method

.method public onConnectionSuspended(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zac:Ljava/lang/Runnable;

    return-object p0
.end method

.method public register(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/RemoteCall<",
            "TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method

.method public register(Lcom/google/android/gms/common/util/BiConsumer;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/util/BiConsumer<",
            "TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/internal/zabw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/zabw;-><init>(Lcom/google/android/gms/common/util/BiConsumer;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method

.method public setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 19
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaf:Z

    return-object p0
.end method

.method public varargs setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/Feature;",
            ")",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zae:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public unregister(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/RemoteCall<",
            "TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zab:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method

.method public unregister(Lcom/google/android/gms/common/util/BiConsumer;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/util/BiConsumer<",
            "TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    new-instance p1, Lcom/google/android/gms/common/api/internal/zabv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zabv;-><init>(Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-object p0
.end method

.method public withHolder(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zad:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-object p0
.end method

.method final synthetic zaa(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/RemoteCall;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
