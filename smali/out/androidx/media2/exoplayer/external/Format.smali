.class public final Landroidx/media2/exoplayer/external/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accessibilityChannel:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

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

.field public final metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

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

    .line 1613
    new-instance v0, Landroidx/media2/exoplayer/external/Format$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Format$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 965
    const-class v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 972
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    :goto_53
    if-ge v1, v0, :cond_61

    .line 974
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 976
    :cond_61
    const-class v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    .line 984
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_9f

    :cond_9e
    const/4 v0, 0x0

    :goto_9f
    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    .line 987
    const-class v0, Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/video/ColorInfo;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 989
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 990
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    .line 991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V
    .registers 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "label",
            "selectionFlags",
            "roleFlags",
            "bitrate",
            "codecs",
            "metadata",
            "containerMimeType",
            "sampleMimeType",
            "maxInputSize",
            "initializationData",
            "drmInitData",
            "subsampleOffsetUs",
            "width",
            "height",
            "frameRate",
            "rotationDegrees",
            "pixelWidthHeightRatio",
            "projectionData",
            "stereoMode",
            "colorInfo",
            "channelCount",
            "sampleRate",
            "pcmEncoding",
            "encoderDelay",
            "encoderPadding",
            "language",
            "accessibilityChannel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "JIIFIF[BI",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 920
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    move-object v1, p2

    .line 921
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    move v1, p3

    .line 922
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    move v1, p4

    .line 923
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    move v1, p5

    .line 924
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move-object v1, p6

    .line 925
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    move-object v1, p7

    .line 926
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object v1, p8

    .line 928
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    move-object v1, p9

    .line 930
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    move v1, p10

    .line 931
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    if-nez p11, :cond_29

    .line 933
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2a

    :cond_29
    move-object v1, p11

    :goto_2a
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    move-object/from16 v1, p12

    .line 934
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-wide/from16 v1, p13

    .line 935
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move/from16 v1, p15

    .line 937
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v1, p16

    .line 938
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v1, p17

    .line 939
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p18

    if-ne v3, v2, :cond_47

    const/4 v3, 0x0

    .line 940
    :cond_47
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p19, v3

    if-nez v3, :cond_52

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_54

    :cond_52
    move/from16 v3, p19

    .line 942
    :goto_54
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move-object/from16 v3, p20

    .line 943
    iput-object v3, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move/from16 v3, p21

    .line 944
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move-object/from16 v3, p22

    .line 945
    iput-object v3, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move/from16 v3, p23

    .line 947
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v3, p24

    .line 948
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v3, p25

    .line 949
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v3, p26

    if-ne v3, v2, :cond_73

    const/4 v3, 0x0

    .line 950
    :cond_73
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v3, p27

    if-ne v3, v2, :cond_7a

    const/4 v3, 0x0

    .line 951
    :cond_7a
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    .line 953
    invoke-static/range {p28 .. p28}, Landroidx/media2/exoplayer/external/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move/from16 v1, p29

    .line 954
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .registers 43
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "label",
            "containerMimeType",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "channelCount",
            "sampleRate",
            "initializationData",
            "selectionFlags",
            "roleFlags",
            "language"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;II",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v23, p6

    move/from16 v24, p7

    move-object/from16 v11, p8

    move/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v28, p11

    .line 394
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v7, 0x0

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;
    .registers 46
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "maxInputSize",
            "channelCount",
            "sampleRate",
            "pcmEncoding",
            "encoderDelay",
            "encoderPadding",
            "initializationData",
            "drmInitData",
            "selectionFlags",
            "language",
            "metadata"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
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

    .line 499
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .registers 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "maxInputSize",
            "channelCount",
            "sampleRate",
            "pcmEncoding",
            "initializationData",
            "drmInitData",
            "selectionFlags",
            "language"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
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

    .line 465
    invoke-static/range {v0 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "maxInputSize",
            "channelCount",
            "sampleRate",
            "initializationData",
            "drmInitData",
            "selectionFlags",
            "language"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
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

    .line 437
    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .registers 40
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "label",
            "containerMimeType",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "selectionFlags",
            "roleFlags",
            "language"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    .line 785
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 39
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "selectionFlags",
            "initializationData",
            "language",
            "drmInitData"
        }
    .end annotation

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
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
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

    .line 721
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;
    .registers 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "subsampleOffsetUs"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-wide/from16 v13, p2

    .line 818
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "drmInitData"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v12, p4

    .line 855
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "label",
            "containerMimeType",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "selectionFlags",
            "roleFlags",
            "language"
        }
    .end annotation

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

    .line 542
    invoke-static/range {v0 .. v9}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;
    .registers 41
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "label",
            "containerMimeType",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "selectionFlags",
            "roleFlags",
            "language",
            "accessibilityChannel"
        }
    .end annotation

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

    .line 566
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "selectionFlags",
            "language"
        }
    .end annotation

    const/4 v0, 0x0

    .line 602
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "selectionFlags",
            "language",
            "drmInitData"
        }
    .end annotation

    .line 621
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

    .line 611
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;
    .registers 42
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "selectionFlags",
            "language",
            "accessibilityChannel",
            "drmInitData",
            "subsampleOffsetUs",
            "initializationData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Landroidx/media2/exoplayer/external/Format;"
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

    .line 679
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;J)Landroidx/media2/exoplayer/external/Format;
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "selectionFlags",
            "language",
            "drmInitData",
            "subsampleOffsetUs"
        }
    .end annotation

    .line 665
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

    .line 655
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;
    .registers 43
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "label",
            "containerMimeType",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "width",
            "height",
            "frameRate",
            "initializationData",
            "selectionFlags",
            "roleFlags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;II)",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v11, p9

    move/from16 v3, p10

    move/from16 v4, p11

    .line 217
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v7, 0x0

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "maxInputSize",
            "width",
            "height",
            "frameRate",
            "initializationData",
            "rotationDegrees",
            "pixelWidthHeightRatio",
            "drmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
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

    .line 287
    invoke-static/range {v0 .. v14}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 46
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sampleMimeType",
            "codecs",
            "bitrate",
            "maxInputSize",
            "width",
            "height",
            "frameRate",
            "initializationData",
            "rotationDegrees",
            "pixelWidthHeightRatio",
            "projectionData",
            "stereoMode",
            "colorInfo",
            "drmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
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

    .line 321
    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

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

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method


