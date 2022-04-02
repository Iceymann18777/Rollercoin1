.class final Lcom/google/android/gms/internal/ads/zzbcg;
.super Lcom/google/android/gms/internal/ads/zzbce;


# static fields
.field private static final zzdvs:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcg;->zzdvs:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbce;-><init>(Lcom/google/android/gms/internal/ads/zzbcf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbcf;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzc(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzbcd;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcc;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzbcc;-><init>(I)V

    goto :goto_19

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_19
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4f

    :cond_1d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcg;->zzdvs:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_36
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    goto :goto_4f

    :cond_3b
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbeh;

    if-eqz v1, :cond_4f

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcc;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcc;-><init>(I)V

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbab;->addAll(Ljava/util/Collection;)Z

    goto :goto_36

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private static zzc(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbek;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzc(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1b

    if-lez v2, :cond_1b

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    if-lez v1, :cond_1e

    move-object p2, v0

    :cond_1e
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;J)V
    .registers 7

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbek;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbcd;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zzadx()Lcom/google/android/gms/internal/ads/zzbcd;

    move-result-object v0

    goto :goto_22

    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcg;->zzdvs:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_22
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
