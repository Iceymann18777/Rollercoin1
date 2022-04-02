.class public final Lcom/google/android/gms/internal/ads/zzawg;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzawg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzawg;",
        "Lcom/google/android/gms/internal/ads/zzawg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzawg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdja:Lcom/google/android/gms/internal/ads/zzawg;


# instance fields
.field private zzdir:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdja:Lcom/google/android/gms/internal/ads/zzawg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method public static zzt(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzawg;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdja:Lcom/google/android/gms/internal/ads/zzawg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzawg;

    return-object p0
.end method

.method static synthetic zzxm()Lcom/google/android/gms/internal/ads/zzawg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdja:Lcom/google/android/gms/internal/ads/zzawg;

    return-object v0
.end method


# virtual methods
.method public final getKeySize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawg;->zzdir:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawh;->zzakf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_50

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawg;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzawg;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawg;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzawg;->zzdja:Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzawg;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawg;->zzdja:Lcom/google/android/gms/internal/ads/zzawg;

    return-object p1

    :pswitch_33
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzdir"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0003\u0000\u0000\u0000\u0002\u000b"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzawg;->zzdja:Lcom/google/android/gms/internal/ads/zzawg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzawg;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_43
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawh;)V

    return-object p1

    :pswitch_49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzawg;-><init>()V

    return-object p1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
