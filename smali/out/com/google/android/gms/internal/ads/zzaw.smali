.class public final Lcom/google/android/gms/internal/ads/zzaw;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzaw;",
        ">;"
    }
.end annotation


# instance fields
.field private stackTrace:Ljava/lang/String;

.field public zzco:Ljava/lang/String;

.field public zzcp:Ljava/lang/Long;

.field private zzcq:Ljava/lang/String;

.field private zzcr:Ljava/lang/String;

.field private zzcs:Ljava/lang/Long;

.field private zzct:Ljava/lang/Long;

.field private zzcu:Ljava/lang/String;

.field private zzcv:Ljava/lang/Long;

.field private zzcw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzco:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->stackTrace:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcs:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzct:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcv:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcw:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzebt:I

    return-void
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

    sparse-switch v0, :sswitch_data_66

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcw:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcv:Ljava/lang/Long;

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcu:Ljava/lang/String;

    goto :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzct:Ljava/lang/Long;

    goto :goto_0

    :sswitch_32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcs:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcr:Ljava/lang/String;

    goto :goto_0

    :sswitch_44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcq:Ljava/lang/String;

    goto :goto_0

    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->stackTrace:Ljava/lang/String;

    goto :goto_0

    :sswitch_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcp:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzco:Ljava/lang/String;

    goto :goto_0

    :sswitch_64
    return-object p0

    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_64
        0xa -> :sswitch_5d
        0x10 -> :sswitch_52
        0x1a -> :sswitch_4b
        0x22 -> :sswitch_44
        0x2a -> :sswitch_3d
        0x30 -> :sswitch_32
        0x38 -> :sswitch_27
        0x42 -> :sswitch_20
        0x48 -> :sswitch_15
        0x52 -> :sswitch_e
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzco:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcp:Ljava/lang/Long;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcq:Ljava/lang/String;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcr:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcs:Ljava/lang/Long;

    if-eqz v0, :cond_38

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzct:Ljava/lang/Long;

    if-eqz v0, :cond_44

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcu:Ljava/lang/String;

    if-eqz v0, :cond_4d

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcv:Ljava/lang/Long;

    if-eqz v0, :cond_5a

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcw:Ljava/lang/String;

    if-eqz v0, :cond_63

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_63
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzco:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcp:Ljava/lang/Long;

    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcq:Ljava/lang/String;

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcr:Ljava/lang/String;

    if-eqz v1, :cond_3a

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcs:Ljava/lang/Long;

    if-eqz v1, :cond_48

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzct:Ljava/lang/Long;

    if-eqz v1, :cond_56

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcu:Ljava/lang/String;

    if-eqz v1, :cond_61

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcv:Ljava/lang/Long;

    if-eqz v1, :cond_70

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaw;->zzcw:Ljava/lang/String;

    if-eqz v1, :cond_7b

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7b
    return v0
.end method
