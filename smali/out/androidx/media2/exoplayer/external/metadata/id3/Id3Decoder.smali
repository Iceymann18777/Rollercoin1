.class public final Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;,
        Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
    }
.end annotation


# static fields
.field public static final NO_FRAMES_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field private final framePredicate:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    sget-object v0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;-><init>(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framePredicate"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method private static copyOfRangeIfValid([BII)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "from",
            "to"
        }
    .end annotation

    if-gt p2, p1, :cond_5

    .line 803
    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 805
    :cond_5
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static decodeApicFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize",
            "majorVersion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 531
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 533
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 534
    invoke-virtual {p0, v2, v3, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    const-string p0, "image/"

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x2

    if-ne p2, v5, :cond_42

    .line 540
    new-instance p2, Ljava/lang/String;

    const/4 v6, 0x3

    invoke-direct {p2, v2, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    :cond_30
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p2

    :goto_36
    const-string p2, "image/jpg"

    .line 541
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    const-string p0, "image/jpeg"

    :cond_40
    const/4 p2, 0x2

    goto :goto_6d

    .line 545
    :cond_42
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p2

    .line 546
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    .line 547
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_6c

    .line 548
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6d

    :cond_67
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_6c
    move-object p0, v3

    :goto_6d
    add-int/lit8 v3, p2, 0x1

    .line 552
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p2, v5

    .line 555
    invoke-static {v2, p2, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 556
    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, p2

    invoke-direct {v5, v2, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 559
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result p2

    add-int/2addr v4, p2

    .line 560
    invoke-static {v2, v4, p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object p1

    .line 562
    new-instance p2, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    invoke-direct {p2, p0, v5, v3, p1}, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p2
.end method

.method private static decodeBinaryFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize",
            "id"
        }
    .end annotation

    .line 706
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 707
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 709
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;

    invoke-direct {p0, p2, v0}, Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object p0
.end method

.method private static decodeChapterFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize",
            "majorVersion",
            "unsignedIntFrameSizeHack",
            "frameHeaderSize",
            "framePredicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 600
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 601
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 602
    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 604
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 606
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 607
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 608
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const-wide/16 v7, -0x1

    const-wide v9, 0xffffffffL

    cmp-long v11, v2, v9

    if-nez v11, :cond_34

    move-wide v11, v7

    goto :goto_35

    :cond_34
    move-wide v11, v2

    .line 612
    :goto_35
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    cmp-long v13, v2, v9

    if-nez v13, :cond_3f

    move-wide v9, v7

    goto :goto_40

    :cond_3f
    move-wide v9, v2

    .line 617
    :goto_40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 619
    :cond_47
    :goto_47
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v1, :cond_5f

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    .line 620
    invoke-static {v3, p0, v7, v8, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v14

    if-eqz v14, :cond_47

    .line 623
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 627
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 628
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 629
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    move-object v3, v1

    move-wide v7, v11

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V

    return-object v1
.end method

.method private static decodeChapterTOCFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize",
            "majorVersion",
            "unsignedIntFrameSizeHack",
            "frameHeaderSize",
            "framePredicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 640
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 641
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 642
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 644
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 646
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    :goto_27
    and-int/2addr v2, v4

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 650
    :goto_2d
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 651
    new-array v9, v8, [Ljava/lang/String;

    :goto_33
    if-ge v7, v8, :cond_51

    .line 653
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 654
    iget-object v11, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v11, v10}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v11

    .line 655
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    sub-int v14, v11, v10

    invoke-direct {v12, v13, v10, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v12, v9, v7

    add-int/2addr v11, v4

    .line 656
    invoke-virtual {p0, v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 659
    :cond_51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 661
    :cond_58
    :goto_58
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, v1, :cond_70

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 662
    invoke-static {v6, p0, v7, v8, v10}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v11

    if-eqz v11, :cond_58

    .line 665
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 669
    :cond_70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 670
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 671
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    move-object p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v9

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V

    return-object v1
.end method

.method private static decodeCommentFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 572
    :cond_5
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 573
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 576
    invoke-virtual {p0, v4, v5, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 577
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p1, v0

    .line 579
    new-array v0, p1, [B

    .line 580
    invoke-virtual {p0, v0, v5, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 582
    invoke-static {v0, v5, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 583
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 585
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr p0, v3

    .line 586
    invoke-static {v0, p0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v1

    .line 587
    invoke-static {v0, p0, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 589
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    invoke-direct {v0, v6, p1, p0}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "majorVersion",
            "id3Data",
            "unsignedIntFrameSizeHack",
            "frameHeaderSize",
            "framePredicate"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v7, p1

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x3

    if-lt v0, v11, :cond_19

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    move v13, v1

    goto :goto_1a

    :cond_19
    const/4 v13, 0x0

    :goto_1a
    const/4 v14, 0x4

    if-ne v0, v14, :cond_3c

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez p2, :cond_3a

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v2

    :cond_3a
    :goto_3a
    move v15, v1

    goto :goto_48

    :cond_3c
    if-ne v0, v11, :cond_43

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    goto :goto_3a

    .line 298
    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    goto :goto_3a

    :goto_48
    if-lt v0, v11, :cond_50

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    move v6, v1

    goto :goto_51

    :cond_50
    const/4 v6, 0x0

    :goto_51
    const/16 v16, 0x0

    if-nez v8, :cond_67

    if-nez v9, :cond_67

    if-nez v10, :cond_67

    if-nez v13, :cond_67

    if-nez v15, :cond_67

    if-nez v6, :cond_67

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    .line 309
    :cond_67
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int v5, v1, v15

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    const-string v4, "Id3Decoder"

    if-le v5, v1, :cond_82

    const-string v0, "Frame size exceeds remaining tag data"

    .line 311
    invoke-static {v4, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    :cond_82
    if-eqz p4, :cond_9a

    move-object/from16 v1, p4

    move/from16 v2, p0

    move v3, v8

    move-object v12, v4

    move v4, v9

    move v14, v5

    move v5, v10

    move/from16 v18, v6

    move v6, v13

    .line 317
    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 319
    invoke-virtual {v7, v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    :cond_9a
    move-object v12, v4

    move v14, v5

    move/from16 v18, v6

    :cond_9e
    const/4 v1, 0x1

    if-ne v0, v11, :cond_bc

    move/from16 v2, v18

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_a9

    const/4 v3, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v3, 0x0

    :goto_aa
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_b0

    const/4 v4, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v4, 0x0

    :goto_b1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b7

    const/4 v2, 0x1

    goto :goto_b8

    :cond_b7
    const/4 v2, 0x0

    :goto_b8
    move/from16 v17, v3

    const/4 v6, 0x0

    goto :goto_f2

    :cond_bc
    move/from16 v2, v18

    const/4 v3, 0x4

    if-ne v0, v3, :cond_ec

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_c7

    const/4 v3, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v3, 0x0

    :goto_c8
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_ce

    const/4 v4, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v4, 0x0

    :goto_cf
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_d5

    const/4 v5, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v5, 0x0

    :goto_d6
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_dc

    const/4 v6, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v6, 0x0

    :goto_dd
    and-int/2addr v2, v1

    if-eqz v2, :cond_e3

    const/16 v17, 0x1

    goto :goto_e5

    :cond_e3
    const/16 v17, 0x0

    :goto_e5
    move v2, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move v4, v5

    goto :goto_f2

    :cond_ec
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_f2
    if-nez v17, :cond_22f

    if-eqz v4, :cond_f8

    goto/16 :goto_22f

    :cond_f8
    if-eqz v2, :cond_ff

    add-int/lit8 v15, v15, -0x1

    .line 351
    invoke-virtual {v7, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    :cond_ff
    if-eqz v3, :cond_107

    add-int/lit8 v15, v15, -0x4

    const/4 v1, 0x4

    .line 355
    invoke-virtual {v7, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    :cond_107
    if-eqz v6, :cond_10d

    .line 358
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v15

    :cond_10d
    const/16 v1, 0x54

    const/4 v2, 0x2

    const/16 v3, 0x58

    if-ne v8, v1, :cond_122

    if-ne v9, v3, :cond_122

    if-ne v10, v3, :cond_122

    if-eq v0, v2, :cond_11c

    if-ne v13, v3, :cond_122

    .line 365
    :cond_11c
    :try_start_11c
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeTxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_1f2

    :cond_122
    if-ne v8, v1, :cond_131

    .line 367
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v7, v15, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_1f2

    :catchall_12e
    move-exception v0

    goto/16 :goto_22b

    :cond_131
    const/16 v4, 0x57

    if-ne v8, v4, :cond_143

    if-ne v9, v3, :cond_143

    if-ne v10, v3, :cond_143

    if-eq v0, v2, :cond_13d

    if-ne v13, v3, :cond_143

    .line 371
    :cond_13d
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeWxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    move-result-object v1

    goto/16 :goto_1f2

    :cond_143
    if-ne v8, v4, :cond_14f

    .line 373
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v7, v15, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    move-result-object v1

    goto/16 :goto_1f2

    :cond_14f
    const/16 v3, 0x49

    const/16 v4, 0x50

    if-ne v8, v4, :cond_165

    const/16 v5, 0x52

    if-ne v9, v5, :cond_165

    if-ne v10, v3, :cond_165

    const/16 v5, 0x56

    if-ne v13, v5, :cond_165

    .line 376
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodePrivFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    move-result-object v1

    goto/16 :goto_1f2

    :cond_165
    const/16 v5, 0x47

    const/16 v6, 0x4f

    if-ne v8, v5, :cond_17d

    const/16 v5, 0x45

    if-ne v9, v5, :cond_17d

    if-ne v10, v6, :cond_17d

    const/16 v5, 0x42

    if-eq v13, v5, :cond_177

    if-ne v0, v2, :cond_17d

    .line 379
    :cond_177
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeGeobFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;

    move-result-object v1

    goto/16 :goto_1f2

    :cond_17d
    const/16 v5, 0x41

    const/16 v11, 0x43

    if-ne v0, v2, :cond_18a

    if-ne v8, v4, :cond_198

    if-ne v9, v3, :cond_198

    if-ne v10, v11, :cond_198

    goto :goto_192

    :cond_18a
    if-ne v8, v5, :cond_198

    if-ne v9, v4, :cond_198

    if-ne v10, v3, :cond_198

    if-ne v13, v11, :cond_198

    .line 382
    :goto_192
    invoke-static {v7, v15, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeApicFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    move-result-object v1

    goto/16 :goto_1f2

    :cond_198
    const/16 v3, 0x4d

    if-ne v8, v11, :cond_1a9

    if-ne v9, v6, :cond_1a9

    if-ne v10, v3, :cond_1a9

    if-eq v13, v3, :cond_1a4

    if-ne v0, v2, :cond_1a9

    .line 385
    :cond_1a4
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeCommentFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    move-result-object v1

    goto :goto_1f2

    :cond_1a9
    if-ne v8, v11, :cond_1c3

    const/16 v2, 0x48

    if-ne v9, v2, :cond_1c3

    if-ne v10, v5, :cond_1c3

    if-ne v13, v4, :cond_1c3

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 387
    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeChapterFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    move-result-object v1

    goto :goto_1f2

    :cond_1c3
    if-ne v8, v11, :cond_1db

    if-ne v9, v1, :cond_1db

    if-ne v10, v6, :cond_1db

    if-ne v13, v11, :cond_1db

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 390
    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    move-result-object v1

    goto :goto_1f2

    :cond_1db
    if-ne v8, v3, :cond_1ea

    const/16 v2, 0x4c

    if-ne v9, v2, :cond_1ea

    if-ne v10, v2, :cond_1ea

    if-ne v13, v1, :cond_1ea

    .line 393
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeMlltFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    move-result-object v1

    goto :goto_1f2

    .line 395
    :cond_1ea
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-static {v7, v15, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeBinaryFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;

    move-result-object v1

    :goto_1f2
    if-nez v1, :cond_21e

    .line 400
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to decode frame: id="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v12, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11c .. :try_end_21e} :catch_222
    .catchall {:try_start_11c .. :try_end_21e} :catchall_12e

    .line 408
    :cond_21e
    invoke-virtual {v7, v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :catch_222
    :try_start_222
    const-string v0, "Unsupported character encoding"

    .line 405
    invoke-static {v12, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_227
    .catchall {:try_start_222 .. :try_end_227} :catchall_12e

    .line 408
    invoke-virtual {v7, v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    :goto_22b
    invoke-virtual {v7, v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    throw v0

    :cond_22f
    :goto_22f
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    .line 344
    invoke-static {v12, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v7, v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-object v16
.end method

.method private static decodeGeobFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 505
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 507
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 508
    invoke-virtual {p0, v2, v3, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 510
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p0

    .line 511
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v2, v3, p0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 514
    invoke-static {v2, p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 515
    invoke-static {v2, p0, v3, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 517
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 518
    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v5

    .line 520
    invoke-static {v2, v3, v5, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-static {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 523
    invoke-static {v2, v5, p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object p1

    .line 525
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;

    invoke-direct {v0, v4, p0, v1, p1}, Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static decodeHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Id3Decoder"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_11

    const-string p0, "Data too short to be an ID3 tag"

    .line 165
    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 169
    :cond_11
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v3, 0x494433

    if-eq v0, v3, :cond_31

    const/16 p0, 0x3b

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 175
    :cond_31
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v3, 0x1

    .line 176
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 177
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 178
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v0, v6, :cond_55

    and-int/lit8 p0, v4, 0x40

    if-eqz p0, :cond_4c

    const/4 p0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    if-eqz p0, :cond_8b

    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 183
    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_55
    const/4 v6, 0x3

    if-ne v0, v6, :cond_6b

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    if-eqz v1, :cond_8b

    .line 189
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 190
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    add-int/2addr v1, v7

    sub-int/2addr v5, v1

    goto :goto_8b

    :cond_6b
    if-ne v0, v7, :cond_99

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_73

    const/4 v1, 0x1

    goto :goto_74

    :cond_73
    const/4 v1, 0x0

    :goto_74
    if-eqz v1, :cond_80

    .line 196
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/lit8 v2, v1, -0x4

    .line 197
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, v1

    :cond_80
    and-int/lit8 p0, v4, 0x10

    if-eqz p0, :cond_86

    const/4 p0, 0x1

    goto :goto_87

    :cond_86
    const/4 p0, 0x0

    :goto_87
    if-eqz p0, :cond_8b

    add-int/lit8 v5, v5, -0xa

    :cond_8b
    :goto_8b
    if-ge v0, v7, :cond_92

    and-int/lit16 p0, v4, 0x80

    if-eqz p0, :cond_92

    goto :goto_93

    :cond_92
    const/4 v3, 0x0

    .line 211
    :goto_93
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {p0, v0, v3, v5}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    return-object p0

    :cond_99
    const/16 p0, 0x39

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static decodeMlltFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize"
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 677
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 678
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 679
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 680
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 682
    new-instance v5, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>()V

    .line 683
    invoke-virtual {v5, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    add-int/lit8 p1, p1, -0xa

    mul-int/lit8 p1, p1, 0x8

    add-int p0, v0, v4

    .line 686
    div-int/2addr p1, p0

    .line 687
    new-array p0, p1, [I

    .line 688
    new-array v6, p1, [I

    const/4 v7, 0x0

    :goto_28
    if-ge v7, p1, :cond_39

    .line 690
    invoke-virtual {v5, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 691
    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 692
    aput v8, p0, v7

    .line 693
    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 696
    :cond_39
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    move-object v0, p1

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object p1
.end method

.method private static decodePrivFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 490
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 491
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 493
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p0

    .line 494
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 497
    invoke-static {v0, p0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object p0

    .line 499
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    invoke-direct {p1, v2, p0}, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object p1
.end method

.method private static decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "from",
            "to",
            "charsetName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_d

    .line 821
    array-length v0, p0

    if-le p2, v0, :cond_6

    goto :goto_d

    .line 824
    :cond_6
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_d
    :goto_d
    const-string p0, ""

    return-object p0
.end method

.method private static decodeTextInformationFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_5

    return-object v0

    .line 442
    :cond_5
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 443
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 445
    new-array v1, p1, [B

    const/4 v4, 0x0

    .line 446
    invoke-virtual {p0, v1, v4, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 448
    invoke-static {v1, v4, v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 449
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v4, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 451
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {p0, p2, v0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static decodeTxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 419
    :cond_5
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 420
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 422
    new-array v0, p1, [B

    const/4 v3, 0x0

    .line 423
    invoke-virtual {p0, v0, v3, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 425
    invoke-static {v0, v3, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 426
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 428
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr p0, v3

    .line 429
    invoke-static {v0, p0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v1

    .line 430
    invoke-static {v0, p0, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 432
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    const-string v1, "TXXX"

    invoke-direct {v0, v1, p1, p0}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeUrlLinkFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 479
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 480
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 482
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p0

    .line 483
    new-instance p1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 485
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static decodeWxxxFrame(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "frameSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 461
    :cond_5
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 462
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 464
    new-array v0, p1, [B

    const/4 v3, 0x0

    .line 465
    invoke-virtual {p0, v0, v3, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 467
    invoke-static {v0, v3, v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 468
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 470
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v1

    add-int/2addr p0, v1

    .line 471
    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    const-string v2, "ISO-8859-1"

    .line 472
    invoke-static {v0, p0, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 474
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    const-string v1, "WXXX"

    invoke-direct {v0, v1, p1, p0}, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static delimiterLength(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodingByte"
        }
    .end annotation

    if-eqz p0, :cond_8

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x2

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodingByte"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_c
    const-string p0, "UTF-8"

    return-object p0

    :cond_f
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_12
    const-string p0, "UTF-16"

    return-object p0
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "majorVersion",
            "frameId0",
            "frameId1",
            "frameId2",
            "frameId3"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_23

    .line 755
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_46

    .line 756
    :cond_23
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_46
    return-object p0
.end method

.method private static indexOfEos([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "fromIndex",
            "encoding"
        }
    .end annotation

    .line 760
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p1

    if-eqz p2, :cond_23

    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    goto :goto_23

    .line 768
    :cond_a
    :goto_a
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_21

    .line 769
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1a

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1a

    return p1

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    .line 772
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p1

    goto :goto_a

    .line 775
    :cond_21
    array-length p0, p0

    return p0

    :cond_23
    :goto_23
    return p1
.end method

.method private static indexOfZeroByte([BI)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "fromIndex"
        }
    .end annotation

    .line 779
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_b

    .line 780
    aget-byte v0, p0, p1

    if-nez v0, :cond_8

    return p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 784
    :cond_b
    array-length p0, p0

    return p0
.end method

.method static final synthetic lambda$static$0$Id3Decoder(IIIII)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method private static removeUnsynchronization(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "length"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 722
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result p0

    move v1, p0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_27

    .line 724
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_25

    aget-byte v3, v0, v2

    if-nez v3, :cond_25

    sub-int v3, v1, p0

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x2

    .line 726
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_25
    move v1, v2

    goto :goto_7

    :cond_27
    return p1
.end method

.method private static validateFrames(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZ)Z
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id3Data",
            "majorVersion",
            "frameHeaderSize",
            "unsignedIntFrameSizeHack"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 218
    :goto_8
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_ae

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_22

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    goto :goto_2c

    .line 228
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_b2

    int-to-long v8, v8

    const/4 v10, 0x0

    :goto_2c
    const-wide/16 v11, 0x0

    if-nez v7, :cond_3a

    cmp-long v7, v8, v11

    if-nez v7, :cond_3a

    if-nez v10, :cond_3a

    .line 273
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v4

    :cond_3a
    const/4 v7, 0x4

    if-ne v0, v7, :cond_6b

    if-nez p3, :cond_6b

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_4b

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_4b
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_6b
    if-ne v0, v7, :cond_7a

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_73

    const/4 v3, 0x1

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_89

    :goto_78
    const/4 v7, 0x1

    goto :goto_8a

    :cond_7a
    if-ne v0, v3, :cond_88

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_82

    const/4 v3, 0x1

    goto :goto_83

    :cond_82
    const/4 v3, 0x0

    :goto_83
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_89

    goto :goto_78

    :cond_88
    const/4 v3, 0x0

    :cond_89
    const/4 v7, 0x0

    :goto_8a
    if-eqz v3, :cond_8d

    goto :goto_8e

    :cond_8d
    const/4 v4, 0x0

    :goto_8e
    if-eqz v7, :cond_92

    add-int/lit8 v4, v4, 0x4

    :cond_92
    int-to-long v3, v4

    cmp-long v7, v8, v3

    if-gez v7, :cond_9b

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v6

    .line 265
    :cond_9b
    :try_start_9b
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_b2

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_a8

    .line 273
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_a8
    long-to-int v3, v8

    .line 268
    :try_start_a9
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b2

    goto/16 :goto_8

    .line 273
    :cond_ae
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v4

    :catchall_b2
    move-exception v0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_b8

    :goto_b7
    throw v0

    :goto_b8
    goto :goto_b7
.end method


# virtual methods
.method public decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 108
    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public decode([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "size"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    .line 125
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_12

    return-object p2

    .line 130
    :cond_12
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 131
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x6

    goto :goto_21

    :cond_1f
    const/16 v3, 0xa

    .line 132
    :goto_21
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v4

    .line 133
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$200(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 134
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v4

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v4

    :cond_33
    add-int/2addr v2, v4

    .line 136
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 139
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZ)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_6f

    .line 140
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_52

    invoke-static {v1, v4, v3, v5}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIZ)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v4, 0x1

    goto :goto_6f

    .line 143
    :cond_52
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result p1

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Id3Decoder"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 148
    :cond_6f
    :goto_6f
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lt p2, v3, :cond_85

    .line 149
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header;)I

    move-result p2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {p2, v1, v4, v3, v2}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;ZILandroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object p2

    if-eqz p2, :cond_6f

    .line 152
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 156
    :cond_85
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p1
.end method
