.class public final Lcom/google/android/gms/internal/ads/zzawq;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzawq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzawq;",
        "Lcom/google/android/gms/internal/ads/zzawq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzawq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjo:Lcom/google/android/gms/internal/ads/zzawq;


# instance fields
.field private zzdjl:Lcom/google/android/gms/internal/ads/zzaww;

.field private zzdjm:Lcom/google/android/gms/internal/ads/zzawm;

.field private zzdjn:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method public static zzxx()Lcom/google/android/gms/internal/ads/zzawq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    return-object v0
.end method

.method static synthetic zzxy()Lcom/google/android/gms/internal/ads/zzawq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawr;->zzakf:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzawq;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzawq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdjl"

    aput-object v0, p1, p2

    const-string p2, "zzdjm"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdjn"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzawq;->zzdjo:Lcom/google/android/gms/internal/ads/zzawq;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzawq;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawq$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawr;)V

    return-object p1

    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzawq;-><init>()V

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

.method public final zzxu()Lcom/google/android/gms/internal/ads/zzaww;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjl:Lcom/google/android/gms/internal/ads/zzaww;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaww;->zzyk()Lcom/google/android/gms/internal/ads/zzaww;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzxv()Lcom/google/android/gms/internal/ads/zzawm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjm:Lcom/google/android/gms/internal/ads/zzawm;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawm;->zzxq()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzxw()Lcom/google/android/gms/internal/ads/zzawk;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzdjn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawk;->zzaq(I)Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawk;->zzdjf:Lcom/google/android/gms/internal/ads/zzawk;

    :cond_a
    return-object v0
.end method
