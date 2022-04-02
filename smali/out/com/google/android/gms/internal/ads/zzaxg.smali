.class public final Lcom/google/android/gms/internal/ads/zzaxg;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxg;",
        "Lcom/google/android/gms/internal/ads/zzaxg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdkr:Lcom/google/android/gms/internal/ads/zzaxg;


# instance fields
.field private zzdkp:I

.field private zzdkq:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkr:Lcom/google/android/gms/internal/ads/zzaxg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method public static zzyu()Lcom/google/android/gms/internal/ads/zzaxg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkr:Lcom/google/android/gms/internal/ads/zzaxg;

    return-object v0
.end method

.method static synthetic zzyv()Lcom/google/android/gms/internal/ads/zzaxg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkr:Lcom/google/android/gms/internal/ads/zzaxg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxh;->zzakf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxg;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaxg;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxg;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkr:Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaxg;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkr:Lcom/google/android/gms/internal/ads/zzaxg;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdkp"

    aput-object v0, p1, p2

    const-string p2, "zzdkq"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000b"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkr:Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaxg;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxh;)V

    return-object p1

    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxg;-><init>()V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzys()Lcom/google/android/gms/internal/ads/zzaxa;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkp:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxa;->zzau(I)Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxa;->zzdkk:Lcom/google/android/gms/internal/ads/zzaxa;

    :cond_a
    return-object v0
.end method

.method public final zzyt()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdkq:I

    return v0
.end method
