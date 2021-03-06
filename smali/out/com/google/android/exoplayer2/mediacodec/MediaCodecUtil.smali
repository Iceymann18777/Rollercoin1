.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

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
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "^\\D?(\\d+)$"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 93
    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 1068
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    const/4 v2, 0x1

    .line 1117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1069
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/4 v4, 0x2

    .line 1131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1070
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1071
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    const/4 v6, 0x4

    .line 1118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1071
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1072
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v8, 0x8

    .line 1132
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1072
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v10, 0x10

    .line 1119
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1073
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    const/16 v12, 0x20

    .line 1133
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1074
    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1075
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    const/16 v14, 0x40

    .line 1120
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1075
    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    .line 1078
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1080
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1082
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1083
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1084
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x15

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1085
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x16

    const/16 v10, 0x80

    .line 1134
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1085
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1086
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x1e

    const/16 v10, 0x100

    .line 1121
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1086
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x1f

    const/16 v10, 0x200

    .line 1135
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1087
    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1088
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x400

    invoke-virtual {v0, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x28

    const/16 v10, 0x800

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1090
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x29

    const/16 v10, 0x1000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x2a

    const/16 v10, 0x2000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x32

    const/16 v10, 0x4000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x33

    const v10, 0x8000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1094
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x34

    const/high16 v10, 0x10000

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1096
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    .line 1097
    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1098
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1099
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v10, 0x4

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v14, 0x3

    const/16 v12, 0x8

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1101
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0xa

    .line 1102
    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1103
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0xb

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v14, 0x14

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1105
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x15

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1106
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x1e

    const/16 v12, 0x10

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x1f

    const/16 v12, 0x20

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x28

    const/16 v12, 0x40

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x29

    const/16 v12, 0x80

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1110
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x32

    const/16 v12, 0x100

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1111
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x33

    const/16 v12, 0x200

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x3c

    const/16 v12, 0x800

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1113
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x3d

    const/16 v12, 0x1000

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1114
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v10, 0x3e

    const/16 v12, 0x2000

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L30"

    .line 1117
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L60"

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L63"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L90"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "L93"

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x400

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "L120"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x1000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "L123"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x4000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "L150"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x10000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L153"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x40000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L156"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x100000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L180"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x400000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L183"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x1000000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "L186"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H30"

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H60"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H63"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H90"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v10, "H93"

    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x800

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "H120"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/16 v10, 0x2000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "H123"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const v10, 0x8000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v10, "H150"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x20000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H153"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x80000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H156"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x200000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H180"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x800000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H183"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/high16 v10, 0x2000000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "H186"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "00"

    .line 1146
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "01"

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "02"

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "03"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "04"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "05"

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "06"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "07"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "08"

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    const-string v10, "09"

    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v6, "01"

    .line 1158
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "02"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "03"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "04"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "05"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "06"

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "07"

    invoke-interface {v0, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v3, "08"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    const-string v1, "09"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 1171
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    const/16 v5, 0x8

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1176
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1179
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1180
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v3, 0x200

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1181
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x400

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/16 v3, 0x800

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1183
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1184
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1186
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v3, 0x8000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1187
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/high16 v1, 0x10000

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1188
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/high16 v3, 0x20000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const/high16 v3, 0x40000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1190
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/high16 v3, 0x80000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/high16 v1, 0x100000

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1192
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/high16 v1, 0x200000

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1193
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/high16 v3, 0x400000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1194
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/high16 v3, 0x800000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    .line 1197
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1198
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1199
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1200
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1201
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1202
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1203
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1204
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1205
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1206
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1207
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1208
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 534
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_49

    .line 535
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_43

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "R9"

    .line 536
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 537
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_43

    .line 538
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v0, "OMX.google.raw.decoder"

    const-string v1, "audio/raw"

    const-string v2, "audio/raw"

    .line 542
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p0

    .line 541
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_43
    sget-object p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$cCWO-3tN34TxRUMGlkaLU13g9pw;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$cCWO-3tN34TxRUMGlkaLU13g9pw;

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    goto :goto_7a

    .line 569
    :cond_49
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge p0, v2, :cond_7a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_7a

    .line 570
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.SEC.mp3.dec"

    .line 571
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "OMX.SEC.MP3.Decoder"

    .line 572
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "OMX.brcm.audio.mp3.decoder"

    .line 573
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 578
    :cond_75
    sget-object p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .registers 2

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

    .line 654
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2c

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    .line 655
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1a
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 656
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

    .line 879
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "Ignoring malformed MP4A codec string: "

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1c

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1c
    const/4 v0, 0x1

    .line 885
    :try_start_1d
    aget-object v0, p1, v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 886
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio/mp4a-latm"

    .line 887
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x2

    .line 889
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 890
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v4, :cond_62

    .line 893
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_4f} :catch_50

    return-object v0

    .line 897
    :catch_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return-object v1
.end method

.method private static getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 793
    array-length v0, p1

    const-string v1, "Ignoring malformed AV1 codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1c

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1c
    const/4 v0, 0x1

    .line 801
    :try_start_1d
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 802
    aget-object v6, p1, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 803
    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_36} :catch_ad

    if-eqz v4, :cond_4d

    .line 810
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown AV1 profile: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4d
    const/16 p1, 0x8

    if-eq p0, p1, :cond_6a

    const/16 v1, 0xa

    if-eq p0, v1, :cond_6a

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown AV1 bit depth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6a
    if-ne p0, p1, :cond_6d

    goto :goto_81

    :cond_6d
    if-eqz p2, :cond_80

    .line 820
    iget-object p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-nez p0, :cond_7d

    iget p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 p1, 0x7

    if-eq p0, p1, :cond_7d

    iget p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_80

    :cond_7d
    const/16 v0, 0x1000

    goto :goto_81

    :cond_80
    const/4 v0, 0x2

    .line 829
    :goto_81
    sget-object p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AV1_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 p1, -0x1

    invoke-virtual {p0, v6, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p1, :cond_9f

    .line 831
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown AV1 level: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 834
    :cond_9f
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 805
    :catch_ad
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
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

    .line 722
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_1c

    .line 724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1c
    const/4 v0, 0x1

    .line 730
    :try_start_1d
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3f

    .line 732
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 733
    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_50

    .line 734
    :cond_3f
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_99

    .line 736
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 737
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_4f} :catch_ac

    move v2, v0

    .line 748
    :goto_50
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v0, :cond_6e

    .line 750
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown AVC profile: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 753
    :cond_6e
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v0, :cond_8b

    .line 755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown AVC level: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 758
    :cond_8b
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 740
    :cond_99
    :try_start_99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_ab} :catch_ac

    return-object v3

    .line 744
    :catch_ac
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 388
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    .line 392
    :cond_8
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 393
    array-length p2, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p2, :cond_1c

    aget-object v2, p0, v1

    .line 394
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    const-string p0, "video/dolby-vision"

    .line 399
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    .line 402
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_2f
    const-string p0, "OMX.RTK.video.decoder"

    .line 404
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    .line 405
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    :cond_3f
    const-string p0, "video/dv_hevc"

    return-object p0

    :cond_42
    const-string p0, "audio/alac"

    .line 408
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_55
    const-string p0, "audio/flac"

    .line 410
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_68
    return-object v0
