.class public final Lcom/google/android/gms/internal/ads/zzaxp;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxp$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxp;",
        "Lcom/google/android/gms/internal/ads/zzaxp$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxp;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlp:Lcom/google/android/gms/internal/ads/zzaxp;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdll:Ljava/lang/String;

.field private zzdlm:I

.field private zzdln:Z

.field private zzdlo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlp:Lcom/google/android/gms/internal/ads/zzaxp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdll:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdks:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlo:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxp;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxp;->zzay(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxp;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxp;->zzec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxp;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxp;->zzan(Z)V

    return-void
.end method

.method private final zzan(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdln:Z

    return-void
.end method

.method private final zzay(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlm:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaxp;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxp;->zzea(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzaxp;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxp;->zzed(Ljava/lang/String;)V

    return-void
.end method

.method private final zzea(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdks:Ljava/lang/String;

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method private final zzec(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdll:Ljava/lang/String;

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method private final zzed(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlo:Ljava/lang/String;

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method public static zzzi()Lcom/google/android/gms/internal/ads/zzaxp$zza;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlp:Lcom/google/android/gms/internal/ads/zzaxp;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxp$zza;

    return-object v0
.end method

.method static synthetic zzzj()Lcom/google/android/gms/internal/ads/zzaxp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlp:Lcom/google/android/gms/internal/ads/zzaxp;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxq;->zzakf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxp;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaxp;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxp;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlp:Lcom/google/android/gms/internal/ads/zzaxp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaxp;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlp:Lcom/google/android/gms/internal/ads/zzaxp;

    return-object p1

    :pswitch_33
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdll"

    aput-object v0, p1, p2

    const-string p2, "zzdks"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdlm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdln"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzdlo"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlp:Lcom/google/android/gms/internal/ads/zzaxp;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaxp;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxp$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxq;)V

    return-object p1

    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxp;-><init>()V

    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_57
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzyw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdks:Ljava/lang/String;

    return-object v0
.end method

.method public final zzze()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdll:Ljava/lang/String;

    return-object v0
.end method

.method public final zzzf()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlm:I

    return v0
.end method

.method public final zzzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdln:Z

    return v0
.end method

.method public final zzzh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzdlo:Ljava/lang/String;

    return-object v0
.end method
