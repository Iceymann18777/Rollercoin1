.class public abstract Lcom/google/android/gms/common/internal/BaseGmsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/BaseGmsClient$zze;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zza;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONNECT_STATE_CONNECTED:I = 0x4

.field public static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field public static final CONNECT_STATE_DISCONNECTING:I = 0x5

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final zzd:[Lcom/google/android/gms/common/Feature;


# instance fields
.field final zza:Landroid/os/Handler;

.field private zzaa:Lcom/google/android/gms/common/ConnectionResult;

.field private zzab:Z

.field private volatile zzac:Lcom/google/android/gms/common/internal/zzc;

.field protected zzb:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

.field protected zzc:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:I

.field private zzi:J

.field private volatile zzj:Ljava/lang/String;

.field private zzk:Lcom/google/android/gms/common/internal/zzk;

.field private final zzl:Landroid/content/Context;

.field private final zzm:Landroid/os/Looper;

.field private final zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

.field private final zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zzp:Ljava/lang/Object;

.field private final zzq:Ljava/lang/Object;

.field private zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

.field private zzs:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/internal/BaseGmsClient$zzc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;"
        }
    .end annotation
.end field

.field private zzv:I

.field private final zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

.field private final zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

.field private final zzy:I

.field private final zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 381
    sput-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:[Lcom/google/android/gms/common/Feature;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    .line 382
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .registers 11

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 34
    iput v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzaa:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzab:Z

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzac:Lcom/google/android/gms/common/internal/zzc;

    .line 38
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "Context must not be null"

    .line 39
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    const-string p1, "Handler must not be null"

    .line 40
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Landroid/os/Handler;

    .line 41
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 42
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    const-string p1, "API availability must not be null"

    .line 44
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 45
    iput p5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    .line 46
    iput-object p6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 47
    iput-object p7, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 48
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .registers 16

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .registers 11

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzaa:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzab:Z

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzac:Lcom/google/android/gms/common/internal/zzc;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 20
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    const-string p1, "API availability must not be null"

    .line 22
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 23
    new-instance p1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Landroid/os/Handler;

    .line 24
    iput p5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    .line 25
    iput-object p6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 26
    iput-object p7, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 27
    iput-object p8, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    .line 371
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzaa:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;
    .registers 1

    .line 369
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private final zza(I)V
    .registers 5

    .line 187
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzab:Z

    goto :goto_c

    :cond_b
    const/4 p1, 0x4

    .line 191
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final zza(ILandroid/os/IInterface;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_8
    if-eqz p2, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    if-ne v3, v4, :cond_10

    const/4 v1, 0x1

    .line 67
    :cond_10
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_16
    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    .line 70
    iput-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Landroid/os/IInterface;

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onSetConnectState(ILandroid/os/IInterface;)V

    const/4 v3, 0x0

    if-eq p1, v2, :cond_18b

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-eq p1, v2, :cond_2f

    if-eq p1, v4, :cond_2f

    if-eq p1, v0, :cond_2a

    goto/16 :goto_1b4

    .line 124
    :cond_2a
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    goto/16 :goto_1b4

    .line 74
    :cond_2f
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    if-eqz p1, :cond_9c

    const-string p1, "GmsClient"

    .line 75
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 76
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zzk;->zza()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zza()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zzc()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zzd()Z

    move-result v11

    .line 85
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 86
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    :cond_9c
    new-instance p1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 89
    iget p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    if-ne p1, v4, :cond_cc

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_cc

    .line 90
    new-instance p1, Lcom/google/android/gms/common/internal/zzk;

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 93
    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getDefaultBindFlags()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p1

    .line 94
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_e3

    .line 96
    :cond_cc
    new-instance p1, Lcom/google/android/gms/common/internal/zzk;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 99
    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getDefaultBindFlags()I

    move-result v8

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getUseDynamicLookup()Z

    move-result v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 102
    :goto_e3
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zzd()Z

    move-result p1

    if-eqz p1, :cond_117

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result p1

    const p2, 0x1110e58

    if-ge p1, p2, :cond_117

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10d

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_113

    :cond_10d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_113
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_117
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 108
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zzk;->zza()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzk;->zzc()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zzk;->zzd()Z

    move-result v6

    .line 114
    new-instance v7, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    invoke-direct {v7, p2, v0, v2, v6}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p1, v7, v4, v5}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b4

    const-string p1, "GmsClient"

    .line 116
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 117
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zzk;->zza()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 120
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 122
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/Bundle;I)V

    goto :goto_1b4

    .line 127
    :cond_18b
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    if-eqz p1, :cond_1b4

    .line 128
    iget-object v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zza()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 130
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zzc()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzk;->zzd()Z

    move-result v10

    .line 134
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 135
    iput-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;

    .line 136
    :cond_1b4
    :goto_1b4
    monitor-exit v1

    return-void

    :catchall_1b6
    move-exception p1

    monitor-exit v1
    :try_end_1b8
    .catchall {:try_start_16 .. :try_end_1b8} :catchall_1b6

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .registers 2

    const/16 p1, 0x10

    .line 368
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V
    .registers 3

    const/4 p2, 0x0

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zzc;)V
    .registers 2

    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/zzc;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/internal/zzc;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzac:Lcom/google/android/gms/common/internal/zzc;

    return-void
