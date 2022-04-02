.class public final Lcom/google/android/gms/internal/ads/zzaxn;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaxn;",
        "Lcom/google/android/gms/internal/ads/zzaxn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaxn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlk:Lcom/google/android/gms/internal/ads/zzaxn;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdkt:Lcom/google/android/gms/internal/ads/zzbah;

.field private zzdlj:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdlk:Lcom/google/android/gms/internal/ads/zzaxn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdks:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdkt:Lcom/google/android/gms/internal/ads/zzbah;

    return-void
.end method

.method public static zzzc()Lcom/google/android/gms/internal/ads/zzaxn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdlk:Lcom/google/android/gms/internal/ads/zzaxn;

    return-object v0
.end method

.method static synthetic zzzd()Lcom/google/android/gms/internal/ads/zzaxn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdlk:Lcom/google/android/gms/internal/ads/zzaxn;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxo;->zzakf:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaxn;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxn;->zzdlk:Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdlk:Lcom/google/android/gms/internal/ads/zzaxn;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdks"

    aput-object v0, p1, p2

    const-string p2, "zzdkt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdlj"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaxn;->zzdlk:Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaxn;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxn$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxn$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxo;)V

    return-object p1

    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxn;-><init>()V

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

.method public final zzyw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdks:Ljava/lang/String;

    return-object v0
.end method

.method public final zzyx()Lcom/google/android/gms/internal/ads/zzbah;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdkt:Lcom/google/android/gms/internal/ads/zzbah;

    return-object v0
.end method
