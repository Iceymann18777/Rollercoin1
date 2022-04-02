.class public Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;,
        Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;,
        Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;
    }
.end annotation


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Status;

.field private static final zab:Lcom/google/android/gms/common/api/Status;

.field private static final zaf:Ljava/lang/Object;

.field private static zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# instance fields
.field private zac:J

.field private zad:J

.field private zae:J

.field private final zah:Landroid/content/Context;

.field private final zai:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zaj:Lcom/google/android/gms/common/internal/zal;

.field private final zak:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zal:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zan:Lcom/google/android/gms/common/api/internal/zay;

.field private final zao:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zaq:Landroid/os/Handler;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private volatile zar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 224
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 225
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:J

    const-wide/32 v0, 0x1d4c0

    .line 23
    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    const-wide/16 v0, 0x2710

    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/api/internal/zay;

    .line 29
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/Set;

    .line 30
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Set;

    .line 31
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Z

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/base/zap;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    .line 34
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 35
    new-instance p2, Lcom/google/android/gms/common/internal/zal;

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/internal/zal;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/internal/zal;

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 37
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Z

    .line 38
    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static reportSignOut()V
    .registers 4

    .line 15
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    if-eqz v1, :cond_1b

    .line 17
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 18
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 20
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    return-object p0
.end method

.method public static zaa()Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .registers 3

    .line 11
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static zaa(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    if-nez v1, :cond_26

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 9
    :cond_26
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/content/Context;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .registers 3

    .line 213
    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:J

    return-wide v0
.end method

.method private final zac(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    if-nez v1, :cond_18

    .line 46
    new-instance v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zak()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_23
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zai()V

    return-object v1
.end method

.method static synthetic zad(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .registers 3

    .line 214
    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    return-wide v0
.end method

.method static synthetic zad()Ljava/lang/Object;
    .registers 1

    .line 216
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zae()Lcom/google/android/gms/common/api/Status;
    .registers 1

    .line 219
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/internal/zal;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/internal/zal;

    return-object p0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/api/internal/zay;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/api/internal/zay;

    return-object p0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Set;
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zah(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Z
    .registers 1

    .line 220
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Z

    return p0
.end method

.method static synthetic zai(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object p0
.end method

.method static synthetic zaj(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .registers 3

    .line 222
    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    return-wide v0
.end method

.method static synthetic zak(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/32 v2, 0x493e0

    const-string v4, "GoogleApiManager"

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_2ba

    .line 202
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown message id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 199
    :pswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)V

    goto/16 :goto_2b8

    .line 196
    :pswitch_47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)V

    goto/16 :goto_2b8

    .line 187
    :pswitch_68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zaz;

    .line 188
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zaa()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 192
    :cond_85
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    .line 193
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;Z)Z

    move-result v0

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2b8

    .line 185
    :pswitch_9e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zah()Z

    goto/16 :goto_2b8

    .line 183
    :pswitch_b7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zag()V

    goto/16 :goto_2b8

    .line 176
    :pswitch_d0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d6
    :goto_d6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 177
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    if-eqz v0, :cond_d6

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa()V

    goto :goto_d6

    .line 181
    :cond_f0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_2b8

    .line 173
    :pswitch_f7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaf()V

    goto/16 :goto_2b8

    .line 171
    :pswitch_110
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    goto/16 :goto_2b8

    .line 161
    :pswitch_119
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_2b8

    .line 162
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 163
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 164
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 166
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->readCurrentStateIfPossible(Z)Z

    move-result p1

    if-nez p1, :cond_2b8

    .line 169
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    goto/16 :goto_2b8

    .line 146
    :pswitch_148
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 148
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_158
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zal()I

    move-result v5

    if-ne v5, v0, :cond_158

    move-object v6, v3

    :cond_16b
    if-eqz v6, :cond_1b3

    .line 154
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 155
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 157
    invoke-static {v6, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_2b8

    :cond_1b3
    const/16 p1, 0x4c

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b8

    .line 136
    :pswitch_1d5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabr;

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/zabr;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    if-nez v0, :cond_1ef

    .line 139
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabr;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    move-result-object v0

    .line 140
    :cond_1ef
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zak()Z

    move-result v2

    if-eqz v2, :cond_20b

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/common/api/internal/zabr;->zab:I

    if-eq v2, v3, :cond_20b

    .line 141
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Lcom/google/android/gms/common/api/internal/zab;

    sget-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/zab;->zaa(Lcom/google/android/gms/common/api/Status;)V

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa()V

    goto/16 :goto_2b8

    .line 144
    :cond_20b
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Lcom/google/android/gms/common/api/internal/zab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa(Lcom/google/android/gms/common/api/internal/zab;)V

    goto/16 :goto_2b8

    .line 131
    :pswitch_212
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zad()V

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zai()V

    goto :goto_21c

    .line 110
    :pswitch_22f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zaj;

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaj;->zaa()Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 113
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    if-nez v3, :cond_25c

    .line 115
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0xd

    invoke-direct {v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 116
    invoke-virtual {p1, v2, v0, v6}, Lcom/google/android/gms/common/api/internal/zaj;->zaa(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_2b8

    .line 118
    :cond_25c
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaj()Z

    move-result v4

    if-eqz v4, :cond_270

    .line 119
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    .line 120
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zab()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {p1, v2, v4, v3}, Lcom/google/android/gms/common/api/internal/zaj;->zaa(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_23b

    .line 123
    :cond_270
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zae()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_27a

    .line 125
    invoke-virtual {p1, v2, v4, v6}, Lcom/google/android/gms/common/api/internal/zaj;->zaa(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_23b

    .line 126
    :cond_27a
    invoke-virtual {v3, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaa(Lcom/google/android/gms/common/api/internal/zaj;)V

    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zai()V

    goto :goto_23b

    .line 98
    :pswitch_281
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_28d

    const-wide/16 v2, 0x2710

    .line 102
    :cond_28d
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    .line 103
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 105
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    .line 106
    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:J

    .line 107
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a0

    :cond_2b8
    :goto_2b8
    return v1

    nop

    :pswitch_data_2ba
    .packed-switch 0x1
        :pswitch_281
        :pswitch_22f
        :pswitch_212
        :pswitch_1d5
        :pswitch_148
        :pswitch_119
        :pswitch_110
        :pswitch_1d5
        :pswitch_f7
        :pswitch_d0
        :pswitch_b7
        :pswitch_9e
        :pswitch_1d5
        :pswitch_68
        :pswitch_47
        :pswitch_26
    .end packed-switch
.end method

.method public final zaa(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 91
    new-instance v1, Lcom/google/android/gms/common/api/internal/zag;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/common/api/internal/zag;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 92
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabr;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, v1, v3, p1}, Lcom/google/android/gms/common/api/internal/zabr;-><init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/16 p1, 0xd

    .line 94
    invoke-virtual {p2, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 95
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zaa(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;",
            "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 84
    new-instance v1, Lcom/google/android/gms/common/api/internal/zae;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabs;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabs;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/zae;-><init>(Lcom/google/android/gms/common/api/internal/zabs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 85
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/common/api/internal/zabr;

    iget-object p4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-direct {p3, v1, p4, p1}, Lcom/google/android/gms/common/api/internal/zabr;-><init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/16 p1, 0x8

    .line 87
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zaa(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/common/api/HasApiKey<",
            "*>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/zaj;-><init>(Ljava/lang/Iterable;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaj;->zab()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zaa(Lcom/google/android/gms/common/api/GoogleApi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaf;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/common/api/internal/zaf;-><init>(ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V

    .line 72
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/common/api/internal/zabr;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p3, v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zabr;-><init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/4 p1, 0x4

    .line 74
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "TResultT;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;",
            "Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;",
            ")V"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/google/android/gms/common/api/internal/zah;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/zah;-><init>(ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    .line 78
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/common/api/internal/zabr;

    iget-object p4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-direct {p3, v0, p4, p1}, Lcom/google/android/gms/common/api/internal/zabr;-><init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/4 p1, 0x4

    .line 80
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zay;)V
    .registers 4

    .line 52
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/api/internal/zay;

    if-eq v1, p1, :cond_e

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/api/internal/zay;

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 56
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zay;->zac()Landroidx/collection/ArraySet;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 57
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method final zaa(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    return p1
.end method

.method public final zab()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final zab(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaz;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/zaz;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method

.method final zab(Lcom/google/android/gms/common/api/internal/zay;)V
    .registers 4

    .line 58
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/api/internal/zay;

    if-ne v1, p1, :cond_f

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/api/internal/zay;

    .line 61
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 62
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final zac()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