.end method

.method private final zza(IILandroid/os/IInterface;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    if-eq v1, p1, :cond_a

    const/4 p1, 0x0

    .line 140
    monitor-exit v0

    return p1

    .line 141
    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 142
    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    .line 143
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z
    .registers 4

    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method private final zzb()Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    .line 164
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .registers 1

    .line 372
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc()Z

    move-result p0

    return p0
.end method

.method private final zzc()Z
    .registers 3

    .line 353
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzab:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 355
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 357
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 359
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_23} :catch_25

    const/4 v0, 0x1

    return v0

    :catch_25
    return v1
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .registers 1

    .line 373
    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzab:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzaa:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    return-object p0
.end method


# virtual methods
.method public checkAvailabilityAndConnect()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    .line 148
    new-instance v1, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V

    return-void

    .line 150
    :cond_1c
    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method protected final checkConnected()V
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .registers 3

    const-string v0, "Connection progress callbacks cannot be null."

    .line 153
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public disconnect()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    monitor-enter v0

    .line 170
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    .line 172
    iget-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zze()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 174
    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 175
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 177
    :try_start_29
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 178
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_31

    const/4 v1, 0x1

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/IInterface;)V

    return-void

    :catchall_31
    move-exception v0

    .line 178
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    :catchall_34
    move-exception v1

    .line 175
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    goto :goto_38

    :goto_37
    throw v1

    :goto_38
    goto :goto_37
.end method

