.class public final Lcom/google/android/gms/internal/ads/zzaxt;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxt$zza;,
        Lcom/google/android/gms/internal/ads/zzaxt$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxt;",
        "Lcom/google/android/gms/internal/ads/zzaxt$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;


# instance fields
.field private zzdlq:I

.field private zzdlr:I

.field private zzdly:Lcom/google/android/gms/internal/ads/zzbbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbt<",
            "Lcom/google/android/gms/internal/ads/zzaxt$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxt;->zzadd()Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;)V
    .registers 4

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbt;->zzaay()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbt;->size()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0xa

    goto :goto_17

    :cond_15
    shl-int/lit8 v1, v1, 0x1

    :goto_17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbt;->zzbm(I)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbt;->add(Ljava/lang/Object;)Z

    return-void

    :cond_23
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt;->zzba(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt;Lcom/google/android/gms/internal/ads/zzaxt$zzb;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt;->zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;)V

    return-void
.end method

.method private final zzba(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlr:I

    return-void
.end method

.method public static zzzu()Lcom/google/android/gms/internal/ads/zzaxt$zza;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxt$zza;

    return-object v0
.end method

.method static synthetic zzzv()Lcom/google/android/gms/internal/ads/zzaxt;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxu;->zzakf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxt;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaxt;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxt;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaxt;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdlq"

    aput-object v0, p1, p2

    const-string p2, "zzdlr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdly"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaxt;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxt$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxu;)V

    return-object p1

    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxt;-><init>()V

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
