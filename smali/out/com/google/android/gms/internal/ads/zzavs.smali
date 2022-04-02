.class public final Lcom/google/android/gms/internal/ads/zzavs;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzavs$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzavs;",
        "Lcom/google/android/gms/internal/ads/zzavs$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzavs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdiq:Lcom/google/android/gms/internal/ads/zzavs;


# instance fields
.field private zzdih:I

.field private zzdio:Lcom/google/android/gms/internal/ads/zzavw;

.field private zzdip:Lcom/google/android/gms/internal/ads/zzbah;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    const-class v1, Lcom/google/android/gms/internal/ads/zzavs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzdih:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzavs;I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzavs;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzavs;Lcom/google/android/gms/internal/ads/zzavw;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzb(Lcom/google/android/gms/internal/ads/zzavw;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzavs;Lcom/google/android/gms/internal/ads/zzbah;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzavs;->zzk(Lcom/google/android/gms/internal/ads/zzbah;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzavw;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzdio:Lcom/google/android/gms/internal/ads/zzavw;

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzbah;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzavs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzavs;

    return-object p0
.end method

.method public static zzww()Lcom/google/android/gms/internal/ads/zzavs$zza;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavs$zza;

    return-object v0
.end method

.method public static zzwx()Lcom/google/android/gms/internal/ads/zzavs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    return-object v0
.end method

.method static synthetic zzwy()Lcom/google/android/gms/internal/ads/zzavs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    return-object v0
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzdih:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzavt;->zzakf:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavs;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzavs;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavs;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzavs;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdih"

    aput-object v0, p1, p2

    const-string p2, "zzdio"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdip"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzavs;->zzdiq:Lcom/google/android/gms/internal/ads/zzavs;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzavs;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavs$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavs$zza;-><init>(Lcom/google/android/gms/internal/ads/zzavt;)V

    return-object p1

    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavs;-><init>()V

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

.method public final zzwu()Lcom/google/android/gms/internal/ads/zzavw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzdio:Lcom/google/android/gms/internal/ads/zzavw;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavw;->zzxc()Lcom/google/android/gms/internal/ads/zzavw;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzwv()Lcom/google/android/gms/internal/ads/zzbah;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavs;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-object v0
.end method
