.class public final Lcom/google/android/gms/internal/ads/zzahx;
.super Lcom/google/android/gms/internal/ads/zzajx;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzbze:Lcom/google/android/gms/internal/ads/zzaji;

.field private final zzclp:J

.field private final zzcmd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzahn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcme:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzahq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcmf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcmg:Lcom/google/android/gms/internal/ads/zzago;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzago;)V
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaye:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzahx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzago;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzago;J)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajx;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmf:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzclp:J

    return-void
.end method

.method private final zza(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;)Lcom/google/android/gms/internal/ads/zzajh;
    .registers 57

    move-object/from16 v0, p0

    new-instance v45, Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsn:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbso:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzces:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzccy:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzceq:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcod:Lcom/google/android/gms/internal/ads/zzwy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcer:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    move-wide/from16 v17, v13

    move-object/from16 v16, v15

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    move-wide/from16 v19, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcoh:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    move-wide/from16 v21, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzceu:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcev:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcob:Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcfe:Lcom/google/android/gms/internal/ads/zzaig;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcff:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfg:Ljava/util/List;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfh:Z

    move/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfi:Lcom/google/android/gms/internal/ads/zzael;

    move-object/from16 v27, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v28, v3

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    if-nez v3, :cond_a9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v47, v1

    move-object/from16 v31, v5

    move/from16 v46, v12

    move-object/from16 v33, v13

    move-wide/from16 v34, v14

    goto/16 :goto_152

    :cond_a9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v31, v5

    if-eqz v29, :cond_13b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v5, v29

    check-cast v5, Lcom/google/android/gms/internal/ads/zzahq;

    if-eqz v5, :cond_137

    move-object/from16 v29, v3

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzahq;->zzbru:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_135

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzahq;->zzbru:Ljava/lang/String;

    move-object/from16 v33, v13

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzahq;->errorCode:I

    move-wide/from16 v34, v14

    const/4 v15, 0x4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_f2

    if-eq v13, v15, :cond_ed

    const/4 v14, 0x5

    if-eq v13, v14, :cond_ea

    const/4 v14, 0x6

    if-eq v13, v14, :cond_e7

    const/4 v15, 0x7

    if-eq v13, v15, :cond_e4

    move v15, v12

    goto :goto_f4

    :cond_e4
    move v15, v12

    const/4 v14, 0x3

    goto :goto_f4

    :cond_e7
    move v15, v12

    const/4 v14, 0x0

    goto :goto_f4

    :cond_ea
    move v15, v12

    const/4 v14, 0x4

    goto :goto_f4

    :cond_ed
    const/16 v30, 0x2

    move v15, v12

    const/4 v14, 0x2

    goto :goto_f4

    :cond_f2
    move v15, v12

    const/4 v14, 0x1

    :goto_f4
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/zzahq;->zzbub:J

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    move/from16 v46, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    move-object/from16 v5, v31

    move-object/from16 v13, v33

    move-wide/from16 v14, v34

    move/from16 v12, v46

    goto/16 :goto_ad

    :cond_135
    move-object/from16 v3, v29

    :cond_137
    move-object/from16 v5, v31

    goto/16 :goto_ad

    :cond_13b
    move/from16 v46, v12

    move-object/from16 v33, v13

    move-wide/from16 v34, v14

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v47, v1

    :goto_152
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsr:Ljava/util/List;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfl:Ljava/lang/String;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcoq:Lcom/google/android/gms/internal/ads/zzhs;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzzl:Z

    move/from16 v39, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcor:Z

    move/from16 v40, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfp:Z

    move/from16 v41, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsp:Ljava/util/List;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzzm:Z

    move/from16 v43, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfq:Ljava/lang/String;

    move-object/from16 v44, v1

    const/4 v3, 0x0

    move-object/from16 v30, v28

    const/4 v14, 0x0

    move-wide/from16 v48, v34

    move-wide/from16 v34, v21

    move-wide/from16 v21, v19

    move-wide/from16 v18, v17

    const/16 v17, 0x0

    const/16 v29, 0x0

    move-object/from16 v28, v23

    move-object/from16 v32, v24

    move-object/from16 v50, v25

    move/from16 v51, v26

    move-object/from16 v52, v27

    move-object/from16 v1, v45

    move-object/from16 v20, v31

    move/from16 v5, p1

    move/from16 v12, v46

    move-object/from16 v27, v33

    move-object/from16 v13, p3

    move-object/from16 v15, p2

    move-wide/from16 v23, v34

    move-wide/from16 v25, v48

    move-object/from16 v31, v32

    move-object/from16 v32, v50

    move/from16 v33, v51

    move-object/from16 v34, v52

    move-object/from16 v35, v47

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzaqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzxq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/internal/ads/zzxa;JLcom/google/android/gms/internal/ads/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzpb;Lcom/google/android/gms/internal/ads/zzaig;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzael;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhs;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v45
.end method


# virtual methods
.method public final onStop()V
    .registers 1

    return-void
.end method