# virtual methods
.method public copyWithBitrate(I)Landroidx/media2/exoplayer/external/Format;
    .registers 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitrate"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v6, p1

    .line 1351
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .registers 44
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "label",
            "sampleMimeType",
            "codecs",
            "metadata",
            "bitrate",
            "width",
            "height",
            "channelCount",
            "selectionFlags",
            "language"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1076
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v2, p5

    if-eqz v1, :cond_e

    .line 1077
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    move-object v9, v1

    goto :goto_f

    :cond_e
    move-object v9, v2

    .line 1080
    :goto_f
    new-instance v1, Landroidx/media2/exoplayer/external/Format;

    move-object v2, v1

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget v12, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-wide v15, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v19, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v20, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v21, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v22, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v23, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v24, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v26, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v27, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v28, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v29, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v31, v3

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

    invoke-direct/range {v2 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v1
.end method

.method public copyWithDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmInitData"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 1255
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public copyWithFrameRate(F)Landroidx/media2/exoplayer/external/Format;
    .registers 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameRate"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v18, p1

    .line 1223
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public copyWithGaplessInfo(II)Landroidx/media2/exoplayer/external/Format;
    .registers 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encoderDelay",
            "encoderPadding"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v27, p1

    move/from16 v28, p2

    .line 1191
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .registers 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manifestFormat"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_7

    return-object v0

    .line 1118
    :cond_7
    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    .line 1121
    iget-object v4, v1, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    .line 1124
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    if-eqz v3, :cond_14

    goto :goto_16

    :cond_14
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    :goto_16
    move-object v5, v3

    .line 1125
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v6, :cond_1f

    if-ne v2, v7, :cond_26

    .line 1126
    :cond_1f
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-eqz v6, :cond_26

    move-object/from16 v31, v6

    goto :goto_28

    :cond_26
    move-object/from16 v31, v3

    .line 1132
    :goto_28
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2f

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    :cond_2f
    move v8, v3

    .line 1133
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 1137
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v6, v2}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1138
    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v7, :cond_43

    move-object v9, v6

    goto :goto_44

    :cond_43
    move-object v9, v3

    .line 1144
    :goto_44
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v3, :cond_4b

    .line 1145
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    goto :goto_51

    .line 1146
    :cond_4b
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v3

    :goto_51
    move-object v10, v3

    .line 1148
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_62

    const/4 v6, 0x2

    if-ne v2, v6, :cond_62

    .line 1150
    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v20, v2

    goto :goto_64

    :cond_62
    move/from16 v20, v3

    .line 1154
    :goto_64
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    or-int v6, v2, v3

    .line 1155
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    or-int v7, v2, v3

    .line 1156
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1157
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->createSessionCreationData(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v15

    .line 1159
    new-instance v1, Landroidx/media2/exoplayer/external/Format;

    move-object v3, v1

    iget-object v11, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v13, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    move-object/from16 p1, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-wide/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v28, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v30, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v32, v1

    invoke-direct/range {v3 .. v32}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object p1
.end method

.method public copyWithMaxInputSize(I)Landroidx/media2/exoplayer/external/Format;
    .registers 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxInputSize"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v11, p1

    .line 1000
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;
    .registers 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1287
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public copyWithSubsampleOffsetUs(J)Landroidx/media2/exoplayer/external/Format;
    .registers 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subsampleOffsetUs"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    .line 1032
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_fd

    .line 1468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_fd

    .line 1471
    :cond_13
    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    .line 1472
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    if-eqz v2, :cond_20

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    if-eqz v3, :cond_20

    if-eq v2, v3, :cond_20

    return v1

    .line 1476
    :cond_20
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    if-ne v2, v3, :cond_fb

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 1491
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_fb

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    .line 1492
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    .line 1493
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    .line 1494
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 1495
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    .line 1496
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1497
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 1498
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    .line 1499
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 1500
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 1501
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1502
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 1503
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_fb

    goto :goto_fc

    :cond_fb
    const/4 v0, 0x0

    :goto_fc
    return v0

    :cond_fd
    :goto_fd
    return v1
.end method

.method public getPixelCount()I
    .registers 4

    .line 1387
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->height:I

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

    .line 1422
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    if-nez v0, :cond_bf

    const/16 v0, 0x20f

    .line 1425
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

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

    .line 1426
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1427
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1428
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1429
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1430
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_36

    const/4 v1, 0x0

    goto :goto_3a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1431
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v1, :cond_43

    const/4 v1, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->hashCode()I

    move-result v1

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1433
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_50

    const/4 v1, 0x0

    goto :goto_54

    :cond_50
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_54
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1435
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_5d

    const/4 v1, 0x0

    goto :goto_61

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_61
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1436
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1439
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1441
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1442
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1443
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1444
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1445
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1447
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1450
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1451
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1452
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1453
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1454
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1456
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_b3

    goto :goto_b7

    :cond_b3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1457
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    add-int/2addr v0, v1

    .line 1458
    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    .line 1460
    :cond_bf
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    return v0
.end method

.method public initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1515
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    const/4 v0, 0x0

    .line 1518
    :goto_11
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1519
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

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
    .registers 15

    .line 1392
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget v5, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v6, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v10, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v11, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x68

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Format("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1571
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1573
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1579
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1582
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1584
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v0, :cond_4d

    .line 1586
    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1588
    :cond_4d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1589
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1591
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1594
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1596
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    if-eqz v0, :cond_75

    const/4 v1, 0x1

    :cond_75
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 1597
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    if-eqz v0, :cond_7f

    .line 1598
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1600
    :cond_7f
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1603
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1605
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    iget-object p2, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1610
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
