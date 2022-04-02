.class public final Lcom/google/android/gms/internal/ads/zzbfm;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbfm;",
        ">;"
    }
.end annotation


# instance fields
.field public url:Ljava/lang/String;

.field public zzamf:Ljava/lang/Integer;

.field private zzecg:Ljava/lang/Integer;

.field public zzech:Ljava/lang/String;

.field private zzeci:Ljava/lang/String;

.field public zzecj:Lcom/google/android/gms/internal/ads/zzbfn;

.field public zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

.field public zzecl:Ljava/lang/String;

.field public zzecm:Lcom/google/android/gms/internal/ads/zzbft;

.field private zzecn:Ljava/lang/Boolean;

.field private zzeco:[Ljava/lang/String;

.field private zzecp:Ljava/lang/String;

.field private zzecq:Ljava/lang/Boolean;

.field private zzecr:Ljava/lang/Boolean;

.field private zzecs:[B

.field public zzect:Lcom/google/android/gms/internal/ads/zzbfv;

.field public zzecu:[Ljava/lang/String;

.field public zzecv:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzamf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecg:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzech:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeci:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfu;->zzagu()[Lcom/google/android/gms/internal/ads/zzbfu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecm:Lcom/google/android/gms/internal/ads/zzbft;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecn:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzecd:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecq:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecr:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecs:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzect:Lcom/google/android/gms/internal/ads/zzbfv;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzecd:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzecd:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzebt:I

    return-void
.end method

.method private final zzaa(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfm;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_1c6

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_f
    const/16 v0, 0xaa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    array-length v2, v2

    :goto_1c
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    :goto_26
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3f
    const/16 v0, 0xa2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    if-nez v2, :cond_4b

    const/4 v2, 0x0

    goto :goto_4c

    :cond_4b
    array-length v2, v2

    :goto_4c
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    if-eqz v2, :cond_56

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    :goto_56
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_66

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    goto :goto_0

    :sswitch_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzect:Lcom/google/android/gms/internal/ads/zzbfv;

    if-nez v0, :cond_7a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzect:Lcom/google/android/gms/internal/ads/zzbfv;

    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzect:Lcom/google/android/gms/internal/ads/zzbfv;

    goto :goto_a8

    :sswitch_7d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecs:[B

    goto/16 :goto_0

    :sswitch_85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecm:Lcom/google/android/gms/internal/ads/zzbft;

    if-nez v0, :cond_90

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbft;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecm:Lcom/google/android/gms/internal/ads/zzbft;

    :cond_90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecm:Lcom/google/android/gms/internal/ads/zzbft;

    goto :goto_a8

    :sswitch_93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecl:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-nez v0, :cond_a6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecj:Lcom/google/android/gms/internal/ads/zzbfn;

    :cond_a6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecj:Lcom/google/android/gms/internal/ads/zzbfn;

    :goto_a8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :sswitch_ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_b1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v2

    if-ltz v2, :cond_c2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecg:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_c2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum Verdict"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b1 .. :try_end_db} :catch_10a

    :sswitch_db
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_df
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v2

    if-ltz v2, :cond_f1

    const/16 v3, 0x9

    if-gt v2, v3, :cond_f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzamf:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_f1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum ReportType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_10a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_df .. :try_end_10a} :catch_10a

    :catch_10a
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto/16 :goto_0

    :sswitch_112
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecr:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_11e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecq:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_12a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecp:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_132
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    if-nez v2, :cond_13e

    const/4 v2, 0x0

    goto :goto_13f

    :cond_13e
    array-length v2, v2

    :goto_13f
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    if-eqz v2, :cond_149

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_149
    :goto_149
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_159

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_149

    :cond_159
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_163
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecn:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_16f
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    if-nez v2, :cond_17b

    const/4 v2, 0x0

    goto :goto_17c

    :cond_17b
    array-length v2, v2

    :goto_17c
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/google/android/gms/internal/ads/zzbfu;

    if-eqz v2, :cond_186

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_186
    :goto_186
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_19c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbfu;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_186

    :cond_19c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfu;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    goto/16 :goto_0

    :sswitch_1ac
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeci:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1b4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzech:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1bc
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->url:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1c4
    return-object p0

    nop

    :sswitch_data_1c6
    .sparse-switch
        0x0 -> :sswitch_1c4
        0xa -> :sswitch_1bc
        0x12 -> :sswitch_1b4
        0x1a -> :sswitch_1ac
        0x22 -> :sswitch_16f
        0x28 -> :sswitch_163
        0x32 -> :sswitch_132
        0x3a -> :sswitch_12a
        0x40 -> :sswitch_11e
        0x48 -> :sswitch_112
        0x50 -> :sswitch_db
        0x58 -> :sswitch_ad
        0x62 -> :sswitch_9b
        0x6a -> :sswitch_93
        0x72 -> :sswitch_85
        0x7a -> :sswitch_7d
        0x8a -> :sswitch_6f
        0xa2 -> :sswitch_3f
        0xaa -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzaa(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->url:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzech:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeci:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    array-length v0, v0

    if-lez v0, :cond_31

    const/4 v0, 0x0

    :goto_21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    array-length v3, v2

    if-ge v0, v3, :cond_31

    aget-object v2, v2, v0

    if-eqz v2, :cond_2e

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecn:Ljava/lang/Boolean;

    if-eqz v0, :cond_3d

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(IZ)V

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    if-eqz v0, :cond_55

    array-length v0, v0

    if-lez v0, :cond_55

    const/4 v0, 0x0

    :goto_45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_55

    aget-object v2, v2, v0

    if-eqz v2, :cond_52

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecp:Ljava/lang/String;

    if-eqz v0, :cond_5d

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecq:Ljava/lang/Boolean;

    if-eqz v0, :cond_6a

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(IZ)V

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecr:Ljava/lang/Boolean;

    if-eqz v0, :cond_77

    const/16 v2, 0x9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(IZ)V

    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzamf:Ljava/lang/Integer;

    if-eqz v0, :cond_84

    const/16 v2, 0xa

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecg:Ljava/lang/Integer;

    if-eqz v0, :cond_91

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v0, :cond_9a

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_9a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecl:Ljava/lang/String;

    if-eqz v0, :cond_a3

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecm:Lcom/google/android/gms/internal/ads/zzbft;

    if-eqz v0, :cond_ac

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_ac
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecs:[B

    if-eqz v0, :cond_b5

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_b5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzect:Lcom/google/android/gms/internal/ads/zzbfv;

    if-eqz v0, :cond_be

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_be
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    if-eqz v0, :cond_d7

    array-length v0, v0

    if-lez v0, :cond_d7

    const/4 v0, 0x0

    :goto_c6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_d7

    aget-object v2, v2, v0

    if-eqz v2, :cond_d4

    const/16 v3, 0x14

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    :cond_d7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    if-eqz v0, :cond_ef

    array-length v0, v0

    if-lez v0, :cond_ef

    :goto_de
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_ef

    aget-object v0, v0, v1

    if-eqz v0, :cond_ec

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    :cond_ef
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 10

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->url:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzech:Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v1, :cond_18

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeci:Ljava/lang/String;

    if-eqz v1, :cond_22

    const/4 v4, 0x3

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    const/4 v4, 0x0

    if-eqz v1, :cond_3d

    array-length v1, v1

    if-lez v1, :cond_3d

    const/4 v1, 0x0

    :goto_2b
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeck:[Lcom/google/android/gms/internal/ads/zzbfu;

    array-length v6, v5

    if-ge v1, v6, :cond_3d

    aget-object v5, v5, v1

    if-eqz v5, :cond_3a

    const/4 v6, 0x4

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecn:Ljava/lang/Boolean;

    if-eqz v1, :cond_4b

    const/4 v5, 0x5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzcd(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    if-eqz v1, :cond_6c

    array-length v1, v1

    if-lez v1, :cond_6c

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_55
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeco:[Ljava/lang/String;

    array-length v8, v7

    if-ge v1, v8, :cond_68

    aget-object v7, v7, v1

    if-eqz v7, :cond_65

    add-int/lit8 v6, v6, 0x1

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbfa;->zzeo(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_68
    add-int/2addr v0, v5

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v6

    :cond_6c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecp:Ljava/lang/String;

    if-eqz v1, :cond_76

    const/4 v5, 0x7

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecq:Ljava/lang/Boolean;

    if-eqz v1, :cond_85

    const/16 v5, 0x8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzcd(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_85
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecr:Ljava/lang/Boolean;

    if-eqz v1, :cond_94

    const/16 v5, 0x9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzcd(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzamf:Ljava/lang/Integer;

    if-eqz v1, :cond_a3

    const/16 v2, 0xa

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecg:Ljava/lang/Integer;

    if-eqz v1, :cond_b2

    const/16 v2, 0xb

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecj:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v1, :cond_bd

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_bd
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecl:Ljava/lang/String;

    if-eqz v1, :cond_c8

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecm:Lcom/google/android/gms/internal/ads/zzbft;

    if-eqz v1, :cond_d3

    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecs:[B

    if-eqz v1, :cond_de

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_de
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzect:Lcom/google/android/gms/internal/ads/zzbfv;

    if-eqz v1, :cond_e9

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    if-eqz v1, :cond_10a

    array-length v1, v1

    if-lez v1, :cond_10a

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_f3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecu:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_106

    aget-object v6, v6, v1

    if-eqz v6, :cond_103

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbfa;->zzeo(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v2, v6

    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto :goto_f3

    :cond_106
    add-int/2addr v0, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    :cond_10a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    if-eqz v1, :cond_12a

    array-length v1, v1

    if-lez v1, :cond_12a

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_113
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecv:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_126

    aget-object v5, v5, v4

    if-eqz v5, :cond_123

    add-int/lit8 v2, v2, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzeo(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_123
    add-int/lit8 v4, v4, 0x1

    goto :goto_113

    :cond_126
    add-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :cond_12a
    return v0
.end method
