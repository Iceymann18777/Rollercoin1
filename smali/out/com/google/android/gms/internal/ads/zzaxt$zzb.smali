.class public final Lcom/google/android/gms/internal/ads/zzaxt$zzb;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzaxt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxt$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxt$zzb;",
        "Lcom/google/android/gms/internal/ads/zzaxt$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxt$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdma:Lcom/google/android/gms/internal/ads/zzaxt$zzb;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdlj:I

.field private zzdlv:I

.field private zzdlw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxt$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdma:Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdks:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzaxl;)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaxl;->zzhq()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdlv:I

    return-void

    :cond_9
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzbc(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;Lcom/google/android/gms/internal/ads/zzaxl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zza(Lcom/google/android/gms/internal/ads/zzaxl;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;Lcom/google/android/gms/internal/ads/zzayd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zza(Lcom/google/android/gms/internal/ads/zzayd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzea(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzayd;)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayd;->zzhq()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdlj:I

    return-void

    :cond_9
    const/4 p1, 0x0

    throw p1
.end method

.method private final zzbc(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdlw:I

    return-void
.end method

.method private final zzea(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdks:Ljava/lang/String;

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method public static zzzw()Lcom/google/android/gms/internal/ads/zzaxt$zzb$zza;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdma:Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxt$zzb$zza;

    return-object v0
.end method

.method static synthetic zzzx()Lcom/google/android/gms/internal/ads/zzaxt$zzb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdma:Lcom/google/android/gms/internal/ads/zzaxt$zzb;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdma:Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdma:Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdks"

    aput-object v0, p1, p2

    const-string p2, "zzdlv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdlw"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdlj"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zzdma:Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaxt$zzb;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxt$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxt$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxu;)V

    return-object p1

    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxt$zzb;-><init>()V

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
