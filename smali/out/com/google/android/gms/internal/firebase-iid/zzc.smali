.class final Lcom/google/android/gms/internal/firebase-iid/zzc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-iid/zzb;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-iid/zzd;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-iid/zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4

    const/4 p1, 0x1

    .line 3
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method
