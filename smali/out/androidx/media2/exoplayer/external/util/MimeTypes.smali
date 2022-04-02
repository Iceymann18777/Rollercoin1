.class public final Landroidx/media2/exoplayer/external/util/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;
    }
.end annotation


# static fields
.field private static final customMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/util/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public static getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecs"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 181
    :cond_4
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 182
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 183
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 184
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method private static getCustomMimeTypeForCodec(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    .line 398
    sget-object v0, Landroidx/media2/exoplayer/external/util/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 400
    sget-object v2, Landroidx/media2/exoplayer/external/util/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;

    .line 401
    iget-object v3, v2, Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;->codecPrefix:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 402
    iget-object p0, v2, Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;->mimeType:Ljava/lang/String;

    return-object p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEncoding(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    sparse-switch v0, :sswitch_data_64

    goto :goto_51

    :sswitch_b
    const-string v0, "audio/true-hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x6

    goto :goto_52

    :sswitch_15
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x5

    goto :goto_52

    :sswitch_1f
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x1

    goto :goto_52

    :sswitch_29
    const-string v0, "audio/ac4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x3

    goto :goto_52

    :sswitch_33
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x0

    goto :goto_52

    :sswitch_3d
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x4

    goto :goto_52

    :sswitch_47
    const-string v0, "audio/eac3-joc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x2

    goto :goto_52

    :cond_51
    :goto_51
    const/4 p0, -0x1

    :goto_52
    packed-switch p0, :pswitch_data_82

    return v1

    :pswitch_56
    const/16 p0, 0xe

    return p0

    :pswitch_59
    const/16 p0, 0x8

    return p0

    :pswitch_5c
    const/4 p0, 0x7

    return p0

    :pswitch_5e
    const/16 p0, 0x11

    return p0

    :pswitch_61
    return v2

    :pswitch_62
    return v3

    nop

    :sswitch_data_64
    .sparse-switch
        -0x7e929daa -> :sswitch_47
        -0x41455b98 -> :sswitch_3d
        0xb269698 -> :sswitch_33
        0xb269699 -> :sswitch_29
        0x59ae0c65 -> :sswitch_1f
        0x59c2dc42 -> :sswitch_15
        0x5cc95062 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_62
        :pswitch_61
        :pswitch_61
        :pswitch_5e
        :pswitch_5c
        :pswitch_59
        :pswitch_56
    .end packed-switch
.end method

.method public static getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 201
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "avc1"

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15a

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_15a

    :cond_1e
    const-string v1, "hev1"

    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_157

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_157

    :cond_30
    const-string v1, "dvav"

    .line 206
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_154

    const-string v1, "dva1"

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_154

    const-string v1, "dvhe"

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_154

    const-string v1, "dvh1"

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto/16 :goto_154

    :cond_52
    const-string v1, "av01"

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string p0, "video/av01"

    return-object p0

    :cond_5d
    const-string v1, "vp9"

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_151

    const-string v1, "vp09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    goto/16 :goto_151

    :cond_6f
    const-string v1, "vp8"

    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14e

    const-string v1, "vp08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    goto/16 :goto_14e

    :cond_81
    const-string v1, "mp4a"

    .line 217
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string v1, "mp4a."

    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x5

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_b2

    const/4 v1, 0x0

    .line 223
    :try_start_9e
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    .line 224
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 225
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_b0} :catch_b1

    goto :goto_b2

    :catch_b1
    nop

    :cond_b2
    :goto_b2
    if-nez v0, :cond_b6

    const-string v0, "audio/mp4a-latm"

    :cond_b6
    return-object v0

    :cond_b7
    const-string v0, "ac-3"

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14b

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    goto/16 :goto_14b

    :cond_c9
    const-string v0, "ec-3"

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    goto/16 :goto_148

    :cond_db
    const-string v0, "ec+3"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_e6
    const-string v0, "ac-4"

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_145

    const-string v0, "dac4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    goto :goto_145

    :cond_f7
    const-string v0, "dtsc"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_142

    const-string v0, "dtse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    goto :goto_142

    :cond_108
    const-string v0, "dtsh"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13f

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_119

    goto :goto_13f

    :cond_119
    const-string v0, "opus"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_124

    const-string p0, "audio/opus"

    return-object p0

    :cond_124
    const-string v0, "vorbis"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const-string p0, "audio/vorbis"

    return-object p0

    :cond_12f
    const-string v0, "flac"

    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    const-string p0, "audio/flac"

    return-object p0

    .line 251
    :cond_13a
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getCustomMimeTypeForCodec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13f
    :goto_13f
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :cond_142
    :goto_142
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_145
    :goto_145
    const-string p0, "audio/ac4"

    return-object p0

    :cond_148
    :goto_148
    const-string p0, "audio/eac3"

    return-object p0

    :cond_14b
    :goto_14b
    const-string p0, "audio/ac3"

    return-object p0

    :cond_14e
    :goto_14e
    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    :cond_151
    :goto_151
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_154
    :goto_154
    const-string p0, "video/dolby-vision"

    return-object p0

    :cond_157
    :goto_157
    const-string p0, "video/hevc"

    return-object p0

    :cond_15a
    :goto_15a
    const-string p0, "video/avc"

    return-object p0
.end method

.method public static getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectType"
        }
    .end annotation

    const/16 v0, 0x20

    if-eq p0, v0, :cond_52

    const/16 v0, 0x21

    if-eq p0, v0, :cond_4f

    const/16 v0, 0x23

    if-eq p0, v0, :cond_4c

    const/16 v0, 0x40

    if-eq p0, v0, :cond_49

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_46

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_43

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_40

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_3d

    packed-switch p0, :pswitch_data_56

    packed-switch p0, :pswitch_data_72

    const/4 p0, 0x0

    return-object p0

    :pswitch_28
    const-string p0, "audio/ac4"

    return-object p0

    :pswitch_2b
    const-string p0, "audio/opus"

    return-object p0

    :pswitch_2e
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :pswitch_31
    const-string p0, "audio/vnd.dts"

    return-object p0

    :pswitch_34
    const-string p0, "video/mpeg"

    return-object p0

    :pswitch_37
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_3a
    const-string p0, "video/mpeg2"

    return-object p0

    :cond_3d
    const-string p0, "audio/eac3"

    return-object p0

    :cond_40
    const-string p0, "audio/ac3"

    return-object p0

    :cond_43
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_46
    const-string p0, "video/wvc1"

    return-object p0

    :cond_49
    :pswitch_49
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_4c
    const-string p0, "video/hevc"

    return-object p0

    :cond_4f
    const-string p0, "video/avc"

    return-object p0

    :cond_52
    const-string p0, "video/mp4v-es"

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x60
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_37
        :pswitch_34
        :pswitch_37
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0xa9
        :pswitch_31
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method private static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x2f

    .line 390
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    return-object v0

    :cond_e
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackType(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 320
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 322
    :cond_8
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 324
    :cond_10
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x2

    return p0

    .line 326
    :cond_18
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/cea-708"

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/x-subrip"

    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/x-quicktime-tx3g"

    .line 329
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/x-rawcc"

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/vobsub"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/pgs"

    .line 331
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "application/dvbsubs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_a1

    :cond_77
    const-string v0, "application/id3"

    .line 333
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string v0, "application/x-emsg"

    .line 334
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string v0, "application/x-scte35"

    .line 335
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_9f

    :cond_90
    const-string v0, "application/x-camera-motion"

    .line 337
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 p0, 0x5

    return p0

    .line 340
    :cond_9a
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackTypeForCustomMimeType(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_9f
    :goto_9f
    const/4 p0, 0x4

    return p0

    :cond_a1
    :goto_a1
    const/4 p0, 0x3

    return p0
.end method

.method private static getTrackTypeForCustomMimeType(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 409
    sget-object v0, Landroidx/media2/exoplayer/external/util/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 411
    sget-object v2, Landroidx/media2/exoplayer/external/util/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;

    .line 412
    iget-object v3, v2, Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 413
    iget p0, v2, Landroidx/media2/exoplayer/external/util/MimeTypes$CustomMimeType;->trackType:I

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public static getTrackTypeOfCodec(Ljava/lang/String;)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    .line 379
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecs"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 161
    :cond_4
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 162
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 163
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 164
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isText(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 143
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 138
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
