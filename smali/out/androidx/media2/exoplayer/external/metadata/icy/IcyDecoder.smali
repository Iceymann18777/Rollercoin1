.class public final Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;
.super Ljava/lang/Object;
.source "IcyDecoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;


# static fields
.field private static final METADATA_ELEMENT:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    .line 42
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 50
    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    const/4 v1, 0x0

    .line 53
    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;->decode(Ljava/lang/String;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method decode(Ljava/lang/String;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .line 62
    sget-object v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    .line 63
    :goto_b
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_6b

    .line 64
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    .line 65
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x12cfba11

    if-eq v8, v9, :cond_39

    const v9, 0x622482d8

    if-eq v8, v9, :cond_2f

    goto :goto_42

    :cond_2f
    const-string v8, "streamtitle"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v7, 0x0

    goto :goto_42

    :cond_39
    const-string v8, "streamurl"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v7, 0x1

    :cond_42
    :goto_42
    if-eqz v7, :cond_65

    if-eq v7, v5, :cond_63

    const-string v2, "Unrecognized ICY tag: "

    .line 74
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    :cond_57
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    :goto_5d
    const-string v5, "IcyDecoder"

    invoke-static {v5, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :cond_63
    move-object v4, v6

    goto :goto_66

    :cond_65
    move-object v3, v6

    .line 77
    :goto_66
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_b

    :cond_6b
    if-nez v3, :cond_6f

    if-eqz v4, :cond_7d

    .line 79
    :cond_6f
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array p1, v5, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    new-instance v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyInfo;

    invoke-direct {v2, v3, v4}, Landroidx/media2/exoplayer/external/metadata/icy/IcyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, p1, v0

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    :cond_7d
    return-object v1
.end method
