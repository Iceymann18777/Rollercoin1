.class final synthetic Lcom/google/firebase/iid/Rpc$$Lambda$0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field static final $instance:Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/iid/Rpc$$Lambda$0;

    invoke-direct {v0}, Lcom/google/firebase/iid/Rpc$$Lambda$0;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/Rpc$$Lambda$0;->$instance:Lcom/google/android/gms/tasks/Continuation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/iid/Rpc;->lambda$registerRpc$0$Rpc(Lcom/google/android/gms/tasks/Task;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
