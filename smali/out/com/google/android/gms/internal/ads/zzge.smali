.class public final Lcom/google/android/gms/internal/ads/zzge;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzagx:I

.field private final zzagy:I

.field private final zzagz:I

.field private final zzaha:Lcom/google/android/gms/internal/ads/zzgr;

.field private final zzahb:Lcom/google/android/gms/internal/ads/zzha;

.field private zzahc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzahd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzahe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzgp;",
            ">;"
        }
    .end annotation
.end field

.field private zzahf:I

.field private zzahg:I

.field private zzahh:I

.field private zzahi:I

.field private zzahj:Ljava/lang/String;

.field private zzahk:Ljava/lang/String;

.field private zzahl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahc:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahe:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahh:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahl:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzagx:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzagy:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzge;->zzagz:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgr;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzaha:Lcom/google/android/gms/internal/ads/zzgr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {p1, p5, p6, p7}, Lcom/google/android/gms/internal/ads/zzha;-><init>(III)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahb:Lcom/google/android/gms/internal/ads/zzha;

    return-void
.end method

.method private static zza(Ljava/util/ArrayList;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_16
    const/16 v3, 0x64

    if-ge v2, v0, :cond_30

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_16

    :cond_30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_44

    return-object p0

    :cond_44
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Ljava/lang/String;ZFFFF)V
    .registers 14

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzagz:I

    if-ge v0, v1, :cond_b

    goto :goto_3f

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahc:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahf:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahf:I

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahd:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahe:Ljava/util/ArrayList;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgp;-><init>(FFFFI)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3c

    throw p1

    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzge;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzge;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzge;->zzahj:Ljava/lang/String;

    if-eqz p1, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahj:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    return v0

    :cond_19
    return v1
.end method

.method public final getScore()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahi:I

    return v0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahj:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahg:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahi:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahf:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahc:Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzge;->zza(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahd:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzge;->zza(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahj:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahk:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahl:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0xa5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "ActivityContent fetchId: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " score:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " total_length:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n text: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableText"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n signture: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableSignture: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n viewableSignatureForVertical: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;ZFFFF)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZFFFF)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahh:I

    if-gez p2, :cond_f

    const-string p2, "ActivityContent: negative number of WebViews."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzge;->zzgt()V

    monitor-exit p1

    return-void

    :catchall_14
    move-exception p2

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p2
.end method

.method public final zzb(Ljava/lang/String;ZFFFF)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZFFFF)V

    return-void
.end method

.method public final zzgn()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahh:I

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final zzgo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzgp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzgq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahi:I

    add-int/lit8 v1, v1, -0x64

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahi:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final zzgr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahh:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahh:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final zzgs()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahh:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final zzgt()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahf:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahg:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzge;->zzagx:I

    mul-int v1, v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzge;->zzagy:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahi:I

    if-le v1, v2, :cond_76

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahi:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzawq:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzakd;->zzqu()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzaha:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahc:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgr;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzaha:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahd:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgr;->zza(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahk:Ljava/lang/String;

    :cond_4a
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzaws:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzakd;->zzqw()Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahb:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahd:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahe:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahl:Ljava/lang/String;

    :cond_76
    monitor-exit v0

    return-void

    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method final zzgu()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahf:I

    return v0
.end method

.method public final zzo(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzge;->zzahg:I

    return-void
.end method
