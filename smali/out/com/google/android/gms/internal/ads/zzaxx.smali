.class public final Lcom/google/android/gms/internal/ads/zzaxx;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxx;",
        "Lcom/google/android/gms/internal/ads/zzaxx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxx;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdme:Lcom/google/android/gms/internal/ads/zzaxx;


# instance fields
.field private zzdmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxx;->zzdme:Lcom/google/android/gms/internal/ads/zzaxx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzdmd:Ljava/lang/String;

    return-void
.end method

.method public static zzaac()Lcom/google/android/gms/internal/ads/zzaxx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxx;->zzdme:Lcom/google/android/gms/internal/ads/zzaxx;

    return-object v0
.end method

.method static synthetic zzaad()Lcom/google/android/gms/internal/ads/zzaxx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxx;->zzdme:Lcom/google/android/gms/internal/ads/zzaxx;

    return-object v0
.end method

.method public static zzak(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaxx;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxx;->zzdme:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaxx;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxy;->zzakf:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxx;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaxx;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxx;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxx;->zzdme:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaxx;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxx;->zzdme:Lcom/google/android/gms/internal/ads/zzaxx;

    return-object p1

    :pswitch_33
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzdmd"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u0208"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxx;->zzdme:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaxx;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_43
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxx$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxx$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxy;)V

    return-object p1

    :pswitch_49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>()V

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

.method public final zzaab()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzdmd:Ljava/lang/String;

    return-object v0
.end method
