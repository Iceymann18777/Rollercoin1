.class Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# instance fields
.field private final pid:I

.field private final pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

.field private final trackIdToPidScratch:Landroid/util/SparseIntArray;

.field private final trackIdToReaderScratch:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "pid"
        }
    .end annotation

    .line 515
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 517
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 518
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 519
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pid:I

    return-void
.end method

.method private readEsInfo(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;
    .registers 16
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

    .line 647
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v2, v1

    const/4 v3, -0x1

    .line 652
    :goto_9
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    if-ge v4, p2, :cond_b4

    .line 653
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 654
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 655
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0xac

    const/16 v9, 0x87

    const/16 v10, 0x81

    if-ne v4, v5, :cond_4f

    .line 657
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v11, 0x41432d33

    cmp-long v7, v4, v11

    if-nez v7, :cond_33

    goto :goto_53

    :cond_33
    const-wide/32 v10, 0x45414333

    cmp-long v7, v4, v10

    if-nez v7, :cond_3b

    goto :goto_5a

    :cond_3b
    const-wide/32 v9, 0x41432d34

    cmp-long v7, v4, v9

    if-nez v7, :cond_45

    :goto_42
    const/16 v3, 0xac

    goto :goto_aa

    :cond_45
    const-wide/32 v7, 0x48455643

    cmp-long v9, v4, v7

    if-nez v9, :cond_aa

    const/16 v3, 0x24

    goto :goto_aa

    :cond_4f
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_56

    :goto_53
    const/16 v3, 0x81

    goto :goto_aa

    :cond_56
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_5d

    :goto_5a
    const/16 v3, 0x87

    goto :goto_aa

    :cond_5d
    const/16 v5, 0x7f

    if-ne v4, v5, :cond_6a

    .line 673
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_aa

    goto :goto_42

    :cond_6a
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_71

    const/16 v3, 0x8a

    goto :goto_aa

    :cond_71
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_7f

    .line 681
    invoke-virtual {p1, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_aa

    :cond_7f
    if-ne v4, v7, :cond_aa

    .line 685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 686
    :goto_86
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v6, :cond_a8

    .line 687
    invoke-virtual {p1, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    const/4 v5, 0x4

    new-array v9, v5, [B

    const/4 v10, 0x0

    .line 690
    invoke-virtual {p1, v9, v10, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 691
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v5, v3, v4, v9}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_a8
    const/16 v3, 0x59

    .line 696
    :cond_aa
    :goto_aa
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_9

    .line 698
    :cond_b4
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 699
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 700
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v3, v1, v2, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v4
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionData"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    return-void

    .line 537
    :cond_c
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_46

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v2

    if-eq v2, v3, :cond_46

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v2

    if-ne v2, v5, :cond_27

    goto :goto_46

    .line 540
    :cond_27
    new-instance v2, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    .line 541
    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    .line 542
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 538
    :cond_46
    :goto_46
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 546
    :goto_52
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/4 v7, 0x3

    .line 552
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 554
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v8, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 556
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v8, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 557
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v9

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$402(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I

    .line 560
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v8, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 561
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 562
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 565
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 567
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_c7

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v8

    if-nez v8, :cond_c7

    .line 570
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    sget-object v14, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v15, 0x0

    invoke-direct {v8, v13, v15, v15, v14}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 571
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v14}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$600(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    move-result-object v15

    invoke-interface {v15, v13, v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v8

    invoke-static {v14, v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$502(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    .line 572
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v8

    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v14}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v14

    new-instance v15, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v15, v6, v13, v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v8, v2, v14, v15}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 576
    :cond_c7
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 577
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    :goto_d5
    if-lez v8, :cond_15a

    .line 580
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 581
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 582
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v15, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 583
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v15, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 584
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v7, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 585
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 586
    invoke-direct {v0, v1, v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v9

    const/4 v10, 0x6

    if-ne v14, v10, :cond_104

    .line 588
    iget v14, v9, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    :cond_104
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    .line 592
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v7

    if-ne v7, v3, :cond_111

    move v7, v14

    goto :goto_112

    :cond_111
    move v7, v15

    .line 593
    :goto_112
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$800(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_11f

    goto :goto_154

    .line 597
    :cond_11f
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v10

    if-ne v10, v3, :cond_130

    if-ne v14, v13, :cond_130

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v9}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v9

    goto :goto_13a

    .line 598
    :cond_130
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$600(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    move-result-object v10

    invoke-interface {v10, v14, v9}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v9

    .line 599
    :goto_13a
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v10

    if-ne v10, v3, :cond_14a

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 600
    invoke-virtual {v10, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ge v15, v10, :cond_154

    .line 601
    :cond_14a
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_154
    :goto_154
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_d5

    .line 606
    :cond_15a
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_161
    if-ge v7, v1, :cond_1ad

    .line 608
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 609
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 610
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$800(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 611
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$900(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 612
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    if-eqz v10, :cond_1aa

    .line 614
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    move-result-object v11

    if-eq v10, v11, :cond_1a1

    .line 615
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v11

    new-instance v13, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v13, v6, v8, v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v10, v2, v11, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 618
    :cond_1a1
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_161

    .line 622
    :cond_1ad
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v1

    if-ne v1, v3, :cond_1d1

    .line 623
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$1000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Z

    move-result v1

    if-nez v1, :cond_206

    .line 624
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 625
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$102(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I

    .line 626
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1, v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$1002(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Z)Z

    goto :goto_206

    .line 629
    :cond_1d1
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 630
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v2

    if-ne v2, v5, :cond_1e5

    goto :goto_1ed

    :cond_1e5
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_1ed
    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$102(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I

    .line 631
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I

    move-result v1

    if-nez v1, :cond_206

    .line 632
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 633
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-static {v1, v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->access$1002(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Z)Z

    :cond_206
    :goto_206
    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestampAdjuster",
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    return-void
.end method
