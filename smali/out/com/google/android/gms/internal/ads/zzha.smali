.class public final Lcom/google/android/gms/internal/ads/zzha;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzaiz:I

.field private final zzajb:Lcom/google/android/gms/internal/ads/zzgq;

.field private zzajj:Ljava/lang/String;

.field private zzajk:Ljava/lang/String;

.field private final zzajl:Z

.field private final zzajm:I

.field private final zzajn:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzaiz:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzajl:Z

    const/16 p1, 0x40

    if-gt p2, p1, :cond_12

    if-gez p2, :cond_f

    goto :goto_12

    :cond_f
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzha;->zzajm:I

    goto :goto_14

    :cond_12
    :goto_12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzajm:I

    :goto_14
    if-gtz p3, :cond_1a

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzajn:I

    goto :goto_1c

    :cond_1a
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzha;->zzajn:I

    :goto_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgz;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzha;->zzajm:I

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgz;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzajb:Lcom/google/android/gms/internal/ads/zzgq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzgp;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Lcom/google/android/gms/internal/ads/zzha;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_12
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, ""

    if-ge v4, v5, :cond_117

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgp;->zzhf()I

    move-result v5

    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v8, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v5, v8}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    if-eqz v8, :cond_10f

    const/4 v8, 0x0

    :goto_42
    array-length v10, v5

    if-ge v8, v10, :cond_10f

    aget-object v10, v5, v8

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_aa

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_57
    add-int/lit8 v14, v12, 0x2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-gt v14, v15, :cond_9d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v3, 0x27

    if-ne v15, v3, :cond_9a

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v13, 0x20

    if-eq v3, v13, :cond_94

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v9, 0x73

    if-eq v15, v9, :cond_83

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v9, 0x53

    if-ne v3, v9, :cond_94

    :cond_83
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v14, v3, :cond_8f

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v13, :cond_94

    :cond_8f
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v12, v14

    goto :goto_97

    :cond_94
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_97
    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x1

    :goto_9b
    add-int/2addr v12, v3

    goto :goto_57

    :cond_9d
    if-eqz v13, :cond_a4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a5

    :cond_a4
    const/4 v3, 0x0

    :goto_a5
    if-eqz v3, :cond_aa

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzha;->zzajk:Ljava/lang/String;

    move-object v10, v3

    :cond_aa
    const/4 v3, 0x1

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzgu;->zzb(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzha;->zzajn:I

    if-lt v10, v11, :cond_10b

    const/4 v10, 0x0

    :goto_b5
    array-length v11, v9

    if-ge v10, v11, :cond_101

    move-object v12, v6

    const/4 v11, 0x0

    :goto_ba
    iget v13, v1, Lcom/google/android/gms/internal/ads/zzha;->zzajn:I

    if-ge v11, v13, :cond_ef

    add-int v13, v10, v11

    array-length v14, v9

    if-lt v13, v14, :cond_c5

    const/4 v11, 0x0

    goto :goto_f0

    :cond_c5
    if-lez v11, :cond_d1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_d1
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_e6

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_ec

    :cond_e6
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    :goto_ec
    add-int/lit8 v11, v11, 0x1

    goto :goto_ba

    :cond_ef
    const/4 v11, 0x1

    :goto_f0
    if-eqz v11, :cond_101

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v11

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzha;->zzaiz:I

    if-lt v11, v12, :cond_fe

    goto :goto_109

    :cond_fe
    add-int/lit8 v10, v10, 0x1

    goto :goto_b5

    :cond_101
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v9

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzha;->zzaiz:I

    if-lt v9, v10, :cond_10b

    :goto_109
    const/4 v9, 0x0

    goto :goto_111

    :cond_10b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_42

    :cond_10f
    const/4 v3, 0x1

    const/4 v9, 0x1

    :goto_111
    if-eqz v9, :cond_117

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_117
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzgt;-><init>()V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzha;->zzajj:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_12e
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzha;->zzajb:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzgq;->zzx(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgt;->write([B)V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_137} :catch_138

    goto :goto_122

    :catch_138
    move-exception v0

    const-string v2, "Error while writing hash to byteStream"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgt;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
