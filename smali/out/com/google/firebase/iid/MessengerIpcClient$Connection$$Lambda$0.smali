.class final synthetic Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/MessengerIpcClient$Connection;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$0;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$Connection;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$0;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$Connection;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->receivedResponse(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
