.class final Lcom/google/android/gms/internal/ads/zzty;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzbon:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zztz;",
            ">;"
        }
    .end annotation
.end field

.field private zzboo:Lcom/google/android/gms/internal/ads/zzjj;

.field private final zzbop:I

.field private zzboq:Z

.field private final zzye:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzty;->zzye:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbop:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzty;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzye:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zzjj;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    return-object p0
.end method


# virtual methods
.method final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzye:Ljava/lang/String;

    return-object v0
.end method

.method final getNetworkType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbop:I

    return v0
.end method

.method final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzjj;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzjj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzss;)Z
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Lcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/zzss;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztz;->load()Z

    move-result p1

    return p1
.end method

.method final zzl(Lcom/google/android/gms/internal/ads/zzjj;)Lcom/google/android/gms/internal/ads/zztz;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zztz;

    return-object p1
.end method

.method final zzlf()Lcom/google/android/gms/internal/ads/zzjj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboo:Lcom/google/android/gms/internal/ads/zzjj;

    return-object v0
.end method

.method final zzlg()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zztz;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zztz;->zzwa:Z

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    return v1
.end method

.method final zzlh()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzbon:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zztz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zztz;->load()Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method

.method final zzli()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboq:Z

    return-void
.end method

.method final zzlj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzboq:Z

    return v0
.end method
