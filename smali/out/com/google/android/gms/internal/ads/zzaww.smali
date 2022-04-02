.class public final Lcom/google/android/gms/internal/ads/zzaww;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaww$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaww;",
        "Lcom/google/android/gms/internal/ads/zzaww$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaww;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjx:Lcom/google/android/gms/internal/ads/zzaww;


# instance fields
.field private zzdju:I

.field private zzdjv:I

.field private zzdjw:Lcom/google/android/gms/internal/ads/zzbah;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaww;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaww;->zzdjx:Lcom/google/android/gms/internal/ads/zzaww;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaww;->zzdjw:Lcom/google/android/gms/internal/ads/zzbah;

    return-void
.end method

.method public static zzyk()Lcom/google/android/gms/internal/ads/zzaww;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaww;->zzdjx:Lcom/google/android/gms/internal/ads/zzaww;

    return-object v0
.end method

.method static synthetic zzyl()Lcom/google/android/gms/internal/ads/zzaww;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaww;->zzdjx:Lcom/google/android/gms/internal/ads/zzaww;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawx;->zzakf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaww;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaww;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaww;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaww;->zzdjx:Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaww;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaww;->zzdjx:Lcom/google/android/gms/internal/ads/zzaww;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdju"

    aput-object v0, p1, p2

    const-string p2, "zzdjv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdjw"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u000b\u000b\u000c\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaww;->zzdjx:Lcom/google/android/gms/internal/ads/zzaww;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaww;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaww$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaww$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawx;)V

    return-object p1

    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaww;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzyh()Lcom/google/android/gms/internal/ads/zzawy;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaww;->zzdju:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawy;->zzat(I)Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzdkd:Lcom/google/android/gms/internal/ads/zzawy;

    :cond_a
    return-object v0
.end method

.method public final zzyi()Lcom/google/android/gms/internal/ads/zzaxa;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaww;->zzdjv:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxa;->zzau(I)Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxa;->zzdkk:Lcom/google/android/gms/internal/ads/zzaxa;

    :cond_a
    return-object v0
.end method

.method public final zzyj()Lcom/google/android/gms/internal/ads/zzbah;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaww;->zzdjw:Lcom/google/android/gms/internal/ads/zzbah;

    return-object v0
.end method
