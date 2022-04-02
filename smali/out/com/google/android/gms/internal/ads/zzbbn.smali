.class final Lcom/google/android/gms/internal/ads/zzbbn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbct;


# static fields
.field private static final zzdts:Lcom/google/android/gms/internal/ads/zzbbn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdts:Lcom/google/android/gms/internal/ads/zzbbn;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzadc()Lcom/google/android/gms/internal/ads/zzbbn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdts:Lcom/google/android/gms/internal/ads/zzbbn;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbcs;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzbcs;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported message type: "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_1f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :try_start_28
    const-class v0, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzduc:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcs;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get message info for "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_59

    :cond_54
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_59
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
