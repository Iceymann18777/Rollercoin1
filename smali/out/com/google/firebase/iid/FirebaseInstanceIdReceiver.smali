.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;
.source "com.google.firebase:firebase-iid@@20.2.3"


# instance fields
.field private final processorExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->newCachedSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static final synthetic lambda$onReceiveInternal$0$FirebaseInstanceIdReceiver(ZLandroid/content/BroadcastReceiver$PendingResult;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    if-eqz p0, :cond_18

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_15

    :cond_13
    const/16 p0, 0x1f4

    .line 31
    :goto_15
    invoke-virtual {p1, p0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    .line 32
    :cond_18
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method private static normalizeIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 9
    invoke-static {p1}, Lcom/google/firebase/iid/ServiceStarter;->unwrapServiceIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p1, v0

    :cond_7
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_1f

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_1f
    return-object p1
.end method

.method private final onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "from"

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.com/iid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 18
    new-instance p1, Lcom/google/firebase/iid/IidBroadcastProcessor;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0}, Lcom/google/firebase/iid/IidBroadcastProcessor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1e

    .line 19
    :cond_16
    new-instance v0, Lcom/google/firebase/iid/FcmBroadcastProcessor;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/iid/FcmBroadcastProcessor;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    move-object p1, v0

    .line 20
    :goto_1e
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->isOrderedBroadcast()Z

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 23
    invoke-interface {p1, p2}, Lcom/google/firebase/iid/BroadcastProcessor;->process(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver$$Lambda$0;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver$$Lambda$0;-><init>(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 24
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->normalizeIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
