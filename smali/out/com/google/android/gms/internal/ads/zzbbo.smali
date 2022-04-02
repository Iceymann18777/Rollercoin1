.class public abstract Lcom/google/android/gms/internal/ads/zzbbo;
.super Lcom/google/android/gms/internal/ads/zzazy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbbo$zzb;,
        Lcom/google/android/gms/internal/ads/zzbbo$zzd;,
        Lcom/google/android/gms/internal/ads/zzbbo$zzc;,
        Lcom/google/android/gms/internal/ads/zzbbo$zza;,
        Lcom/google/android/gms/internal/ads/zzbbo$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzbbo$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzazy<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzdtv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzdtt:Lcom/google/android/gms/internal/ads/zzbef;

.field private zzdtu:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtv:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazy;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbef;->zzagc()Lcom/google/android/gms/internal/ads/zzbef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtt:Lcom/google/android/gms/internal/ads/zzbef;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtu:I

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzbah;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbb;->zzacr()Lcom/google/android/gms/internal/ads/zzbbb;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_50

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdua:I

    invoke-virtual {p0, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_23

    const/4 v3, 0x1

    goto :goto_3f

    :cond_23
    if-nez v3, :cond_27

    const/4 v3, 0x0

    goto :goto_3f

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaa(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_3f

    sget v2, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdub:I

    if-eqz v3, :cond_3b

    move-object v4, p0

    goto :goto_3c

    :cond_3b
    move-object v4, v1

    :goto_3c
    invoke-virtual {p0, v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    :goto_3f
    if-eqz v3, :cond_42

    goto :goto_50

    :cond_42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lcom/google/android/gms/internal/ads/zzbcu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbed;->zzaga()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_50
    :goto_50
    if-eqz p0, :cond_94

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdua:I

    invoke-virtual {p0, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v0, :cond_68

    const/4 p1, 0x1

    goto :goto_83

    :cond_68
    if-nez v3, :cond_6b

    goto :goto_83

    :cond_6b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaa(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v2, :cond_83

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdub:I

    if-eqz p1, :cond_7f

    move-object v2, p0

    goto :goto_80

    :cond_7f
    move-object v2, v1

    :goto_80
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    :goto_83
    if-eqz p1, :cond_86

    goto :goto_94

    :cond_86
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lcom/google/android/gms/internal/ads/zzbcu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbed;->zzaga()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_94
    :goto_94
    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbbo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzbah;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbah;->zzabf()Lcom/google/android/gms/internal/ads/zzbaq;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbaq;Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_8} :catch_13

    const/4 p2, 0x0

    :try_start_9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbaq;->zzbp(I)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_9 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    :try_start_e
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_e .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbaq;Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbbo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzbaq;",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdud:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbo;

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbat;->zza(Lcom/google/android/gms/internal/ads/zzbaq;)Lcom/google/android/gms/internal/ads/zzbat;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbbb;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbu;

    throw p0

    :cond_34
    throw p0

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz p2, :cond_45

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbu;

    throw p0

    :cond_45
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbbo;[B)Lcom/google/android/gms/internal/ads/zzbbo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdud:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbo;

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, p1

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbae;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbae;-><init>()V

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzbae;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzo(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdpf:I

    if-nez p1, :cond_2d

    return-object p0

    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_33} :catch_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_33} :catch_33

    :catch_33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadl()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbu;

    throw p0

    :cond_4c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbu;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdi;-><init>(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtv:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/ads/zzbbo;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget p1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdua:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    return v0

    :cond_11
    if-nez p1, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaa(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static zzadd()Lcom/google/android/gms/internal/ads/zzbbt;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzbbt<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdh;->zzaep()Lcom/google/android/gms/internal/ads/zzbdh;

    move-result-object v0

    return-object v0
.end method

.method protected static zzb(Lcom/google/android/gms/internal/ads/zzbbo;[B)Lcom/google/android/gms/internal/ads/zzbbo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;[B)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    if-eqz p0, :cond_4a

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdua:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    goto :goto_39

    :cond_1d
    if-nez v0, :cond_21

    const/4 v2, 0x0

    goto :goto_39

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaa(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_39

    sget p1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdub:I

    if-eqz v2, :cond_35

    move-object v0, p0

    goto :goto_36

    :cond_35
    move-object v0, v1

    :goto_36
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_39
    if-eqz v2, :cond_3c

    goto :goto_4a

    :cond_3c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lcom/google/android/gms/internal/ads/zzbcu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbed;->zzaga()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbu;->zzj(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_4a
    :goto_4a
    return-object p0
.end method

.method static zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbbo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzbbo<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtv:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    if-nez v0, :cond_28

    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtv:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    goto :goto_28

    :catch_1f
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_4a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get default instance for: "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_46

    :cond_41
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_46
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzduf:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    return p1

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdpf:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdpf:I

    return v0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdpf:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdpf:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdua:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    return v3

    :cond_17
    if-nez v1, :cond_1b

    const/4 v0, 0x0

    return v0

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaa(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_33

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdub:I

    if-eqz v1, :cond_2f

    move-object v3, p0

    goto :goto_30

    :cond_2f
    move-object v3, v2

    :goto_30
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbcx;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzaaw()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtu:I

    return v0
.end method

.method public final zzacw()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtu:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzy(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtu:I

    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtu:I

    return v0
.end method

.method public final synthetic zzade()Lcom/google/android/gms/internal/ads/zzbcv;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zza(Lcom/google/android/gms/internal/ads/zzbbo;)Lcom/google/android/gms/internal/ads/zzbbo$zza;

    return-object v0
.end method

.method public final synthetic zzadf()Lcom/google/android/gms/internal/ads/zzbcv;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    return-object v0
.end method

.method public final synthetic zzadg()Lcom/google/android/gms/internal/ads/zzbcu;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzduf:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbav;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzaeo()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdg;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzbdm;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Lcom/google/android/gms/internal/ads/zzbav;)Lcom/google/android/gms/internal/ads/zzbax;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbey;)V

    return-void
.end method

.method final zzbj(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzdtu:I

    return-void
.end method
