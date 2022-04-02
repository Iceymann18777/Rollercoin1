.class public final Lcom/google/android/datatransport/cct/a/zzb;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/cct/a/zzd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/encoders/EncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/a/zzd;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzi()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_15

    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzi()I

    move-result v0

    const-string v1, "sdkVersion"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 4
    :cond_15
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzf()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 6
    :cond_24
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hardware"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 8
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 9
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzb()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 10
    :cond_42
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 11
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzh()Ljava/lang/String;

    move-result-object v0

    const-string v1, "product"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 12
    :cond_51
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 13
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osBuild"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 14
    :cond_60
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zze()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 15
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-interface {p2, v1, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 16
    :cond_6f
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 17
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a/zzd;->zzc()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    :cond_7e
    return-void
.end method
