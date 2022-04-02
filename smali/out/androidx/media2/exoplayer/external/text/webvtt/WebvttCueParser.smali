.class public final Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# static fields
.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method
