.class public final Lcom/google/android/gms/common/api/internal/zacn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Status;


# instance fields
.field final zab:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zac:Lcom/google/android/gms/common/api/internal/zaco;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "The connection to Google Play services was lost"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacn;->zaa:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zab:Ljava/util/Set;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zacm;-><init>(Lcom/google/android/gms/common/api/internal/zacn;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zac:Lcom/google/android/gms/common/api/internal/zaco;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 6

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zab:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 10
    array-length v2, v0

    :goto_c
    if-ge v1, v2, :cond_22

    aget-object v3, v0, v1

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zaco;)V

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 13
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zacn;->zab:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method final zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zab:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zac:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zaco;)V

    return-void
.end method
