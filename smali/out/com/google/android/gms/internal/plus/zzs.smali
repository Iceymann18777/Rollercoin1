.class public final Lcom/google/android/gms/internal/plus/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/plus/zzr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 32

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v25, v22

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    :goto_33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_157

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v29

    packed-switch v29, :pswitch_data_184

    :pswitch_44
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_33

    :pswitch_4a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v28

    const/16 v2, 0x1d

    goto/16 :goto_14e

    :pswitch_52
    move-object/from16 v29, v15

    sget-object v15, Lcom/google/android/gms/internal/plus/zzr$zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v27

    const/16 v2, 0x1c

    goto :goto_bd

    :pswitch_5d
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v26

    const/16 v2, 0x1b

    goto/16 :goto_14e

    :pswitch_67
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    const/16 v2, 0x1a

    goto/16 :goto_14e

    :pswitch_71
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v24

    const/16 v2, 0x19

    goto/16 :goto_14e

    :pswitch_7b
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v23

    const/16 v2, 0x18

    goto/16 :goto_14e

    :pswitch_85
    move-object/from16 v29, v15

    sget-object v15, Lcom/google/android/gms/internal/plus/zzr$zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v2, 0x17

    goto :goto_bd

    :pswitch_90
    move-object/from16 v29, v15

    sget-object v15, Lcom/google/android/gms/internal/plus/zzr$zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    const/16 v2, 0x16

    goto :goto_bd

    :pswitch_9b
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v20

    const/16 v2, 0x15

    goto/16 :goto_14e

    :pswitch_a5
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0x14

    goto/16 :goto_14e

    :pswitch_af
    move-object/from16 v29, v15

    sget-object v15, Lcom/google/android/gms/internal/plus/zzr$zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/gms/internal/plus/zzr$zzd;

    const/16 v2, 0x13

    :goto_bd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v29

    goto/16 :goto_33

    :pswitch_c8
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0x12

    goto/16 :goto_14e

    :pswitch_d2
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v16

    const/16 v2, 0x10

    goto/16 :goto_14e

    :pswitch_dc
    sget-object v15, Lcom/google/android/gms/internal/plus/zzr$zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/internal/plus/zzr$zzc;

    const/16 v2, 0xf

    goto/16 :goto_14e

    :pswitch_e9
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0xe

    goto :goto_14e

    :pswitch_f2
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v13

    const/16 v2, 0xc

    goto :goto_14e

    :pswitch_fb
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x9

    goto :goto_14e

    :pswitch_104
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x8

    goto :goto_14e

    :pswitch_10d
    move-object/from16 v29, v15

    sget-object v10, Lcom/google/android/gms/internal/plus/zzr$zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/plus/zzr$zzb;

    const/4 v2, 0x7

    goto :goto_14e

    :pswitch_11a
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v9

    const/4 v2, 0x6

    goto :goto_14e

    :pswitch_122
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x5

    goto :goto_14e

    :pswitch_12a
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    goto :goto_14e

    :pswitch_132
    move-object/from16 v29, v15

    sget-object v6, Lcom/google/android/gms/internal/plus/zzr$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/plus/zzr$zza;

    const/4 v2, 0x3

    goto :goto_14e

    :pswitch_13f
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    goto :goto_14e

    :pswitch_147
    move-object/from16 v29, v15

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    const/4 v2, 0x1

    :goto_14e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    :cond_157
    move-object/from16 v29, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ne v2, v1, :cond_168

    new-instance v0, Lcom/google/android/gms/internal/plus/zzr;

    move-object v2, v0

    move-object/from16 v15, v29

    invoke-direct/range {v2 .. v28}, Lcom/google/android/gms/internal/plus/zzr;-><init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/plus/zzr$zza;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/plus/zzr$zzb;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/plus/zzr$zzc;ZLjava/lang/String;Lcom/google/android/gms/internal/plus/zzr$zzd;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0

    :cond_168
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    goto :goto_182

    :goto_181
    throw v2

    :goto_182
    goto :goto_181

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_147
        :pswitch_13f
        :pswitch_132
        :pswitch_12a
        :pswitch_122
        :pswitch_11a
        :pswitch_10d
        :pswitch_104
        :pswitch_fb
        :pswitch_44
        :pswitch_44
        :pswitch_f2
        :pswitch_44
        :pswitch_e9
        :pswitch_dc
        :pswitch_d2
        :pswitch_44
        :pswitch_c8
        :pswitch_af
        :pswitch_a5
        :pswitch_9b
        :pswitch_90
        :pswitch_85
        :pswitch_7b
        :pswitch_71
        :pswitch_67
        :pswitch_5d
        :pswitch_52
        :pswitch_4a
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/internal/plus/zzr;

    return-object p1
.end method
