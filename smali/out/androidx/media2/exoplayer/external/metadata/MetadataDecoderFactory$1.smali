.class Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 80
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_5e

    goto :goto_35

    :sswitch_d
    const-string v0, "application/x-scte35"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x2

    goto :goto_36

    :sswitch_17
    const-string v0, "application/x-emsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x1

    goto :goto_36

    :sswitch_21
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    goto :goto_36

    :sswitch_2b
    const-string v0, "application/x-icy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x3

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p1, -0x1

    :goto_36
    if-eqz p1, :cond_58

    if-eq p1, v3, :cond_52

    if-eq p1, v2, :cond_4c

    if-ne p1, v1, :cond_44

    .line 88
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;-><init>()V

    return-object p1

    .line 90
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_4c
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object p1

    .line 84
    :cond_52
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object p1

    .line 82
    :cond_58
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;-><init>()V

    return-object p1

    :sswitch_data_5e
    .sparse-switch
        -0x505c61b5 -> :sswitch_2b
        -0x4a682ec7 -> :sswitch_21
        0x44ce7ed0 -> :sswitch_17
        0x62816bb7 -> :sswitch_d
    .end sparse-switch
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 71
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/id3"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "application/x-emsg"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "application/x-scte35"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "application/x-icy"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    return p1
.end method
