.class public final Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 58
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    return-void
.end method

.method private setFromComment(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 113
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    .line 116
    :try_start_d
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 117
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_24

    if-lez p1, :cond_29

    .line 119
    :cond_24
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 120
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_28} :catch_29

    return v0

    :catch_29
    :cond_29
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .registers 3

    .line 134
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public setFromMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    :goto_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 86
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    .line 87
    instance-of v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_26

    .line 88
    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    .line 89
    iget-object v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v2, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 90
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    .line 93
    :cond_26
    instance-of v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;

    if-eqz v3, :cond_47

    .line 94
    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;

    .line 95
    iget-object v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v2, v2, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 97
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4a
    return v0
.end method

.method public setFromXingHeaderValue(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_b

    if-lez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    .line 71
    :cond_b
    :goto_b
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 72
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 p1, 0x1

    return p1
.end method
