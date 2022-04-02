.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accessibilityChannel:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final exoMediaCryptoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1743
    new-instance v0, Lcom/google/android/exoplayer2/Format$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 997
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 1000
    const-class v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 1006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1007
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    :goto_53
    if-ge v1, v0, :cond_61

    .line 1009
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 1011
    :cond_61
    const-class v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1012
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 1014
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1015
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1016
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 1018
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1019
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9f

    .line 1020
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_a0

    :cond_9f
    move-object v0, v1

    :goto_a0
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 1022
    const-class v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 1033
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "JIIFIF[BI",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 953
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    move-object v1, p2

    .line 954
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    move v1, p3

    .line 955
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move v1, p4

    .line 956
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    move v1, p5

    .line 957
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-object v1, p6

    .line 958
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object v1, p7

    .line 959
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object v1, p8

    .line 961
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object v1, p9

    .line 963
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move v1, p10

    .line 964
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    if-nez p11, :cond_29

    .line 966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2a

    :cond_29
    move-object v1, p11

    :goto_2a
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v1, p12

    .line 967
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-wide/from16 v1, p13

    .line 968
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move/from16 v1, p15

    .line 970
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v1, p16

    .line 971
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v1, p17

    .line 972
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p18

    if-ne v3, v2, :cond_47

    const/4 v3, 0x0

    .line 973
    :cond_47
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p19, v3

    if-nez v3, :cond_52

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_54

    :cond_52
    move/from16 v3, p19

    .line 974
    :goto_54
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v3, p20

    .line 976
    iput-object v3, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move/from16 v3, p21

    .line 977
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move-object/from16 v3, p22

    .line 978
    iput-object v3, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move/from16 v3, p23

    .line 980
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v3, p24

    .line 981
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v3, p25

    .line 982
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v3, p26

    if-ne v3, v2, :cond_73

    const/4 v3, 0x0

    .line 983
    :cond_73
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v3, p27

    if-ne v3, v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move v1, v3

    .line 984
    :goto_7b
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 986
    invoke-static/range {p28 .. p28}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move/from16 v1, p29

    .line 987
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move-object/from16 v1, p30

    .line 989
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "III",
            "Ljava/util/List<",
            "[B>;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move-object/from16 v11, p9

    move/from16 v3, p10

    move/from16 v4, p11

    move-object/from16 v28, p12

    .line 413
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    move/from16 v26, p8

    move/from16 v27, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v3, p12

    move-object/from16 v28, p13

    move-object/from16 v7, p14

    .line 519
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 485
    invoke-static/range {v0 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 457
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    .line 813
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v11, p5

    move-object/from16 v28, p6

    move-object/from16 v12, p7

    .line 744
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-wide/from16 v13, p2

    .line 847
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v12, p4

    .line 885
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 19

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 563
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;
    .registers 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    move/from16 v29, p9

    .line 587
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 5

    const/4 v0, 0x0

    .line 624
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 16

    .line 643
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 633
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v28, p5

    move/from16 v29, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move-object/from16 v11, p10

    .line 701
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;
    .registers 20

    .line 687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    .line 677
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;IIIFLjava/util/List;II)Lcom/google/android/exoplayer2/Format;
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;II)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v11, p10

    move/from16 v3, p11

    move/from16 v4, p12

    .line 228
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    .line 299
    invoke-static/range {v0 .. v14}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v11, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move-object/from16 v20, p11

    move/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v12, p14

    .line 333
    new-instance v31, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method


# virtual methods
.method public copyWithAdjustments(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .registers 36

    move-object/from16 v0, p0

    .line 1341
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v14, p1

    if-ne v14, v1, :cond_f

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v9, p2

    if-ne v9, v1, :cond_11

    return-object v0

    :cond_f
    move-object/from16 v9, p2

    .line 1344
    :cond_11
    new-instance v1, Lcom/google/android/exoplayer2/Format;

    move-object v2, v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide v15, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v17, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v18, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v19, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v20, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v21, v14

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v22, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v23, v14

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v24, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v25, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v26, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v27, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v28, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v29, v14

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v30, v14

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v31, v14

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v32, v14

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v32}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v1
.end method

.method public copyWithBitrate(I)Lcom/google/android/exoplayer2/Format;
    .registers 35

    move-object/from16 v0, p0

    move/from16 v6, p1

    .line 1410
    new-instance v32, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;IIIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 45

    move-object/from16 v0, p0

    .line 1148
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v2, p5

    if-eqz v1, :cond_e

    .line 1149
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    move-object v9, v1

    goto :goto_f

    :cond_e
    move-object v9, v2

    .line 1152
    :goto_f
    new-instance v1, Lcom/google/android/exoplayer2/Format;

    move-object v2, v1

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide v15, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v19, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v20, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v21, v3

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v22, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v23, v3

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v24, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v26, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v27, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v28, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v29, v3

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v31, v3

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v32, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p10

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v11, p3

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v25, p9

    move-object/from16 v30, p11

    invoke-direct/range {v2 .. v32}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v1
