.class final synthetic Lcom/google/firebase/iid/Rpc$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/Rpc$$Lambda$2;->arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/Rpc$$Lambda$2;->arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/iid/Rpc;->lambda$registerRpcInternal$3$Rpc(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
