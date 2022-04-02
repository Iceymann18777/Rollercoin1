.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field private static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;


# instance fields
.field private final masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 117
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 120
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 122
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 124
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 125
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 127
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 128
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 130
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 132
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 135
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 136
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 137
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 140
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 155
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 157
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 158
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 159
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 160
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 162
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 164
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 165
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 167
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 168
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 169
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 170
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 172
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 174
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 183
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->EMPTY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "masterPlaylist"
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    return-void
.end method

.method private static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_20

    .line 237
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_1f

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_1a

    goto :goto_1f

    .line 241
    :cond_1a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_20

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    const/4 v2, 0x1

    .line 243
    invoke-static {p0, v2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_39

    const-string v4, "#EXTM3U"

    .line 246
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_32

    return v1

    .line 249
    :cond_32
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 251
    :cond_39
    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result p0

    .line 252
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->isLinebreak(I)Z

    move-result p0

    return p0
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    .line 929
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "NO"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "YES"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variants",
            "groupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 544
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 545
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variants",
            "groupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 553
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 554
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 555
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseChannelsAttribute(Ljava/lang/String;Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "variableDefinitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 826
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string p1, "/"

    .line 828
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, -0x1

    :goto_17
    return p0
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 870
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "keyFormat",
            "variableDefinitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 836
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 837
    invoke-static {p0, v0, v1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 838
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_2f

    .line 839
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 840
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 843
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_2f
    const-string v2, "com.widevine"

    .line 844
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 845
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    invoke-direct {p1, p2, v0, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_45
    const-string v2, "com.microsoft.playready"

    .line 846
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 847
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 848
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 849
    sget-object p1, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 850
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-direct {p1, p2, v5, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_73
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const-string v0, "SAMPLE-AES-CENC"

    .line 856
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_14

    :cond_11
    const-string p0, "cbcs"

    goto :goto_16

    :cond_14
    :goto_14
    const-string p0, "cenc"

    :goto_16
    return-object p0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 862
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 866
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static parseMasterPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .registers 41
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "baseUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 281
    :goto_36
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, -0x1

    if-eqz v15, :cond_1c1

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v15

    const-string v9, "#EXT"

    .line 284
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 286
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    const-string v9, "#EXT-X-DEFINE"

    .line 289
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 290
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 291
    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 292
    invoke-static {v15, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 290
    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_66
    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v21, v12

    move/from16 v19, v13

    goto/16 :goto_1b7

    :cond_70
    const-string v9, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 293
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    const/4 v13, 0x1

    goto :goto_36

    :cond_7a
    const-string v9, "#EXT-X-MEDIA"

    .line 295
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 298
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_86
    const-string v9, "#EXT-X-SESSION-KEY"

    .line 299
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 300
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v10, "identity"

    .line 301
    invoke-static {v15, v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 302
    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v9

    if-eqz v9, :cond_ba

    .line 304
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v15, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 305
    invoke-static {v10}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 306
    new-instance v15, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v20, v7

    move/from16 v19, v13

    const/4 v13, 0x1

    new-array v7, v13, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v13, 0x0

    aput-object v9, v7, v13

    invoke-direct {v15, v10, v7}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b3

    :cond_ba
    move-object/from16 v20, v7

    move/from16 v19, v13

    goto/16 :goto_1b3

    :cond_c0
    move-object/from16 v20, v7

    move/from16 v19, v13

    const-string v7, "#EXT-X-STREAM-INF"

    .line 308
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    const-string v7, "CLOSED-CAPTIONS=NONE"

    .line 309
    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v14, v7

    .line 310
    sget-object v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v15, v7}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v7

    .line 311
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 312
    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e5

    .line 315
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 317
    :cond_e5
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v25

    .line 318
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 319
    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_115

    const-string v10, "x"

    .line 323
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 324
    aget-object v13, v9, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v13, 0x1

    .line 325
    aget-object v9, v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v10, :cond_10f

    if-gtz v9, :cond_10c

    goto :goto_10f

    :cond_10c
    move/from16 v17, v10

    goto :goto_110

    :cond_10f
    :goto_10f
    const/4 v9, -0x1

    :goto_110
    move/from16 v28, v9

    move/from16 v27, v17

    goto :goto_119

    :cond_115
    const/16 v27, -0x1

    const/16 v28, -0x1

    .line 336
    :goto_119
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 337
    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_128

    .line 339
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v29, v16

    goto :goto_12a

    :cond_128
    const/high16 v29, -0x40800000    # -1.0f

    .line 341
    :goto_12a
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    invoke-static {v15, v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 342
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    invoke-static {v15, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 343
    sget-object v13, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 344
    invoke-static {v15, v13, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    move/from16 v37, v14

    .line 345
    sget-object v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 346
    invoke-static {v15, v14, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v15

    .line 348
    invoke-static {v15, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 350
    invoke-static {v1, v15}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v23, "application/x-mpegURL"

    move/from16 v26, v7

    .line 352
    invoke-static/range {v21 .. v32}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v32

    move-object/from16 v21, v12

    .line 365
    new-instance v12, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-object/from16 v30, v12

    move-object/from16 v31, v15

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    invoke-direct/range {v30 .. v36}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_190

    .line 371
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_190
    new-instance v15, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;

    move-object/from16 v22, v8

    int-to-long v7, v7

    move-object/from16 v30, v15

    move-wide/from16 v31, v7

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    invoke-direct/range {v30 .. v36}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    move/from16 v14, v37

    goto/16 :goto_36

    :cond_1b3
    :goto_1b3
    move-object/from16 v22, v8

    move-object/from16 v21, v12

    :goto_1b7
    move/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    goto/16 :goto_36

    :cond_1c1
    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v21, v12

    move/from16 v19, v13

    .line 381
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 382
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    .line 383
    :goto_1d4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ge v13, v9, :cond_22a

    .line 384
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 385
    iget-object v12, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21f

    .line 386
    iget-object v12, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v12, :cond_1f1

    const/4 v12, 0x1

    goto :goto_1f2

    :cond_1f1
    const/4 v12, 0x0

    :goto_1f2
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 387
    new-instance v12, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    iget-object v15, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    .line 389
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-direct {v12, v10, v10, v15}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 390
    iget-object v10, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    new-instance v15, Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v23, v0

    move-object/from16 p0, v8

    const/4 v0, 0x1

    new-array v8, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v0, 0x0

    aput-object v12, v8, v0

    invoke-direct {v15, v8}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 392
    invoke-virtual {v10, v15}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 391
    invoke-virtual {v9, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->copyWithFormat(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-result-object v0

    .line 390
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_223

    :cond_21f
    move-object/from16 v23, v0

    move-object/from16 p0, v8

    :goto_223
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v0, v23

    goto :goto_1d4

    :cond_22a
    move-object v0, v10

    move-object v8, v0

    const/4 v13, 0x0

    .line 396
    :goto_22d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v13, v9, :cond_3f7

    .line 397
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 398
    sget-object v12, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    invoke-static {v9, v12, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 399
    sget-object v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v9, v15, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 400
    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v9, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_24f

    const/4 v10, 0x0

    goto :goto_253

    .line 401
    :cond_24f
    invoke-static {v1, v10}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 402
    :goto_253
    sget-object v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    invoke-static {v9, v1, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v34

    .line 403
    invoke-static {v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v33

    .line 404
    invoke-static {v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I

    move-result v1

    .line 405
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v18, 0x1

    add-int/lit8 v23, v23, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v35, v3

    add-int v3, v23, v24

    move-object/from16 v36, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 407
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v37, v7

    const/4 v8, 0x1

    new-array v7, v8, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    new-instance v8, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    move/from16 v38, v14

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-direct {v8, v12, v15, v14}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v14, 0x0

    aput-object v8, v7, v14

    invoke-direct {v3, v7}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 409
    sget-object v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v9, v7, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v14, 0x2

    sparse-switch v8, :sswitch_data_41a

    goto :goto_2de

    :sswitch_2b6
    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2de

    const/4 v7, 0x0

    goto :goto_2df

    :sswitch_2c0
    const-string v8, "AUDIO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2de

    const/4 v7, 0x1

    goto :goto_2df

    :sswitch_2ca
    const-string v8, "CLOSED-CAPTIONS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2de

    const/4 v7, 0x3

    goto :goto_2df

    :sswitch_2d4
    const-string v8, "SUBTITLES"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2de

    const/4 v7, 0x2

    goto :goto_2df

    :cond_2de
    :goto_2de
    const/4 v7, -0x1

    :goto_2df
    if-eqz v7, :cond_39a

    const/4 v8, 0x1

    if-eq v7, v8, :cond_353

    if-eq v7, v14, :cond_331

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2eb

    goto/16 :goto_3e8

    .line 490
    :cond_2eb
    sget-object v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v9, v3, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CC"

    .line 493
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_304

    .line 495
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "application/cea-608"

    goto :goto_30f

    :cond_304
    const/4 v7, 0x7

    .line 498
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "application/cea-708"

    :goto_30f
    move/from16 v32, v3

    move-object/from16 v26, v7

    if-nez v0, :cond_31a

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_31a
    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object/from16 v24, v15

    move/from16 v29, v33

    move/from16 v30, v1

    move-object/from16 v31, v34

    .line 504
    invoke-static/range {v23 .. v32}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    :cond_331
    const/16 v27, 0x0

    const/16 v28, -0x1

    const-string v25, "application/x-mpegURL"

    const-string v26, "text/vtt"

    move-object/from16 v24, v15

    move/from16 v29, v33

    move/from16 v30, v1

    move-object/from16 v31, v34

    .line 476
    invoke-static/range {v23 .. v31}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 487
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    invoke-direct {v3, v10, v1, v12, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e8

    .line 446
    :cond_353
    invoke-static {v2, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-result-object v7

    if-eqz v7, :cond_365

    .line 449
    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v7

    goto :goto_368

    :cond_365
    const/4 v8, 0x1

    const/16 v27, 0x0

    :goto_368
    if-eqz v27, :cond_371

    .line 451
    invoke-static/range {v27 .. v27}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v26, v7

    goto :goto_373

    :cond_371
    const/16 v26, 0x0

    .line 452
    :goto_373
    invoke-static {v9, v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseChannelsAttribute(Ljava/lang/String;Ljava/util/Map;)I

    move-result v29

    const/16 v28, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const-string v25, "application/x-mpegURL"

    move-object/from16 v24, v15

    move/from16 v32, v33

    move/from16 v33, v1

    .line 454
    invoke-static/range {v23 .. v34}, Landroidx/media2/exoplayer/external/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    if-nez v10, :cond_38d

    move-object v8, v1

    goto :goto_3ea

    .line 471
    :cond_38d
    new-instance v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-direct {v7, v10, v1, v12, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e8

    :cond_39a
    const/4 v8, 0x1

    .line 411
    invoke-static {v2, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    move-result-object v7

    if-eqz v7, :cond_3b8

    .line 417
    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    .line 418
    iget-object v9, v7, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v9, v14}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 419
    iget v14, v7, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 420
    iget v8, v7, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 421
    iget v7, v7, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v31, v7

    move/from16 v30, v8

    move-object/from16 v27, v9

    move/from16 v29, v14

    goto :goto_3c0

    :cond_3b8
    const/16 v27, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    :goto_3c0
    if-eqz v27, :cond_3c9

    .line 423
    invoke-static/range {v27 .. v27}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v26, v7

    goto :goto_3cb

    :cond_3c9
    const/16 v26, 0x0

    :goto_3cb
    const/16 v28, -0x1

    const/16 v32, 0x0

    const-string v25, "application/x-mpegURL"

    move-object/from16 v24, v15

    move/from16 v34, v1

    .line 425
    invoke-static/range {v23 .. v34}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 438
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    if-nez v10, :cond_3e0

    goto :goto_3e8

    .line 442
    :cond_3e0
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    invoke-direct {v3, v10, v1, v12, v15}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e8
    move-object/from16 v8, v36

    :goto_3ea
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v35

    move-object/from16 v7, v37

    move/from16 v14, v38

    const/4 v10, 0x0

    goto/16 :goto_22d

    :cond_3f7
    move-object/from16 v37, v7

    move-object/from16 v36, v8

    move/from16 v38, v14

    if-eqz v38, :cond_403

    .line 524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_403
    move-object v9, v0

    .line 527
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v37

    move-object/from16 v7, v20

    move-object/from16 v8, v36

    move/from16 v10, v19

    move-object/from16 v12, v21

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    nop

    :sswitch_data_41a
    .sparse-switch
        -0x392db8c5 -> :sswitch_2d4
        -0x13dc6572 -> :sswitch_2ca
        0x3bba3b6 -> :sswitch_2c0
        0x4de1c5b -> :sswitch_2b6
    .end sparse-switch
.end method

.method private static parseMediaPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .registers 63
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "masterPlaylist",
            "iterator",
            "baseUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 569
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->hasIndependentSegments:Z

    .line 572
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 573
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 574
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 591
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-string v7, ""

    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v26, v1

    move-wide/from16 v16, v4

    move-wide/from16 v24, v16

    move-object/from16 v37, v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, -0x1

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    :goto_4b
    const-wide/16 v53, 0x0

    .line 596
    :cond_4d
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_32b

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v8

    const-string v9, "#EXT"

    .line 599
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 601
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    const-string v9, "#EXT-X-PLAYLIST-TYPE"

    .line 604
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 605
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "VOD"

    .line 606
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    const/4 v4, 0x1

    goto :goto_4d

    :cond_7a
    const-string v9, "EVENT"

    .line 608
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    const/4 v4, 0x2

    goto :goto_4d

    :cond_84
    const-string v9, "#EXT-X-START"

    .line 611
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-wide v31, 0x412e848000000000L    # 1000000.0

    if-eqz v9, :cond_9d

    .line 612
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v8

    mul-double v8, v8, v31

    double-to-long v8, v8

    move-wide/from16 v16, v8

    goto :goto_4d

    :cond_9d
    const-string v9, "#EXT-X-MAP"

    .line 613
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "@"

    if-eqz v9, :cond_f2

    .line 614
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 615
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v8, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_cd

    .line 617
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 618
    aget-object v10, v8, v13

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 619
    array-length v13, v8

    if-le v13, v14, :cond_c8

    .line 620
    aget-object v8, v8, v14

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    :cond_c8
    move-wide/from16 v33, v10

    move-wide/from16 v31, v29

    goto :goto_d1

    :cond_cd
    move-wide/from16 v31, v29

    move-wide/from16 v33, v47

    :goto_d1
    if-eqz v5, :cond_de

    if-eqz v46, :cond_d6

    goto :goto_de

    .line 625
    :cond_d6
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_de
    :goto_de
    new-instance v52, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v29, v52

    move-object/from16 v30, v9

    move-object/from16 v35, v5

    move-object/from16 v36, v46

    invoke-direct/range {v29 .. v36}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v47, -0x1

    goto/16 :goto_4d

    :cond_f2
    const-string v9, "#EXT-X-TARGETDURATION"

    .line 638
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_109

    .line 639
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xf4240

    mul-long v24, v8, v10

    :cond_106
    :goto_106
    const/4 v13, 0x0

    goto/16 :goto_4d

    :cond_109
    const-string v9, "#EXT-X-MEDIA-SEQUENCE"

    .line 640
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11a

    .line 641
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v38

    move-wide/from16 v21, v38

    goto :goto_106

    :cond_11a
    const-string v9, "#EXT-X-VERSION"

    .line 643
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_129

    .line 644
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v23

    goto :goto_106

    :cond_129
    const-string v9, "#EXT-X-DEFINE"

    .line 645
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15f

    .line 646
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_147

    .line 648
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_156

    .line 650
    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_156

    .line 655
    :cond_147
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 656
    invoke-static {v8, v9, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 657
    invoke-static {v8, v10, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 655
    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_156
    :goto_156
    move-object/from16 v58, v3

    move-object/from16 v59, v7

    const/4 v0, 0x0

    const-wide/16 v7, -0x1

    goto/16 :goto_321

    :cond_15f
    const-string v9, "#EXTINF"

    .line 659
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_179

    .line 660
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 661
    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v9

    mul-double v9, v9, v31

    double-to-long v9, v9

    .line 662
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    invoke-static {v8, v11, v7, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v37

    move-wide/from16 v53, v9

    goto :goto_106

    :cond_179
    const-string v9, "#EXT-X-KEY"

    .line 663
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1da

    .line 664
    sget-object v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v8, v5, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 665
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v10, "identity"

    .line 666
    invoke-static {v8, v9, v10, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "NONE"

    .line 669
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a1

    .line 670
    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    const/4 v5, 0x0

    const/16 v40, 0x0

    const/16 v46, 0x0

    goto/16 :goto_106

    .line 673
    :cond_1a1
    sget-object v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v8, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 674
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c4

    const-string v9, "AES-128"

    .line 675
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 677
    sget-object v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v8, v5, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v46, v11

    goto/16 :goto_106

    :cond_1bf
    move-object/from16 v46, v11

    const/4 v5, 0x0

    goto/16 :goto_106

    :cond_1c4
    if-nez v12, :cond_1ca

    .line 684
    invoke-static {v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 686
    :cond_1ca
    invoke-static {v8, v9, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v5

    if-eqz v5, :cond_1bf

    .line 689
    invoke-virtual {v3, v9, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v46, v11

    const/4 v5, 0x0

    const/16 v40, 0x0

    goto/16 :goto_106

    :cond_1da
    const-string v9, "#EXT-X-BYTERANGE"

    .line 693
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1fe

    .line 694
    sget-object v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 695
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 696
    aget-object v10, v8, v9

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v47

    .line 697
    array-length v9, v8

    if-le v9, v14, :cond_106

    .line 698
    aget-object v8, v8, v14

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    goto/16 :goto_106

    :cond_1fe
    const-string v9, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 700
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x3a

    if-eqz v9, :cond_218

    .line 702
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v1, 0x1

    goto/16 :goto_106

    :cond_218
    const-string v9, "#EXT-X-DISCONTINUITY"

    .line 703
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_224

    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_106

    :cond_224
    const-string v9, "#EXT-X-PROGRAM-DATE-TIME"

    .line 705
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_247

    const-wide/16 v31, 0x0

    cmp-long v9, v18, v31

    if-nez v9, :cond_156

    .line 708
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v9, v14

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v8

    sub-long v18, v8, v50

    goto/16 :goto_106

    :cond_247
    const-string v9, "#EXT-X-GAP"

    .line 711
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_254

    const/4 v13, 0x0

    const/16 v45, 0x1

    goto/16 :goto_4d

    :cond_254
    const-string v9, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 713
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_261

    const/4 v13, 0x0

    const/16 v26, 0x1

    goto/16 :goto_4d

    :cond_261
    const-string v9, "#EXT-X-ENDLIST"

    .line 715
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26e

    const/4 v13, 0x0

    const/16 v27, 0x1

    goto/16 :goto_4d

    :cond_26e
    const-string v9, "#"

    .line 717
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_156

    if-nez v5, :cond_27a

    const/4 v9, 0x0

    goto :goto_283

    :cond_27a
    if-eqz v46, :cond_27f

    move-object/from16 v9, v46

    goto :goto_283

    .line 724
    :cond_27f
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    :goto_283
    const-wide/16 v10, 0x1

    add-long v10, v38, v10

    const-wide/16 v31, -0x1

    cmp-long v13, v47, v31

    if-nez v13, :cond_290

    const-wide/16 v55, 0x0

    goto :goto_292

    :cond_290
    move-wide/from16 v55, v29

    :goto_292
    if-nez v40, :cond_2d8

    .line 732
    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2d8

    .line 733
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v13

    const/4 v14, 0x0

    new-array v0, v14, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-interface {v13, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 734
    new-instance v13, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v13, v12, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    if-nez v28, :cond_2d2

    .line 736
    array-length v14, v0

    new-array v14, v14, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-object/from16 v58, v3

    move-object/from16 v59, v7

    const/4 v3, 0x0

    .line 737
    :goto_2b6
    array-length v7, v0

    if-ge v3, v7, :cond_2c9

    .line 738
    aget-object v7, v0, v3

    move-object/from16 v29, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v7

    aput-object v7, v14, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v29

    goto :goto_2b6

    :cond_2c9
    const/4 v0, 0x0

    .line 740
    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v3, v12, v14}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    move-object/from16 v28, v3

    goto :goto_2df

    :cond_2d2
    move-object/from16 v58, v3

    move-object/from16 v59, v7

    const/4 v0, 0x0

    goto :goto_2df

    :cond_2d8
    move-object/from16 v58, v3

    move-object/from16 v59, v7

    const/4 v0, 0x0

    move-object/from16 v13, v40

    .line 744
    :goto_2df
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v29, v3

    .line 746
    invoke-static {v8, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v52

    move-object/from16 v32, v37

    move-wide/from16 v33, v53

    move/from16 v35, v49

    move-wide/from16 v36, v50

    move-object/from16 v38, v13

    move-object/from16 v39, v5

    move-object/from16 v40, v9

    move-wide/from16 v41, v55

    move-wide/from16 v43, v47

    invoke-direct/range {v29 .. v45}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 744
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v50, v50, v53

    const-wide/16 v7, -0x1

    cmp-long v3, v47, v7

    if-eqz v3, :cond_30b

    add-long v55, v55, v47

    :cond_30b
    move-wide/from16 v29, v55

    move-object/from16 v0, p0

    move-wide/from16 v47, v7

    move-wide/from16 v38, v10

    move-object/from16 v40, v13

    move-object/from16 v3, v58

    move-object/from16 v7, v59

    move-object/from16 v37, v7

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v45, 0x0

    goto/16 :goto_4b

    :goto_321
    move-object/from16 v0, p0

    move-object/from16 v3, v58

    move-object/from16 v7, v59

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_4d

    .line 768
    :cond_32b
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    const-wide/16 v2, 0x0

    cmp-long v5, v18, v2

    if-eqz v5, :cond_336

    const/16 v57, 0x1

    goto :goto_338

    :cond_336
    const/16 v57, 0x0

    :goto_338
    move-object v3, v0

    move-object/from16 v5, p2

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    move v11, v1

    move/from16 v12, v20

    move-wide/from16 v13, v21

    move-object v1, v15

    move/from16 v15, v23

    move-wide/from16 v16, v24

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v57

    move-object/from16 v21, v28

    move-object/from16 v22, v1

    invoke-direct/range {v3 .. v22}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v0
.end method

.method private static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "pattern",
            "defaultValue"
        }
    .end annotation

    .line 921
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 922
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    .line 923
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    return p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "pattern",
            "defaultValue",
            "variableDefinitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 894
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 895
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 896
    :cond_f
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1c

    if-nez p2, :cond_18

    goto :goto_1c

    .line 898
    :cond_18
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_1c
    :goto_1c
    return-object p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "pattern",
            "variableDefinitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 886
    invoke-static {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "variableDefinitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 803
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 804
    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 805
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    :cond_e
    const-string p1, ","

    .line 808
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "public.accessibility.describes-video"

    .line 810
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/16 v0, 0x200

    :cond_1e
    const-string p1, "public.accessibility.transcribes-spoken-dialog"

    .line 813
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    or-int/lit16 v0, v0, 0x1000

    :cond_28
    const-string p1, "public.accessibility.describes-music-and-sound"

    .line 816
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    or-int/lit16 v0, v0, 0x400

    :cond_32
    const-string p1, "public.easy-to-read"

    .line 819
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    or-int/lit16 v0, v0, 0x2000

    :cond_3c
    return v0
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 789
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 792
    :goto_c
    sget-object v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    or-int/lit8 v0, v0, 0x2

    .line 795
    :cond_16
    sget-object v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    if-eqz p0, :cond_20

    or-int/lit8 v0, v0, 0x4

    :cond_20
    return v0
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "pattern",
            "variableDefinitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 876
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    .line 880
    :cond_7
    new-instance p2, Landroidx/media2/exoplayer/external/ParserException;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Couldn\'t match "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "variableDefinitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 903
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 905
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 906
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    .line 907
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 910
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_b

    .line 915
    :cond_2a
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "skipLinebreaks",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_16

    .line 257
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p1, :cond_11

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Util;->isLinebreak(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 258
    :cond_11
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_16
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 202
    :try_start_f
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 206
    :goto_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_15

    :cond_26
    const-string v2, "#EXT-X-STREAM-INF"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 211
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v1, p2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseMasterPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object p1
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_b0

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :cond_42
    :try_start_42
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "#EXTINF"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "#EXT-X-KEY"

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "#EXT-X-BYTERANGE"

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "#EXT-X-ENDLIST"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_87

    .line 225
    :cond_83
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 221
    :cond_87
    :goto_87
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    new-instance v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v2, p2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 223
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {v1, v2, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1
    :try_end_99
    .catchall {:try_start_42 .. :try_end_99} :catchall_b0

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :cond_9d
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_a8
    :try_start_a8
    new-instance p2, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {p2, v1, p1}, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p2
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception p1

    .line 229
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b6

    :goto_b5
    throw p1

    :goto_b6
    goto :goto_b5
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "uri",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
