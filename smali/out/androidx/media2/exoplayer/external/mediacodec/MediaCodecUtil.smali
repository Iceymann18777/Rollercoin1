.class public final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

.field private static final PROFILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "^\\D?(\\d+)$"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 95
    sput v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 919
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    const/4 v2, 0x1

    .line 968
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 920
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/4 v4, 0x2

    .line 982
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 921
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 922
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    const/4 v6, 0x4

    .line 969
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 922
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v8, 0x8

    .line 983
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 923
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v10, 0x10

    .line 970
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 924
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    const/16 v12, 0x20

    .line 984
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 925
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    const/16 v14, 0x40

    .line 971
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 926
    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x15

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x16

    const/16 v10, 0x80

    .line 985
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 936
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x1e

    const/16 v10, 0x100

    .line 972
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 937
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x1f

    const/16 v14, 0x200

    .line 986
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 938
    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 939
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x400

    invoke-virtual {v0, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x28

    const/16 v10, 0x800

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x29

    const/16 v10, 0x1000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x2a

    const/16 v10, 0x2000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x32

    const/16 v10, 0x4000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x33

    const v14, 0x8000

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x34

    const/high16 v14, 0x10000

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    .line 948
    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v10, 0x4

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v14, 0x3

    const/16 v12, 0x8

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0xa

    .line 953
    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0xb

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x14

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x15

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x1e

    const/16 v12, 0x10

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x1f

    const/16 v12, 0x20

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x28

    const/16 v12, 0x40

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x29

    const/16 v12, 0x80

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x32

    const/16 v12, 0x100

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x33

    const/16 v12, 0x200

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x3c

    const/16 v12, 0x800

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x3d

    const/16 v12, 0x1000

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x3e

    const/16 v12, 0x2000

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L30"

    .line 968
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L60"

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L63"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L90"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L93"

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x400

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L120"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x1000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L123"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x4000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L150"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x10000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L153"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x40000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L156"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x100000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L180"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x400000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L183"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x1000000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L186"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H30"

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H60"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H63"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H90"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H93"

    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x800

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H120"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x2000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H123"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const v10, 0x8000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H150"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x20000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H153"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x80000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H156"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x200000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H180"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x800000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H183"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x2000000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H186"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "00"

    .line 997
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "01"

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "02"

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "03"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "04"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "05"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "06"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "07"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "08"

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "09"

    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v6, "01"

    .line 1009
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "02"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "03"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "04"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "05"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "06"

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "07"

    invoke-interface {v0, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "08"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v1, "09"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    .line 1020
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1029
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "decoderInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 512
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_40

    .line 513
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge p0, v3, :cond_3a

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "R9"

    .line 514
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 515
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_3a

    .line 516
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x0

    const-string v1, "OMX.google.raw.decoder"

    .line 520
    invoke-static {v1, v0, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object p0

    .line 519
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_3a
    sget-object p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$1;->$instance:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    goto :goto_71

    .line 539
    :cond_40
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p0, v0, :cond_71

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_71

    .line 540
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.SEC.mp3.dec"

    .line 541
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "OMX.SEC.MP3.Decoder"

    .line 542
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "OMX.brcm.audio.mp3.decoder"

    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_71

    .line 548
    :cond_6c
    sget-object p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$2;->$instance:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    :cond_71
    :goto_71
    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avcLevel"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    sparse-switch p0, :sswitch_data_2e

    const/4 p0, -0x1

    return p0

    :sswitch_b
    const/high16 p0, 0x900000

    return p0

    :sswitch_e
    const p0, 0x564000

    return p0

    :sswitch_12
    const/high16 p0, 0x220000

    return p0

    :sswitch_15
    const/high16 p0, 0x200000

    return p0

    :sswitch_18
    const/high16 p0, 0x140000

    return p0

    :sswitch_1b
    const p0, 0xe1000

    return p0

    :sswitch_1f
    const p0, 0x65400

    return p0

    :sswitch_23
    const p0, 0x31800

    return p0

    :sswitch_27
    const p0, 0x18c00

    return p0

    :cond_2b
    const/16 p0, 0x6300

    return p0

    :sswitch_data_2e
    .sparse-switch
        0x8 -> :sswitch_27
        0x10 -> :sswitch_27
        0x20 -> :sswitch_27
        0x40 -> :sswitch_23
        0x80 -> :sswitch_1f
        0x100 -> :sswitch_1f
        0x200 -> :sswitch_1b
        0x400 -> :sswitch_18
        0x800 -> :sswitch_15
        0x1000 -> :sswitch_15
        0x2000 -> :sswitch_12
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_b
        0x10000 -> :sswitch_b
    .end sparse-switch
.end method

.method private static codecNeedsDisableAdaptationWorkaround(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 561
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2c

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    .line 562
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1a
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method private static getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 735
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "Ignoring malformed MP4A codec string: "

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-eq v0, v4, :cond_21

    .line 736
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_21
    const/4 v0, 0x1

    .line 741
    :try_start_22
    aget-object v0, p1, v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 742
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio/mp4a-latm"

    .line 743
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x2

    .line 745
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 746
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v4, :cond_6d

    .line 749
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_54} :catch_55

    return-object v0

    :catch_55
    nop

    .line 753
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_65

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    :cond_65
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6a
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    return-object v1
.end method

.method private static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 626
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_21

    .line 628
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_21
    const/4 v0, 0x1

    .line 634
    :try_start_22
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_44

    .line 636
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 637
    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_55

    .line 638
    :cond_44
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_a2

    .line 640
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 641
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_54} :catch_ba

    move v2, v0

    .line 652
    :goto_55
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v0, :cond_75

    const/16 p0, 0x20

    .line 654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown AVC profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 657
    :cond_75
    sget-object v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v0, :cond_94

    const/16 p1, 0x1e

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AVC level: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 662
    :cond_94
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 644
    :cond_a2
    :try_start_a2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b6

    :cond_b1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b6
    invoke-static {v4, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_b9} :catch_ba

    return-object v3

    :catch_ba
    nop

    .line 648
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_ca

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_cf

    :cond_ca
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_cf
    invoke-static {v4, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "\\."

    .line 250
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 251
    aget-object v3, v1, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_84

    goto :goto_65

    :sswitch_16
    const-string v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x2

    goto :goto_66

    :sswitch_20
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x7

    goto :goto_66

    :sswitch_2a
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x4

    goto :goto_66

    :sswitch_34
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x3

    goto :goto_66

    :sswitch_3e
    const-string v2, "dvhe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x5

    goto :goto_66

    :sswitch_48
    const-string v2, "dvh1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x6

    goto :goto_66

    :sswitch_52
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x1

    goto :goto_66

    :sswitch_5c
    const-string v5, "avc1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v2, -0x1

    :goto_66
    packed-switch v2, :pswitch_data_a6

    return-object v0

    .line 264
    :pswitch_6a
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 262
    :pswitch_6f
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 259
    :pswitch_74
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 256
    :pswitch_79
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 254
    :pswitch_7e
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_84
    .sparse-switch
        0x2ddf23 -> :sswitch_5c
        0x2ddf24 -> :sswitch_52
        0x2f3cdb -> :sswitch_48
        0x2f3d0f -> :sswitch_3e
        0x30d038 -> :sswitch_34
        0x310dbc -> :sswitch_2a
        0x333790 -> :sswitch_20
        0x374e43 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_74
        :pswitch_6f
        :pswitch_6f
        :pswitch_6a
    .end packed-switch
.end method

.method private static getCodecSupportedType(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "name",
            "secureDecodersExplicit",
            "requestedMimeType"
        }
    .end annotation

    .line 374
    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    const-string p2, "video/dolby-vision"

    .line 375
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const-string p2, "OMX.MS.HEVCDV.Decoder"

    .line 378
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_19
    const-string p2, "OMX.RTK.video.decoder"

    .line 380
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    const-string p2, "OMX.realtek.video.decoder.tunneled"

    .line 381
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    :cond_29
    const-string p0, "video/dv_hevc"

    return-object p0

    .line 386
    :cond_2c
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 387
    array-length p1, p0

    const/4 p2, 0x0

    :goto_32
    if-ge p2, p1, :cond_40

    aget-object v0, p0, p2

    .line 388
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    return-object v0

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    :cond_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "secure",
            "tunneling"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 147
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 148
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_13

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    :goto_13
    return-object p0
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "secure",
            "tunneling"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 166
    :try_start_3
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 167
    sget-object v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_93

    if-eqz v2, :cond_14

    .line 169
    monitor-exit v0

    return-object v2

    .line 172
    :cond_14
    :try_start_14
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_21

    .line 173
    new-instance v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v2, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZ)V

    goto :goto_26

    .line 174
    :cond_21
    new-instance v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    .line 175
    :goto_26
    invoke-static {v1, v2, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_85

    .line 176
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_85

    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-gt v4, p1, :cond_85

    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-gt p1, v2, :cond_85

    .line 179
    new-instance p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {p1, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    .line 180
    invoke-static {v1, p1, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 181
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_85

    const-string p1, "MediaCodecUtil"

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Assuming: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_85
    invoke-static {p0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 187
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 188
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_14 .. :try_end_91} :catchall_93

    .line 189
    monitor-exit v0

    return-object p0

    :catchall_93
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getDecoderInfosInternal(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "mediaCodecList",
            "requestedMimeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 286
    :try_start_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v6, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 288
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v7

    .line 289
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v8

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v7, :cond_fa

    .line 292
    invoke-interface {v2, v10}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p2

    .line 295
    invoke-static {v0, v11, v8, v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecSupportedType(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_fb

    if-nez v13, :cond_2c

    goto/16 :goto_c1

    .line 300
    :cond_2c
    :try_start_2c
    invoke-virtual {v0, v13}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 302
    invoke-interface {v2, v4, v13, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 305
    invoke-interface {v2, v4, v13, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v15

    .line 307
    iget-boolean v9, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v9, :cond_3e

    if-nez v15, :cond_c1

    :cond_3e
    iget-boolean v9, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v9, :cond_46

    if-nez v14, :cond_46

    goto/16 :goto_c1

    .line 311
    :cond_46
    invoke-interface {v2, v3, v13, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v9

    .line 314
    invoke-interface {v2, v3, v13, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 316
    iget-boolean v15, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v15, :cond_54

    if-nez v14, :cond_c1

    :cond_54
    iget-boolean v14, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v14, :cond_5b

    if-nez v9, :cond_5b

    goto :goto_c1

    .line 319
    :cond_5b
    invoke-static {v11}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->codecNeedsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v14

    if-eqz v8, :cond_68

    .line 320
    iget-boolean v15, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eq v15, v9, :cond_66

    goto :goto_68

    :cond_66
    :goto_66
    const/4 v15, 0x0

    goto :goto_6f

    :cond_68
    :goto_68
    if-nez v8, :cond_77

    iget-boolean v15, v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v15, :cond_77

    goto :goto_66

    .line 323
    :goto_6f
    invoke-static {v11, v6, v0, v14, v15}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 322
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    :cond_77
    const/4 v15, 0x0

    if-nez v8, :cond_c1

    if-eqz v9, :cond_c1

    .line 326
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v15, ".secure"

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x1

    .line 327
    invoke-static {v9, v6, v0, v14, v15}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 326
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_8e} :catch_8f

    return-object v5

    :catch_8f
    move-exception v0

    .line 337
    :try_start_90
    sget v9, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_92} :catch_fb

    const/16 v14, 0x17

    const-string v15, "MediaCodecUtil"

    if-gt v9, v14, :cond_c5

    :try_start_98
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c5

    .line 339
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping codec "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (failed to query capabilities)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_18

    .line 343
    :cond_c5
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to query codec "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    throw v0
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_fa} :catch_fb

    :cond_fa
    return-object v5

    :catch_fb
    move-exception v0

    .line 352
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$1;)V

    goto :goto_104

    :goto_103
    throw v1

    :goto_104
    goto :goto_103
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "decoderInfos",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    new-instance p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$0;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/Format;)V

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    return-object v0
.end method

.method private static getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 568
    array-length v0, p1

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_21

    .line 570
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 574
    :cond_21
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_48

    .line 576
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_3f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 579
    :cond_48
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 580
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_70

    const-string p1, "Unknown Dolby Vision profile string: "

    .line 582
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6c

    :cond_67
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6c
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_70
    const/4 p0, 0x2

    .line 585
    aget-object p0, p1, p0

    .line 586
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_97

    const-string p1, "Unknown Dolby Vision level string: "

    .line 588
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_93

    :cond_8e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_93
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 591
    :cond_97
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 595
    array-length v0, p1

    const-string v1, "Ignoring malformed HEVC codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_21

    .line 597
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 601
    :cond_21
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_48

    .line 603
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_3f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 606
    :cond_48
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 608
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_5e

    :cond_55
    const-string v0, "2"

    .line 610
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v4, 0x2

    :goto_5e
    const/4 p0, 0x3

    .line 616
    aget-object p0, p1, p0

    .line 617
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_85

    const-string p1, "Unknown HEVC level string: "

    .line 619
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_81

    :cond_7c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_81
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 622
    :cond_85
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_8f
    const-string p1, "Unknown HEVC profile string: "

    .line 613
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a5

    :cond_a0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a5
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getPassthroughDecoderInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    .line 129
    invoke-static {v0, v1, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    .line 130
    :cond_b
    iget-object v0, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->newPassthroughInstance(Ljava/lang/String;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method private static getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 666
    array-length v0, p1

    const-string v1, "Ignoring malformed VP9 codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_21

    .line 667
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_21
    const/4 v0, 0x1

    .line 673
    :try_start_22
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    .line 674
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2f} :catch_7c

    .line 680
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_4f

    const/16 p0, 0x20

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown VP9 profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 685
    :cond_4f
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_6e

    const/16 p1, 0x1e

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown VP9 level: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 690
    :cond_6e
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_7c
    nop

    .line 676
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_8c

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_91

    :cond_8c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_91
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "name",
            "secureDecodersExplicit",
            "requestedMimeType"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_215

    if-nez p2, :cond_13

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto/16 :goto_215

    .line 413
    :cond_13
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_4a

    const-string p0, "CIPAACDecoder"

    .line 414
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "CIPMP3Decoder"

    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "CIPVorbisDecoder"

    .line 416
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "CIPAMRNBDecoder"

    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "AACDecoder"

    .line 418
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "MP3Decoder"

    .line 419
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    :cond_49
    return v0

    .line 425
    :cond_4a
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p2, 0x12

    if-ge p0, p2, :cond_77

    const-string p0, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "a70"

    .line 427
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string p2, "Xiaomi"

    .line 428
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "HM"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_77

    :cond_76
    return v0

    .line 434
    :cond_77
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p2, 0x10

    if-ne p0, p2, :cond_fe

    const-string p0, "OMX.qcom.audio.decoder.mp3"

    .line 435
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fe

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "dlxu"

    .line 436
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "protou"

    .line 437
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "ville"

    .line 438
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "villeplus"

    .line 439
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "villec2"

    .line 440
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "gee"

    .line 441
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6602"

    .line 442
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6603"

    .line 443
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6606"

    .line 444
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6616"

    .line 445
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "L36h"

    .line 446
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "SO-02E"

    .line 447
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fe

    :cond_fd
    return v0

    .line 452
    :cond_fe
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ne p0, p2, :cond_133

    const-string p0, "OMX.qcom.audio.decoder.aac"

    .line 453
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_133

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1504"

    .line 454
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_132

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1505"

    .line 455
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_132

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1604"

    .line 456
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_132

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1605"

    .line 457
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_133

    :cond_132
    return v0

    .line 462
    :cond_133
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p2, 0x18

    const-string v1, "samsung"

    if-ge p0, p2, :cond_1a4

    const-string p0, "OMX.SEC.aac.dec"

    .line 463
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14b

    const-string p0, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a4

    :cond_14b
    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 464
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a4

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "zeroflte"

    .line 465
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "zerolte"

    .line 466
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "zenlte"

    .line 467
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "SC-05G"

    .line 468
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "marinelteatt"

    .line 469
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "404SC"

    .line 470
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "SC-04G"

    .line 471
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "SCV31"

    .line 472
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a4

    :cond_1a3
    return v0

    .line 478
    :cond_1a4
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const-string p2, "jflte"

    const/16 v2, 0x13

    if-gt p0, v2, :cond_1ed

    const-string p0, "OMX.SEC.vp8.dec"

    .line 479
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ed

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 480
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ed

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "d2"

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "serrano"

    .line 482
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 483
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "santos"

    .line 484
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "t0"

    .line 485
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1ed

    :cond_1ec
    return v0

    .line 490
    :cond_1ed
    sget p0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-gt p0, v2, :cond_202

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_202

    const-string p0, "OMX.qcom.video.decoder.vp8"

    .line 491
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_202

    return v0

    :cond_202
    const-string p0, "audio/eac3-joc"

    .line 496
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_213

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 497
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_213

    return v0

    :cond_213
    const/4 p0, 0x1

    return p0

    :cond_215
    :goto_215
    return v0
.end method

.method static final synthetic lambda$applyWorkarounds$1$MediaCodecUtil(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)I
    .registers 3

    .line 527
    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_25

    .line 532
    :cond_13
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_23

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, -0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method static final synthetic lambda$applyWorkarounds$2$MediaCodecUtil(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 548
    iget-object p0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static final synthetic lambda$getDecoderInfosSortedByFormatSupport$0$MediaCodecUtil(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 204
    :try_start_0
    invoke-virtual {p1, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p0
    :try_end_4
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, -0x1

    return p0
.end method

.method static final synthetic lambda$sortByScore$3$MediaCodecUtil(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 760
    invoke-interface {p0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public static maxH264DecodableFrameSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 218
    sget v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    const-string v0, "video/avc"

    const/4 v1, 0x0

    .line 221
    invoke-static {v0, v1, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 223
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v1, v2, :cond_25

    aget-object v4, v0, v1

    .line 224
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 228
    :cond_25
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2f

    const v0, 0x54600

    goto :goto_32

    :cond_2f
    const v0, 0x2a300

    :goto_32
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 230
    :cond_36
    sput v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 232
    :cond_38
    sget v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static sortByScore(Ljava/util/List;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "scoreProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 760
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$3;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$3;-><init>(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