.method public disconnect(Ljava/lang/String;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    .line 287
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    monitor-enter p2

    .line 288
    :try_start_3
    iget p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Landroid/os/IInterface;

    .line 290
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_193

    .line 291
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_b
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 293
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_190

    .line 294
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mConnectState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p4, v3, :cond_44

    if-eq p4, v2, :cond_3e

    if-eq p4, v1, :cond_38

    const/4 v4, 0x4

    if-eq p4, v4, :cond_32

    const/4 v4, 0x5

    if-eq p4, v4, :cond_2c

    const-string p4, "UNKNOWN"

    .line 306
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_49

    :cond_2c
    const-string p4, "DISCONNECTING"

    .line 302
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_49

    :cond_32
    const-string p4, "CONNECTED"

    .line 300
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_49

    :cond_38
    const-string p4, "LOCAL_CONNECTING"

    .line 298
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_49

    :cond_3e
    const-string p4, "REMOTE_CONNECTING"

    .line 296
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_49

    :cond_44
    const-string p4, "DISCONNECTED"

    .line 304
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_49
    const-string p4, " mService="

    .line 307
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_56

    const-string p4, "null"

    .line 309
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_73

    .line 311
    :cond_56
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v4, "@"

    .line 312
    invoke-virtual {p4, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 313
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_73
    const-string p4, " mServiceBroker="

    .line 314
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez p2, :cond_80

    const-string p2, "null"

    .line 316
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    :cond_80
    const-string p4, "IGmsServiceBroker@"

    .line 318
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 319
    invoke-interface {p2}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :goto_95
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 321
    iget-wide v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    const-wide/16 v6, 0x0

    cmp-long p4, v4, v6

    if-lez p4, :cond_de

    .line 323
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastConnectedTime="

    .line 324
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    new-instance v0, Ljava/util/Date;

    iget-wide v8, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 325
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    :cond_de
    iget-wide v4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:J

    cmp-long p4, v4, v6

    if-lez p4, :cond_142

    .line 327
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastSuspendedCause="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 328
    iget p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:I

    if-eq p4, v3, :cond_109

    if-eq p4, v2, :cond_103

    if-eq p4, v1, :cond_fd

    .line 335
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_10e

    :cond_fd
    const-string p4, "CAUSE_DEAD_OBJECT_EXCEPTION"

    .line 331
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_10e

    :cond_103
    const-string p4, "CAUSE_NETWORK_LOST"

    .line 333
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_10e

    :cond_109
    const-string p4, "CAUSE_SERVICE_DISCONNECTED"

    .line 329
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_10e
    const-string p4, " lastSuspendedTime="

    .line 337
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:J

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 338
    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    :cond_142
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:J

    cmp-long p4, v0, v6

    if-lez p4, :cond_18f

    .line 341
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p4, "lastFailedStatus="

    .line 342
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:I

    .line 343
    invoke-static {p4}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, " lastFailedTime="

    .line 345
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:J

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 346
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18f
    return-void

    :catchall_190
    move-exception p1

    .line 293
    :try_start_191
    monitor-exit v1
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    throw p1

    :catchall_193
    move-exception p1

    .line 290
    :try_start_194
    monitor-exit p2
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_193

    throw p1
.end method

.method protected enableLocalFallback()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    .line 203
    sget-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getAvailableFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzac:Lcom/google/android/gms/common/internal/zzc;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzc;->zzb:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public getConnectionHint()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    return-object v0
.end method

.method public getEndpointPackageName()Ljava/lang/String;
    .registers 3

    .line 363
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Lcom/google/android/gms/common/internal/zzk;

    if-eqz v0, :cond_f

    .line 364
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 2

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getLastDisconnectMessage()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocalStartServiceAction()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/os/Looper;

    return-object v0
.end method

.method public getMinApkVersion()I
    .registers 2

    .line 366
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return v0
.end method

.method public getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    .line 226
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 227
    iput-object v2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:Ljava/lang/String;

    .line 231
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd:Landroid/os/Bundle;

    if-eqz p2, :cond_25

    .line 236
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc:[Lcom/google/android/gms/common/api/Scope;

    .line 237
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresSignIn()Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 240
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_36

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_3f

    :cond_36
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_3f
    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:Landroid/accounts/Account;

    if-eqz p1, :cond_56

    .line 247
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/IAccountAccessor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:Landroid/os/IBinder;

    goto :goto_56

    .line 249
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresAccount()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    .line 251
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:Landroid/accounts/Account;

    .line 253
    :cond_56
    :goto_56
    sget-object p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:[Lcom/google/android/gms/common/Feature;

    .line 255
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:[Lcom/google/android/gms/common/Feature;

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getApiFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 257
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:[Lcom/google/android/gms/common/Feature;

    .line 258
    :try_start_60
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter p1
    :try_end_63
    .catch Landroid/os/DeadObjectException; {:try_start_60 .. :try_end_63} :catch_9d
    .catch Ljava/lang/SecurityException; {:try_start_60 .. :try_end_63} :catch_9b
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_63} :catch_86
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_63} :catch_84

    .line 259
    :try_start_63
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz p2, :cond_78

    .line 260
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 261
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 263
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_7f

    :cond_78
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    .line 265
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_7f
    monitor-exit p1

    return-void

    :catchall_81
    move-exception p2

    monitor-exit p1
    :try_end_83
    .catchall {:try_start_63 .. :try_end_83} :catchall_81

    :try_start_83
    throw p2
    :try_end_84
    .catch Landroid/os/DeadObjectException; {:try_start_83 .. :try_end_84} :catch_9d
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_84} :catch_9b
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_84} :catch_86
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_84} :catch_84

    :catch_84
    move-exception p1

    goto :goto_87

    :catch_86
    move-exception p1

    :goto_87
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 273
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    .line 274
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 275
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_9b
    move-exception p1

    .line 271
    throw p1

    :catch_9d
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 268
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x3

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerConnectionSuspended(I)V

    return-void
.end method

.method protected getScopes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getService()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1b

    .line 220
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 219
    :cond_1b
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_21
    move-exception v1

    .line 223
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getServiceBrokerBinder()Landroid/os/IBinder;
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    .line 350
    monitor-exit v0

    return-object v1

    .line 351
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    invoke-interface {v1}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 352
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .registers 3

    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
.end method

.method protected getStartServicePackage()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method protected getUseDynamicLookup()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    .line 158
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isConnecting()Z
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :goto_11
    monitor-exit v0

    return v1

    :catchall_13
    move-exception v1

    .line 161
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected onConnectedLocked(Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    return-void
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:I

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .registers 4

    .line 61
    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:I

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:J

    return-void
.end method

.method protected onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 7

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 206
    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 207
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onSetConnectState(ILandroid/os/IInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .registers 2

    .line 280
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method

.method public providesSignIn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requiresAccount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requiresGooglePlayServices()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public requiresSignIn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public triggerConnectionSuspended(I)V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    .line 184
    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V
    .registers 6

    const-string v0, "Connection progress callbacks cannot be null."

    .line 194
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 195
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    .line 197
    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 198
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final zza(ILandroid/os/Bundle;I)V
    .registers 6

    .line 209
    iget-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzg;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    .line 210
    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 211
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
