.class public final Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;
.super Ljava/lang/Object;
.source "WebvttParserUtil.java"


# static fields
.field private static final COMMENT:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^NOTE(( |\t).*)?$"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static findNextCueHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/regex/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 110
    sget-object v1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 112
    :goto_12
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_12

    .line 114
    :cond_1f
    sget-object v1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const-string v0, "WEBVTT"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static parseTimestampUs(Ljava/lang/String;)J
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "\\."

    .line 73
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 74
    aget-object v1, p0, v0

    const-string v2, ":"

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    array-length v2, v1

    const-wide/16 v3, 0x0

    :goto_12
    if-ge v0, v2, :cond_22

    aget-object v5, v1, v0

    const-wide/16 v6, 0x3c

    mul-long v3, v3, v6

    .line 76
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    .line 79
    array-length v2, p0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_32

    const/4 v2, 0x1

    .line 80
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_32
    mul-long v3, v3, v0

    return-wide v3
.end method

.method public static validateWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 48
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 49
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Expected WEBVTT. Got "

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_29
    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method