.end method

.method public copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 1331
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/Format;->copyWithAdjustments(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithExoMediaCryptoType(Ljava/lang/Class;)Lcom/google/android/exoplayer2/Format;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v31, p1

    .line 1477
    new-instance v32, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public copyWithFrameRate(F)Lcom/google/android/exoplayer2/Format;
    .registers 35

    move-object/from16 v0, p0

    move/from16 v18, p1

    .line 1298
    new-instance v32, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public copyWithGaplessInfo(II)Lcom/google/android/exoplayer2/Format;
    .registers 36

    move-object/from16 v0, p0

    move/from16 v27, p1

    move/from16 v28, p2

    .line 1265
    new-instance v32, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public copyWithManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_7

    return-object v0

    .line 1191
    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    .line 1194
    iget-object v4, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1197
    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v3, :cond_14

    goto :goto_16

    :cond_14
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    :goto_16
    move-object v5, v3

    .line 1198
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v6, :cond_1f

    if-ne v2, v7, :cond_26

    .line 1199
    :cond_1f
    iget-object v6, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v6, :cond_26

    move-object/from16 v31, v6

    goto :goto_28

    :cond_26
    move-object/from16 v31, v3

    .line 1205
    :goto_28
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2f

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    :cond_2f
    move v8, v3

    .line 1206
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 1210
    iget-object v6, v1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1211
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v7, :cond_43

    move-object v9, v6

    goto :goto_44

    :cond_43
    move-object v9, v3

    .line 1216
    :goto_44
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v3, :cond_4b

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    goto :goto_51

    :cond_4b
    iget-object v6, v1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1219
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    :goto_51
    move-object v10, v3

    .line 1221
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_62

    const/4 v6, 0x2

    if-ne v2, v6, :cond_62

    .line 1223
    iget v2, v1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v20, v2

    goto :goto_64

    :cond_62
    move/from16 v20, v3

    .line 1227
    :goto_64
    iget v2, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    or-int v6, v2, v3

    .line 1228
    iget v2, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    or-int v7, v2, v3

    .line 1229
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1230
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;->createSessionCreationData(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v15

    .line 1232
    new-instance v1, Lcom/google/android/exoplayer2/Format;

    move-object v3, v1

    iget-object v11, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 p1, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v28, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v29, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v32, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v33, v1

    invoke-direct/range {v3 .. v33}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object p1
.end method

.method public copyWithMaxInputSize(I)Lcom/google/android/exoplayer2/Format;
    .registers 35

    move-object/from16 v0, p0

    move/from16 v11, p1

    .line 1037
    new-instance v32, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 1335
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/Format;->copyWithAdjustments(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;
    .registers 36

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    .line 1070
    new-instance v32, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_107

    .line 1597
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_107

    .line 1600
    :cond_13
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 1601
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v2, :cond_20

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v3, :cond_20

    if-eq v2, v3, :cond_20

    return v1

    .line 1605
    :cond_20
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    if-ne v2, v3, :cond_105

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1620
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_105

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1621
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 1622
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1623
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1624
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 1625
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 1626
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1627
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1628
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 1629
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1630
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1631
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1632
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 1633
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_105

    goto :goto_106

    :cond_105
    const/4 v0, 0x0

    :goto_106
    return v0

    :cond_107
    :goto_107
    return v1
.end method

.method public getPixelCount()I
    .registers 4

    .line 1514
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v1, :cond_a

    goto :goto_c

    :cond_a
    mul-int v1, v0, v2

    :cond_c
    :goto_c
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 1549
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-nez v0, :cond_cc

    const/16 v0, 0x20f

    .line 1552
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1553
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1554
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1555
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1556
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1557
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_36

    const/4 v1, 0x0

    goto :goto_3a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1558
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_43

    const/4 v1, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v1

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1560
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_50

    const/4 v1, 0x0

    goto :goto_54

    :cond_50
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_54
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1562
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_5d

    const/4 v1, 0x0

    goto :goto_61

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_61
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1563
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1566
    iget-wide v3, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1568
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1569
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1570
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1571
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1572
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1574
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1577
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1578
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1579
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1580
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1581
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1583
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_b4

    const/4 v1, 0x0

    goto :goto_b8

    :cond_b4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1584
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1586
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez v1, :cond_c5

    goto :goto_c9

    :cond_c5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c9
    add-int/2addr v0, v2

    .line 1587
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    .line 1589
    :cond_cc
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    return v0
.end method

.method public initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z
    .registers 6

    .line 1645
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    const/4 v0, 0x0

    .line 1648
    :goto_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1649
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1701
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1703
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1705
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1709
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1712
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1714
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v0, :cond_4d

    .line 1716
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1718
    :cond_4d
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1719
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1721
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1724
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1726
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_75

    const/4 v1, 0x1

    :cond_75
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 1727
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_7f

    .line 1728
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1730
    :cond_7f
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1733
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    iget-object p2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1740
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
