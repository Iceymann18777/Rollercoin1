.class final synthetic Lcom/google/firebase/iid/FirebaseInstanceIdReceiver$$Lambda$0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final arg$1:Z

.field private final arg$2:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver$$Lambda$0;->arg$1:Z

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver$$Lambda$0;->arg$2:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver$$Lambda$0;->arg$1:Z

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver$$Lambda$0;->arg$2:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->lambda$onReceiveInternal$0$FirebaseInstanceIdReceiver(ZLandroid/content/BroadcastReceiver$PendingResult;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
