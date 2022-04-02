.class final Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;
.super Landroidx/media2/exoplayer/external/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivTimestampStrippingSampleQueue"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocator"
        }
    .end annotation

    .line 1173
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    return-void
.end method

.method private getAdjustedMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;
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

    if-nez p1, :cond_4

    return-object v0

    .line 1190
    :cond_4
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    const/4 v4, -0x1

    if-ge v3, v1, :cond_25

    .line 1193
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v5

    .line 1194
    instance-of v6, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v6, :cond_22

    .line 1195
    check-cast v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    .line 1196
    iget-object v5, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_26

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_25
    const/4 v3, -0x1

    :goto_26
    if-ne v3, v4, :cond_29

    return-object p1

    :cond_29
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2d

    return-object v0

    :cond_2d
    add-int/lit8 v0, v1, -0x1

    .line 1208
    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    :goto_31
    if-ge v2, v1, :cond_44

    if-eq v2, v3, :cond_41

    if-ge v2, v3, :cond_39

    move v4, v2

    goto :goto_3b

    :cond_39
    add-int/lit8 v4, v2, -0x1

    .line 1212
    :goto_3b
    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v5

    aput-object v5, v0, v4

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1215
    :cond_44
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object p1
.end method


# virtual methods
.method public format(Landroidx/media2/exoplayer/external/Format;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1178
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;->getAdjustedMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->format(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