.method public final zza(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public final zzcb(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmf:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final zzdn()V
    .registers 20

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcod:Lcom/google/android/gms/internal/ads/zzwy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwy;->zzbsm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/ads/zzwx;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzwx;->zzbsb:Ljava/lang/String;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzwx;->zzbrt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_21
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_40

    :cond_3e
    :goto_3e
    move-object v3, v0

    goto :goto_4c

    :cond_40
    :goto_40
    :try_start_40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_4b} :catch_b7

    goto :goto_3e

    :goto_4c
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4f
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzago;->zzca(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaib;

    move-result-object v7

    if-eqz v7, :cond_8a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaib;->zzpf()Lcom/google/android/gms/internal/ads/zzahv;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaib;->zzpe()Lcom/google/android/gms/internal/ads/zzxq;

    move-result-object v0

    if-nez v0, :cond_64

    goto :goto_8a

    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzahx;->mContext:Landroid/content/Context;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzclp:J
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_b0

    move-object v1, v0

    move-wide/from16 v16, v4

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v8, p0

    move-object/from16 v18, v9

    move-wide/from16 v9, v16

    :try_start_77
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaib;Lcom/google/android/gms/internal/ads/zzahw;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzago;->zzos()Lcom/google/android/gms/ads/internal/gmsg/zzb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/ads/internal/gmsg/zzb;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_88
    monitor-exit v18

    goto :goto_21

    :cond_8a
    :goto_8a
    move-object/from16 v18, v9

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzahs;-><init>()V

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzwx;->zzbru:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzahs;->zzcd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzahs;->zzcc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzahs;->zzg(J)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzahs;->zzad(I)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahs;->zzpd()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :catchall_b0
    move-exception v0

    move-object/from16 v18, v9

    :goto_b3
    monitor-exit v18
    :try_end_b4
    .catchall {:try_start_77 .. :try_end_b4} :catchall_b5

    throw v0

    :catchall_b5
    move-exception v0

    goto :goto_b3

    :catch_b7
    move-exception v0

    const-string v1, "Unable to determine custom event class name, skipping..."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    :cond_bf
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_ce
    :goto_ce
    if-ge v4, v2, :cond_e4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzahn;->zzoz()Ljava/util/concurrent/Future;

    goto :goto_ce

    :cond_e4
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_ed
    if-ge v3, v2, :cond_19a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzahn;

    :try_start_f8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahn;->zzoz()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_f8 .. :try_end_ff} :catch_161
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_ff} :catch_142
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_140

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_102
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_113

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_113
    monitor-exit v5
    :try_end_114
    .catchall {:try_start_102 .. :try_end_114} :catchall_13d

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_117
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmf:Ljava/util/HashSet;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahn;->zzpb()Lcom/google/android/gms/internal/ads/zzwx;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v11, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzahx;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamu;->zzsy:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahy;

    invoke-direct {v2, v11, v0}, Lcom/google/android/gms/internal/ads/zzahy;-><init>(Lcom/google/android/gms/internal/ads/zzahx;Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v6

    return-void

    :cond_138
    monitor-exit v6

    goto :goto_ed

    :catchall_13a
    move-exception v0

    monitor-exit v6
    :try_end_13c
    .catchall {:try_start_117 .. :try_end_13c} :catchall_13a

    throw v0

    :catchall_13d
    move-exception v0

    :try_start_13e
    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    throw v0

    :catchall_140
    move-exception v0

    goto :goto_181

    :catch_142
    move-exception v0

    :try_start_143
    const-string v5, "Unable to resolve rewarded adapter."

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_148
    .catchall {:try_start_143 .. :try_end_148} :catchall_140

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_14b
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15c
    monitor-exit v5

    goto :goto_ed

    :catchall_15e
    move-exception v0

    monitor-exit v5
    :try_end_160
    .catchall {:try_start_14b .. :try_end_160} :catchall_15e

    throw v0

    :catch_161
    :try_start_161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_168
    .catchall {:try_start_161 .. :try_end_168} :catchall_140

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16b
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17c

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17c
    monitor-exit v1

    goto :goto_19a

    :catchall_17e
    move-exception v0

    monitor-exit v1
    :try_end_180
    .catchall {:try_start_16b .. :try_end_180} :catchall_17e

    throw v0

    :goto_181
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_184
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_195

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_195
    monitor-exit v1
    :try_end_196
    .catchall {:try_start_184 .. :try_end_196} :catchall_197

    throw v0

    :catchall_197
    move-exception v0

    :try_start_198
    monitor-exit v1
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    throw v0

    :cond_19a
    :goto_19a
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {v11, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzahx;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamu;->zzsy:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahz;

    invoke-direct {v2, v11, v0}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(Lcom/google/android/gms/internal/ads/zzahx;Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzl(Lcom/google/android/gms/internal/ads/zzajh;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzago;->zzot()Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzb(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method

.method final synthetic zzm(Lcom/google/android/gms/internal/ads/zzajh;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzago;->zzot()Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzb(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method
