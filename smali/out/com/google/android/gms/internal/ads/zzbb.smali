.class public final Lcom/google/android/gms/internal/ads/zzbb;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzfo:[Lcom/google/android/gms/internal/ads/zzbb;


# instance fields
.field public zzdo:Ljava/lang/Long;

.field public zzdp:Ljava/lang/Long;

.field public zzfp:Ljava/lang/Long;

.field public zzfq:Ljava/lang/Long;

.field public zzfr:Ljava/lang/Long;

.field public zzfs:Ljava/lang/Long;

.field public zzft:Ljava/lang/Integer;

.field public zzfu:Ljava/lang/Long;

.field public zzfv:Ljava/lang/Long;

.field public zzfw:Ljava/lang/Long;

.field public zzfx:Ljava/lang/Integer;

.field public zzfy:Ljava/lang/Long;

.field public zzfz:Ljava/lang/Long;

.field public zzga:Ljava/lang/Long;

.field public zzgb:Ljava/lang/Long;

.field public zzgc:Ljava/lang/Long;

.field public zzgd:Ljava/lang/Long;

.field public zzge:Ljava/lang/Long;

.field public zzgf:Ljava/lang/Long;

.field private zzgg:Ljava/lang/Long;

.field private zzgh:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdo:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfq:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfr:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfs:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfu:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfv:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfw:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfy:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfz:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzga:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgb:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgc:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgd:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzge:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgf:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgg:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgh:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzebt:I

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbb;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    sparse-switch v0, :sswitch_data_11a

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgh:Ljava/lang/Long;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgg:Ljava/lang/Long;

    goto :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgf:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzge:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgd:Ljava/lang/Long;

    goto :goto_0

    :sswitch_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgc:Ljava/lang/Long;

    goto :goto_0

    :sswitch_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgb:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzga:Ljava/lang/Long;

    goto :goto_0

    :sswitch_66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfz:Ljava/lang/Long;

    goto :goto_0

    :sswitch_71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfy:Ljava/lang/Long;

    goto :goto_0

    :sswitch_7c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaz;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfx:Ljava/lang/Integer;
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_8e} :catch_c8

    goto/16 :goto_0

    :sswitch_90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfw:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_9c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfv:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_a8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfu:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_b4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_b8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaz;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzft:Ljava/lang/Integer;
    :try_end_c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b8 .. :try_end_c6} :catch_c8

    goto/16 :goto_0

    :catch_c8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto/16 :goto_0

    :sswitch_d0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfs:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_dc
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfr:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_e8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfq:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_f4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfp:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_100
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdp:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_10c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdo:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_118
    return-object p0

    nop

    :sswitch_data_11a
    .sparse-switch
        0x0 -> :sswitch_118
        0x8 -> :sswitch_10c
        0x10 -> :sswitch_100
        0x18 -> :sswitch_f4
        0x20 -> :sswitch_e8
        0x28 -> :sswitch_dc
        0x30 -> :sswitch_d0
        0x38 -> :sswitch_b4
        0x40 -> :sswitch_a8
        0x48 -> :sswitch_9c
        0x50 -> :sswitch_90
        0x58 -> :sswitch_7c
        0x60 -> :sswitch_71
        0x68 -> :sswitch_66
        0x70 -> :sswitch_5b
        0x78 -> :sswitch_50
        0x80 -> :sswitch_45
        0x88 -> :sswitch_3a
        0x90 -> :sswitch_2f
        0x98 -> :sswitch_24
        0xa0 -> :sswitch_19
        0xa8 -> :sswitch_e
    .end sparse-switch
.end method

