.class final Lcom/google/android/gms/internal/common/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/common/zzf;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/common/zzh;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(II)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method