.end method

.method public static getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/dolby-vision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 251
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 v2, 0x0

    .line 253
    aget-object v3, v0, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_9a

    goto :goto_70

    :sswitch_2b
    const-string v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x2

    goto :goto_71

    :sswitch_35
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x6

    goto :goto_71

    :sswitch_3f
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x4

    goto :goto_71

    :sswitch_49
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x3

    goto :goto_71

    :sswitch_53
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x1

    goto :goto_71

    :sswitch_5d
    const-string v5, "avc1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    goto :goto_71

    :sswitch_66
    const-string v2, "av01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x5

    goto :goto_71

    :cond_70
    :goto_70
    const/4 v2, -0x1

    :goto_71
    packed-switch v2, :pswitch_data_b8

    return-object v1

    .line 265
    :pswitch_75
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 263
    :pswitch_7c
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v1, v0, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 261
    :pswitch_85
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 258
    :pswitch_8c
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 256
    :pswitch_93
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_data_9a
    .sparse-switch
        0x2dd8f6 -> :sswitch_66
        0x2ddf23 -> :sswitch_5d
        0x2ddf24 -> :sswitch_53
        0x30d038 -> :sswitch_49
        0x310dbc -> :sswitch_3f
        0x333790 -> :sswitch_35
        0x374e43 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_93
        :pswitch_93
        :pswitch_8c
        :pswitch_85
        :pswitch_85
        :pswitch_7c
        :pswitch_75
    .end packed-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 146
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 147
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_13

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    :goto_13
    return-object p0
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 165
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 166
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_80

    if-eqz v2, :cond_14

    .line 168
    monitor-exit v0

    return-object v2

    .line 170
    :cond_14
    :try_start_14
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_21

    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZ)V

    goto :goto_26

    :cond_21
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 174
    :goto_26
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_72

    .line 175
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_72

    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-gt v4, p1, :cond_72

    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-gt p1, v2, :cond_72

    .line 178
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 179
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    .line 180
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_72

    const-string p1, "MediaCodecUtil"

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Assuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_72
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 186
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 187
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_14 .. :try_end_7e} :catchall_80

    .line 188
    monitor-exit v0

    return-object p0

    :catchall_80
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 285
    :try_start_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v15, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 287
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v14

    .line 288
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v13

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v14, :cond_147

    .line 291
    invoke-interface {v2, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 294
    invoke-static {v0, v11, v13, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_148

    if-nez v10, :cond_31

    :cond_29
    :goto_29
    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    goto/16 :goto_119

    .line 299
    :cond_31
    :try_start_31
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 301
    invoke-interface {v2, v4, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 304
    invoke-interface {v2, v4, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 306
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v8, :cond_43

    if-nez v7, :cond_29

    :cond_43
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v7, :cond_4a

    if-nez v6, :cond_4a

    goto :goto_29

    .line 310
    :cond_4a
    invoke-interface {v2, v3, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 313
    invoke-interface {v2, v3, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 315
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v8, :cond_58

    if-nez v7, :cond_29

    :cond_58
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v7, :cond_5f

    if-nez v6, :cond_5f

    goto :goto_29

    .line 318
    :cond_5f
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z

    move-result v16

    .line 319
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v17

    .line 320
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isVendor(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    .line 321
    invoke-static {v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->codecNeedsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v18

    if-eqz v13, :cond_75

    .line 322
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_73} :catch_e8

    if-eq v7, v6, :cond_7b

    :cond_75
    if-nez v13, :cond_ab

    :try_start_77
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_79} :catch_a0

    if-nez v7, :cond_ab

    :cond_7b
    const/16 v19, 0x0

    move-object v6, v11

    move-object v7, v15

    move-object v8, v10

    move-object/from16 v20, v10

    move/from16 v10, v16

    move-object/from16 v21, v11

    move/from16 v11, v17

    move/from16 v22, v12

    move v12, v0

    move/from16 v23, v13

    move/from16 v13, v18

    move/from16 v24, v14

    move/from16 v14, v19

    .line 325
    :try_start_93
    invoke-static/range {v6 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 324
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_119

    :catch_9c
    move-exception v0

    move-object/from16 v1, v21

    goto :goto_f2

    :catch_a0
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move-object v1, v11

    goto :goto_f2

    :cond_ab
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    if-nez v23, :cond_119

    if-eqz v6, :cond_119

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_be} :catch_9c

    move-object/from16 v14, v21

    :try_start_c0
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".secure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cc} :catch_e5

    const/16 v19, 0x1

    move-object v7, v15

    move-object/from16 v8, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v0

    move/from16 v13, v18

    move-object v1, v14

    move/from16 v14, v19

    .line 337
    :try_start_db
    invoke-static/range {v6 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 336
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e2} :catch_e3

    return-object v5

    :catch_e3
    move-exception v0

    goto :goto_f2

    :catch_e5
    move-exception v0

    move-object v1, v14

    goto :goto_f2

    :catch_e8
    move-exception v0

    move-object/from16 v20, v10

    move-object v1, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    .line 351
    :goto_f2
    :try_start_f2
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f4} :catch_148

    const/16 v7, 0x17

    const-string v8, "MediaCodecUtil"

    if-gt v6, v7, :cond_123

    :try_start_fa
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_123

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping codec "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    :goto_119
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v1, p0

    move/from16 v13, v23

    move/from16 v14, v24

    goto/16 :goto_19

    .line 357
    :cond_123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    throw v0
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_147} :catch_148

    :cond_147
    return-object v5

    :catch_148
    move-exception v0

    .line 366
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    goto :goto_151

    :goto_150
    throw v1

    :goto_151
    goto :goto_150
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$DM_fEJX1iZ51J6IPGblMN7NcC5Y;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$DM_fEJX1iZ51J6IPGblMN7NcC5Y;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    return-object v0
.end method

.method private static getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
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

    .line 662
    array-length v0, p1

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1c

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 668
    :cond_1c
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 673
    :cond_3e
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 674
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_PROFILE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_61

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Dolby Vision profile string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_61
    const/4 p0, 0x2

    .line 679
    aget-object p0, p1, p0

    .line 680
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->DOLBY_VISION_STRING_TO_LEVEL:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_83

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Dolby Vision level string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 685
    :cond_83
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
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

    .line 690
    array-length v0, p1

    const-string v1, "Ignoring malformed HEVC codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1c

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 696
    :cond_1c
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 701
    :cond_3e
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 703
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_54

    :cond_4b
    const-string v0, "2"

    .line 705
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const/4 v4, 0x2

    :goto_54
    const/4 p0, 0x3

    .line 711
    aget-object p0, p1, p0

    .line 712
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_76

    .line 714
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown HEVC level string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 717
    :cond_76
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 708
    :cond_80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown HEVC profile string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    .line 129
    :cond_b
    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newPassthroughInstance(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method private static getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
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

    .line 763
    array-length v0, p1

    const-string v1, "Ignoring malformed VP9 codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1c

    .line 764
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1c
    const/4 v0, 0x1

    .line 770
    :try_start_1d
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    .line 771
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_2a} :catch_73

    .line 777
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_48

    .line 779
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown VP9 profile: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 782
    :cond_48
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->VP9_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_65

    .line 784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown VP9 level: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 787
    :cond_65
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 773
    :catch_73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 7

    .line 431
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

    .line 436
    :cond_13
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_4a

    const-string p0, "CIPAACDecoder"

    .line 437
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "CIPMP3Decoder"

    .line 438
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "CIPVorbisDecoder"

    .line 439
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "CIPAMRNBDecoder"

    .line 440
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "AACDecoder"

    .line 441
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "MP3Decoder"

    .line 442
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    :cond_49
    return v0

    .line 448
    :cond_4a
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x12

    if-ge p0, p2, :cond_77

    const-string p0, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 449
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "a70"

    .line 450
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string p2, "Xiaomi"

    .line 451
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "HM"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_77

    :cond_76
    return v0

    .line 457
    :cond_77
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x10

    if-ne p0, p2, :cond_fe

    const-string p0, "OMX.qcom.audio.decoder.mp3"

    .line 458
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fe

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "dlxu"

    .line 459
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "protou"

    .line 460
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "ville"

    .line 461
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "villeplus"

    .line 462
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "villec2"

    .line 463
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "gee"

    .line 464
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6602"

    .line 465
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6603"

    .line 466
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6606"

    .line 467
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C6616"

    .line 468
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "L36h"

    .line 469
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "SO-02E"

    .line 470
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fe

    :cond_fd
    return v0

    .line 475
    :cond_fe
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ne p0, p2, :cond_133

    const-string p0, "OMX.qcom.audio.decoder.aac"

    .line 476
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_133

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1504"

    .line 477
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_132

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1505"

    .line 478
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_132

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1604"

    .line 479
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_132

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "C1605"

    .line 480
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_133

    :cond_132
    return v0

    .line 485
    :cond_133
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x18

    const-string v1, "samsung"

    if-ge p0, p2, :cond_1a4

    const-string p0, "OMX.SEC.aac.dec"

    .line 486
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14b

    const-string p0, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a4

    :cond_14b
    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 487
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a4

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "zeroflte"

    .line 488
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "zerolte"

    .line 489
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "zenlte"

    .line 490
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "SC-05G"

    .line 491
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "marinelteatt"

    .line 492
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "404SC"

    .line 493
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "SC-04G"

    .line 494
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a3

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string p2, "SCV31"

    .line 495
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a4

    :cond_1a3
    return v0

    .line 501
    :cond_1a4
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const-string p2, "jflte"

    const/16 v2, 0x13

    if-gt p0, v2, :cond_1ed

    const-string p0, "OMX.SEC.vp8.dec"

    .line 502
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ed

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 503
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ed

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "d2"

    .line 504
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "serrano"

    .line 505
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 506
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "santos"

    .line 507
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ec

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "t0"

    .line 508
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1ed

    :cond_1ec
    return v0

    .line 513
    :cond_1ed
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-gt p0, v2, :cond_202

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_202

    const-string p0, "OMX.qcom.video.decoder.vp8"

    .line 514
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_202

    return v0

    :cond_202
    const-string p0, "audio/eac3-joc"

    .line 519
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_213

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

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

.method private static isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 588
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 589
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 593
    :cond_b
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 598
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    return p0
.end method

.method private static isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 606
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 607
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 609
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    .line 610
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const-string v0, "omx.google."

    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "omx.ffmpeg."

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "omx.sec."

    .line 615
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    :cond_3d
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 616
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "c2.android."

    .line 617
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "c2.google."

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "omx."

    .line 619
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_66

    :cond_65
    const/4 v1, 0x1

    :cond_66
    return v1
.end method

.method private static isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 624
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0
.end method

.method private static isVendor(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 632
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 633
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isVendorV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 635
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "omx.google."

    .line 636
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "c2.android."

    .line 637
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "c2.google."

    .line 638
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method private static isVendorV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 643
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyWorkarounds$1(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 3

    .line 557
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 558
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_25

    .line 562
    :cond_13
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

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

.method static synthetic lambda$applyWorkarounds$2(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 578
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getDecoderInfosSortedByFormatSupport$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 203
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0
    :try_end_4
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic lambda$sortByScore$3(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 904
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public static maxH264DecodableFrameSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 217
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    const-string v0, "video/avc"

    const/4 v1, 0x0

    .line 221
    invoke-static {v0, v1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 223
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v1, v2, :cond_25

    aget-object v4, v0, v1

    .line 224
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 228
    :cond_25
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

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
    sput v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 232
    :cond_38
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 904
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$w6BjIcrs1D5BowK8PBZdBwa6Apk;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$w6BjIcrs1D5BowK8PBZdBwa6Apk;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