.method public static zzs()[Lcom/google/android/gms/internal/ads/zzbb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbb;->zzfo:[Lcom/google/android/gms/internal/ads/zzbb;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfg;->zzebs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbb;->zzfo:[Lcom/google/android/gms/internal/ads/zzbb;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzbb;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbb;->zzfo:[Lcom/google/android/gms/internal/ads/zzbb;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbb;->zzfo:[Lcom/google/android/gms/internal/ads/zzbb;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzc(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbb;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdo:Ljava/lang/Long;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdp:Ljava/lang/Long;

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfp:Ljava/lang/Long;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfq:Ljava/lang/Long;

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfr:Ljava/lang/Long;

    if-eqz v0, :cond_3c

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfs:Ljava/lang/Long;

    if-eqz v0, :cond_48

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzft:Ljava/lang/Integer;

    if-eqz v0, :cond_54

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfu:Ljava/lang/Long;

    if-eqz v0, :cond_61

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfv:Ljava/lang/Long;

    if-eqz v0, :cond_6e

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfw:Ljava/lang/Long;

    if-eqz v0, :cond_7b

    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfx:Ljava/lang/Integer;

    if-eqz v0, :cond_88

    const/16 v1, 0xb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfy:Ljava/lang/Long;

    if-eqz v0, :cond_95

    const/16 v1, 0xc

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfz:Ljava/lang/Long;

    if-eqz v0, :cond_a2

    const/16 v1, 0xd

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzga:Ljava/lang/Long;

    if-eqz v0, :cond_af

    const/16 v1, 0xe

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_af
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgb:Ljava/lang/Long;

    if-eqz v0, :cond_bc

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_bc
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgc:Ljava/lang/Long;

    if-eqz v0, :cond_c9

    const/16 v1, 0x10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_c9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgd:Ljava/lang/Long;

    if-eqz v0, :cond_d6

    const/16 v1, 0x11

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_d6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzge:Ljava/lang/Long;

    if-eqz v0, :cond_e3

    const/16 v1, 0x12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_e3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgf:Ljava/lang/Long;

    if-eqz v0, :cond_f0

    const/16 v1, 0x13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_f0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgg:Ljava/lang/Long;

    if-eqz v0, :cond_fd

    const/16 v1, 0x14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_fd
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgh:Ljava/lang/Long;

    if-eqz v0, :cond_10a

    const/16 v1, 0x15

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_10a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdo:Ljava/lang/Long;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzdp:Ljava/lang/Long;

    if-eqz v1, :cond_20

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfp:Ljava/lang/Long;

    if-eqz v1, :cond_2e

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfq:Ljava/lang/Long;

    if-eqz v1, :cond_3c

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfr:Ljava/lang/Long;

    if-eqz v1, :cond_4a

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfs:Ljava/lang/Long;

    if-eqz v1, :cond_58

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzft:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfu:Ljava/lang/Long;

    if-eqz v1, :cond_75

    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfv:Ljava/lang/Long;

    if-eqz v1, :cond_84

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfw:Ljava/lang/Long;

    if-eqz v1, :cond_93

    const/16 v2, 0xa

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfx:Ljava/lang/Integer;

    if-eqz v1, :cond_a2

    const/16 v2, 0xb

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfy:Ljava/lang/Long;

    if-eqz v1, :cond_b1

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzfz:Ljava/lang/Long;

    if-eqz v1, :cond_c0

    const/16 v2, 0xd

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzga:Ljava/lang/Long;

    if-eqz v1, :cond_cf

    const/16 v2, 0xe

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_cf
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgb:Ljava/lang/Long;

    if-eqz v1, :cond_de

    const/16 v2, 0xf

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_de
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgc:Ljava/lang/Long;

    if-eqz v1, :cond_ed

    const/16 v2, 0x10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ed
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgd:Ljava/lang/Long;

    if-eqz v1, :cond_fc

    const/16 v2, 0x11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_fc
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzge:Ljava/lang/Long;

    if-eqz v1, :cond_10b

    const/16 v2, 0x12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgf:Ljava/lang/Long;

    if-eqz v1, :cond_11a

    const/16 v2, 0x13

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgg:Ljava/lang/Long;

    if-eqz v1, :cond_129

    const/16 v2, 0x14

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbb;->zzgh:Ljava/lang/Long;

    if-eqz v1, :cond_138

    const/16 v2, 0x15

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_138
    return v0
.end method
