.class public final Lcom/google/android/gms/internal/ads/zzams;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static zzcug:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static zzcuh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcui:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzams;->zzcug:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzams;->zzcui:Ljava/lang/Object;

    return-void
.end method

.method private static zza(Landroid/util/Range;)[Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static zzdd(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzams;->zzcui:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzams;->zzcug:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/google/android/gms/internal/ads/zzams;->zzcug:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15f

    return-object p0

    :cond_15
    :try_start_15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzams;->zzcui:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_13d
    .catch Ljava/lang/LinkageError; {:try_start_15 .. :try_end_18} :catch_13b
    .catchall {:try_start_15 .. :try_end_18} :catchall_15f

    :try_start_18
    sget-object v2, Lcom/google/android/gms/internal/ads/zzams;->zzcuh:Ljava/util/List;

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    :cond_1f
    :goto_1f
    monitor-exit v1

    goto :goto_5a

    :cond_21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_35

    new-instance v2, Landroid/media/MediaCodecList;

    invoke-direct {v2, v4}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v2}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_32
    sput-object v2, Lcom/google/android/gms/internal/ads/zzams;->zzcuh:Ljava/util/List;

    goto :goto_1f

    :cond_35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v2, v5, :cond_55

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzams;->zzcuh:Ljava/util/List;

    const/4 v5, 0x0

    :goto_47
    if-ge v5, v2, :cond_1f

    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzams;->zzcuh:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_59
    .catchall {:try_start_18 .. :try_end_59} :catchall_138

    goto :goto_32

    :goto_5a
    :try_start_5a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzams;->zzcuh:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_65
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_131

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaCodecInfo;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_65

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "codecName"

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_a0
    if-ge v10, v9, :cond_be

    aget-object v11, v8, v10

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Integer;

    iget v13, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    iget v11, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_a0

    :cond_be
    const-string v8, "profileLevels"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_119

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    const-string v8, "bitRatesBps"

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzams;->zza(Landroid/util/Range;)[Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "widthAlignment"

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "heightAlignment"

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "frameRates"

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRates()Landroid/util/Range;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzams;->zza(Landroid/util/Range;)[Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "widths"

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzams;->zza(Landroid/util/Range;)[Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "heights"

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzams;->zza(Landroid/util/Range;)[Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_119
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_12c

    const-string v7, "instancesLimit"

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12c
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_65

    :cond_131
    sget-object v2, Lcom/google/android/gms/internal/ads/zzams;->zzcug:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_136
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_136} :catch_13d
    .catch Ljava/lang/LinkageError; {:try_start_5a .. :try_end_136} :catch_13b
    .catchall {:try_start_5a .. :try_end_136} :catchall_15f

    :try_start_136
    monitor-exit v0
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_15f

    return-object v1

    :catchall_138
    move-exception v2

    :try_start_139
    monitor-exit v1
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    :try_start_13a
    throw v2
    :try_end_13b
    .catch Ljava/lang/RuntimeException; {:try_start_13a .. :try_end_13b} :catch_13d
    .catch Ljava/lang/LinkageError; {:try_start_13a .. :try_end_13b} :catch_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_15f

    :catch_13b
    move-exception v1

    goto :goto_13e

    :catch_13d
    move-exception v1

    :goto_13e
    :try_start_13e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "error"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/ads/zzams;->zzcug:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_15f
    move-exception p0

    monitor-exit v0
    :try_end_161
    .catchall {:try_start_13e .. :try_end_161} :catchall_15f

    goto :goto_163

    :goto_162
    throw p0

    :goto_163
    goto :goto_162
.end method
