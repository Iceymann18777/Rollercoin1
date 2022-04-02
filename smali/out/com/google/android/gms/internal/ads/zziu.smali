.class public final Lcom/google/android/gms/internal/ads/zziu;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zziu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaow:[Lcom/google/android/gms/internal/ads/zziu;


# instance fields
.field private zzaox:Lcom/google/android/gms/internal/ads/zziy;

.field private zzaoy:Lcom/google/android/gms/internal/ads/zzja;

.field private zzaoz:Lcom/google/android/gms/internal/ads/zzjb;

.field private zzapa:Lcom/google/android/gms/internal/ads/zzjc;

.field private zzapb:Lcom/google/android/gms/internal/ads/zziv;

.field private zzapc:Lcom/google/android/gms/internal/ads/zziz;

.field private zzapd:Lcom/google/android/gms/internal/ads/zzix;

.field private zzape:Ljava/lang/Integer;

.field private zzapf:Ljava/lang/Integer;

.field private zzapg:Lcom/google/android/gms/internal/ads/zzis;

.field private zzaph:Ljava/lang/Integer;

.field private zzapi:Ljava/lang/Integer;

.field private zzapj:Ljava/lang/Integer;

.field private zzapk:Ljava/lang/Integer;

.field private zzapl:Ljava/lang/Integer;

.field private zzapm:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaox:Lcom/google/android/gms/internal/ads/zziy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoy:Lcom/google/android/gms/internal/ads/zzja;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoz:Lcom/google/android/gms/internal/ads/zzjb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapa:Lcom/google/android/gms/internal/ads/zzjc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapb:Lcom/google/android/gms/internal/ads/zziv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapc:Lcom/google/android/gms/internal/ads/zziz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapd:Lcom/google/android/gms/internal/ads/zzix;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzape:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapg:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaph:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapj:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapk:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapl:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapm:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzebt:I

    return-void
.end method

.method public static zzhu()[Lcom/google/android/gms/internal/ads/zziu;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zziu;->zzaow:[Lcom/google/android/gms/internal/ads/zziu;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfg;->zzebs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zziu;->zzaow:[Lcom/google/android/gms/internal/ads/zziu;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zziu;

    sput-object v1, Lcom/google/android/gms/internal/ads/zziu;->zzaow:[Lcom/google/android/gms/internal/ads/zziu;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zziu;->zzaow:[Lcom/google/android/gms/internal/ads/zziu;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    sparse-switch v0, :sswitch_data_dc

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapm:Ljava/lang/Long;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapl:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapk:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapj:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapi:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaph:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapg:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_5b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapg:Lcom/google/android/gms/internal/ads/zzis;

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapg:Lcom/google/android/gms/internal/ads/zzis;

    goto/16 :goto_d6

    :sswitch_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapf:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzape:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapd:Lcom/google/android/gms/internal/ads/zzix;

    if-nez v0, :cond_80

    new-instance v0, Lcom/google/android/gms/internal/ads/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzix;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapd:Lcom/google/android/gms/internal/ads/zzix;

    :cond_80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapd:Lcom/google/android/gms/internal/ads/zzix;

    goto :goto_d6

    :sswitch_83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapc:Lcom/google/android/gms/internal/ads/zziz;

    if-nez v0, :cond_8e

    new-instance v0, Lcom/google/android/gms/internal/ads/zziz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapc:Lcom/google/android/gms/internal/ads/zziz;

    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapc:Lcom/google/android/gms/internal/ads/zziz;

    goto :goto_d6

    :sswitch_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapb:Lcom/google/android/gms/internal/ads/zziv;

    if-nez v0, :cond_9c

    new-instance v0, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapb:Lcom/google/android/gms/internal/ads/zziv;

    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapb:Lcom/google/android/gms/internal/ads/zziv;

    goto :goto_d6

    :sswitch_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapa:Lcom/google/android/gms/internal/ads/zzjc;

    if-nez v0, :cond_aa

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapa:Lcom/google/android/gms/internal/ads/zzjc;

    :cond_aa
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapa:Lcom/google/android/gms/internal/ads/zzjc;

    goto :goto_d6

    :sswitch_ad
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoz:Lcom/google/android/gms/internal/ads/zzjb;

    if-nez v0, :cond_b8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoz:Lcom/google/android/gms/internal/ads/zzjb;

    :cond_b8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoz:Lcom/google/android/gms/internal/ads/zzjb;

    goto :goto_d6

    :sswitch_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoy:Lcom/google/android/gms/internal/ads/zzja;

    if-nez v0, :cond_c6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzja;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoy:Lcom/google/android/gms/internal/ads/zzja;

    :cond_c6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoy:Lcom/google/android/gms/internal/ads/zzja;

    goto :goto_d6

    :sswitch_c9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaox:Lcom/google/android/gms/internal/ads/zziy;

    if-nez v0, :cond_d4

    new-instance v0, Lcom/google/android/gms/internal/ads/zziy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaox:Lcom/google/android/gms/internal/ads/zziy;

    :cond_d4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaox:Lcom/google/android/gms/internal/ads/zziy;

    :goto_d6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :sswitch_db
    return-object p0

    :sswitch_data_dc
    .sparse-switch
        0x0 -> :sswitch_db
        0x2a -> :sswitch_c9
        0x32 -> :sswitch_bb
        0x3a -> :sswitch_ad
        0x42 -> :sswitch_9f
        0x4a -> :sswitch_91
        0x52 -> :sswitch_83
        0x5a -> :sswitch_75
        0x60 -> :sswitch_6a
        0x68 -> :sswitch_5f
        0x72 -> :sswitch_50
        0x78 -> :sswitch_45
        0x80 -> :sswitch_3a
        0x88 -> :sswitch_2f
        0x90 -> :sswitch_24
        0x98 -> :sswitch_19
        0xa0 -> :sswitch_e
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaox:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v0, :cond_8

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoy:Lcom/google/android/gms/internal/ads/zzja;

    if-eqz v0, :cond_10

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoz:Lcom/google/android/gms/internal/ads/zzjb;

    if-eqz v0, :cond_18

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapa:Lcom/google/android/gms/internal/ads/zzjc;

    if-eqz v0, :cond_21

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapb:Lcom/google/android/gms/internal/ads/zziv;

    if-eqz v0, :cond_2a

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapc:Lcom/google/android/gms/internal/ads/zziz;

    if-eqz v0, :cond_33

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapd:Lcom/google/android/gms/internal/ads/zzix;

    if-eqz v0, :cond_3c

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzape:Ljava/lang/Integer;

    if-eqz v0, :cond_49

    const/16 v1, 0xc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapf:Ljava/lang/Integer;

    if-eqz v0, :cond_56

    const/16 v1, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapg:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_5f

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaph:Ljava/lang/Integer;

    if-eqz v0, :cond_6c

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapi:Ljava/lang/Integer;

    if-eqz v0, :cond_79

    const/16 v1, 0x10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapj:Ljava/lang/Integer;

    if-eqz v0, :cond_86

    const/16 v1, 0x11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapk:Ljava/lang/Integer;

    if-eqz v0, :cond_93

    const/16 v1, 0x12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapl:Ljava/lang/Integer;

    if-eqz v0, :cond_a0

    const/16 v1, 0x13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapm:Ljava/lang/Long;

    if-eqz v0, :cond_ad

    const/16 v1, 0x14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(IJ)V

    :cond_ad
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaox:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v1, :cond_e

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoy:Lcom/google/android/gms/internal/ads/zzja;

    if-eqz v1, :cond_18

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaoz:Lcom/google/android/gms/internal/ads/zzjb;

    if-eqz v1, :cond_22

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapa:Lcom/google/android/gms/internal/ads/zzjc;

    if-eqz v1, :cond_2d

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapb:Lcom/google/android/gms/internal/ads/zziv;

    if-eqz v1, :cond_38

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapc:Lcom/google/android/gms/internal/ads/zziz;

    if-eqz v1, :cond_43

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapd:Lcom/google/android/gms/internal/ads/zzix;

    if-eqz v1, :cond_4e

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzape:Ljava/lang/Integer;

    if-eqz v1, :cond_5d

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapf:Ljava/lang/Integer;

    if-eqz v1, :cond_6c

    const/16 v2, 0xd

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapg:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_77

    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_77
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzaph:Ljava/lang/Integer;

    if-eqz v1, :cond_86

    const/16 v2, 0xf

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_86
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapi:Ljava/lang/Integer;

    if-eqz v1, :cond_95

    const/16 v2, 0x10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapj:Ljava/lang/Integer;

    if-eqz v1, :cond_a4

    const/16 v2, 0x11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapk:Ljava/lang/Integer;

    if-eqz v1, :cond_b3

    const/16 v2, 0x12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapl:Ljava/lang/Integer;

    if-eqz v1, :cond_c2

    const/16 v2, 0x13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzapm:Ljava/lang/Long;

    if-eqz v1, :cond_d1

    const/16 v2, 0x14

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d1
    return v0
.end method
