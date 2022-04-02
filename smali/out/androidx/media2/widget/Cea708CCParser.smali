.class Landroidx/media2/widget/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/Cea708CCParser$CaptionWindow;,
        Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;,
        Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;,
        Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;,
        Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;,
        Landroidx/media2/widget/Cea708CCParser$CaptionEvent;,
        Landroidx/media2/widget/Cea708CCParser$CaptionColor;,
        Landroidx/media2/widget/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCommand:I

.field private mListener:Landroidx/media2/widget/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "\u266b"

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroidx/media2/widget/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/Cea708CCParser$DisplayListener;)V
    .registers 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    .line 106
    new-instance v0, Landroidx/media2/widget/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroidx/media2/widget/Cea708CCParser$1;-><init>(Landroidx/media2/widget/Cea708CCParser;)V

    iput-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mListener:Landroidx/media2/widget/Cea708CCParser$DisplayListener;

    if-eqz p1, :cond_18

    .line 150
    iput-object p1, p0, Landroidx/media2/widget/Cea708CCParser;->mListener:Landroidx/media2/widget/Cea708CCParser$DisplayListener;

    :cond_18
    return-void
.end method

.method private emitCaptionBuffer()V
    .registers 5

    .line 165
    iget-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 166
    iget-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mListener:Landroidx/media2/widget/Cea708CCParser$DisplayListener;

    new-instance v1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/media2/widget/Cea708CCParser$DisplayListener;->emitEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    .line 167
    iget-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1f
    return-void
.end method

.method private emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V
    .registers 3

    .line 160
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionBuffer()V

    .line 161
    iget-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mListener:Landroidx/media2/widget/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroidx/media2/widget/Cea708CCParser$DisplayListener;->emitEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    return-void
.end method

.method private parseC0([BI)I
    .registers 6

    .line 225
    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_39

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_39

    if-ne v0, v1, :cond_36

    .line 231
    :try_start_c
    aget-byte v0, p1, p2

    if-nez v0, :cond_1b

    .line 232
    iget-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    aget-byte p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 234
    :cond_1b
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v1, "EUC-KR"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 235
    iget-object p1, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception p1

    const-string v0, "Cea708CCParser"

    const-string v1, "P16 Code - Could not find supported encoding"

    .line 238
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    add-int/lit8 p2, p2, 0x2

    goto :goto_93

    .line 242
    :cond_39
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_46

    const/16 v0, 0x17

    if-gt p1, v0, :cond_46

    add-int/lit8 p2, p2, 0x1

    goto :goto_93

    .line 251
    :cond_46
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_86

    const/16 v0, 0x8

    if-eq p1, v0, :cond_78

    packed-switch p1, :pswitch_data_94

    goto :goto_93

    .line 267
    :pswitch_54
    new-instance v0, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_93

    .line 264
    :pswitch_62
    iget-object p1, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 261
    :pswitch_6a
    new-instance v0, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_93

    .line 258
    :cond_78
    new-instance v0, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_93

    .line 255
    :cond_86
    new-instance v0, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    :goto_93
    return p2

    :pswitch_data_94
    .packed-switch 0xc
        :pswitch_6a
        :pswitch_62
        :pswitch_54
    .end packed-switch
.end method

.method private parseC1([BI)I
    .registers 30

    move-object/from16 v0, p0

    .line 279
    iget v1, v0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0xf

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_24e

    :pswitch_15
    goto/16 :goto_24a

    :pswitch_17
    add-int/lit16 v14, v1, -0x98

    .line 495
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_21

    const/4 v15, 0x1

    goto :goto_22

    :cond_21
    const/4 v15, 0x0

    .line 496
    :goto_22
    aget-byte v1, p1, p2

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_2c

    const/16 v16, 0x1

    goto :goto_2e

    :cond_2c
    const/16 v16, 0x0

    .line 497
    :goto_2e
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    if-eqz v1, :cond_36

    const/16 v17, 0x1

    goto :goto_38

    :cond_36
    const/16 v17, 0x0

    .line 498
    :goto_38
    aget-byte v1, p1, p2

    and-int/lit8 v18, v1, 0x7

    add-int/lit8 v1, p2, 0x1

    .line 499
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_47

    const/16 v19, 0x1

    goto :goto_49

    :cond_47
    const/16 v19, 0x0

    .line 500
    :goto_49
    aget-byte v1, p1, v1

    and-int/lit8 v20, v1, 0x7f

    add-int/lit8 v1, p2, 0x2

    .line 501
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, p2, 0x3

    .line 502
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v22, v5, 0x4

    .line 503
    aget-byte v3, p1, v3

    and-int/lit8 v23, v3, 0xf

    add-int/lit8 v3, p2, 0x4

    .line 504
    aget-byte v3, p1, v3

    and-int/lit8 v24, v3, 0x3f

    add-int/lit8 v3, p2, 0x5

    .line 505
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v26, v4, 0x3

    .line 506
    aget-byte v3, p1, v3

    and-int/lit8 v25, v3, 0x7

    add-int/lit8 v3, p2, 0x6

    .line 508
    new-instance v4, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    new-instance v5, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;

    move-object v13, v5

    move/from16 v21, v1

    invoke-direct/range {v13 .. v26}, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v4, v2, v5}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_115

    .line 450
    :pswitch_85
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    .line 451
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    .line 452
    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    .line 453
    aget-byte v6, p1, p2

    and-int/2addr v6, v11

    .line 454
    new-instance v14, Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v1, v2, v3, v6}, Landroidx/media2/widget/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    .line 455
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xc0

    shr-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x2

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0x80

    shr-int/lit8 v5, v6, 0x5

    or-int v16, v2, v5

    .line 456
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    .line 457
    aget-byte v5, p1, v1

    and-int/2addr v5, v9

    shr-int/lit8 v5, v5, 0x2

    .line 458
    aget-byte v1, p1, v1

    and-int/2addr v1, v11

    .line 459
    new-instance v15, Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    invoke-direct {v15, v8, v2, v5, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 461
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_c8

    const/16 v17, 0x1

    goto :goto_ca

    :cond_c8
    const/16 v17, 0x0

    .line 462
    :goto_ca
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v18, v1, 0x4

    .line 463
    aget-byte v1, p1, v3

    and-int/2addr v1, v9

    shr-int/lit8 v19, v1, 0x2

    .line 464
    aget-byte v1, p1, v3

    and-int/lit8 v20, v1, 0x3

    add-int/lit8 v1, p2, 0x3

    .line 465
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v22, v2, 0x4

    .line 466
    aget-byte v2, p1, v1

    and-int/2addr v2, v9

    shr-int/lit8 v21, v2, 0x2

    .line 467
    aget-byte v1, p1, v1

    and-int/lit8 v23, v1, 0x3

    add-int/lit8 v1, p2, 0x4

    .line 469
    new-instance v2, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    new-instance v3, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;

    move-object v13, v3

    invoke-direct/range {v13 .. v23}, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;-><init>(Landroidx/media2/widget/Cea708CCParser$CaptionColor;Landroidx/media2/widget/Cea708CCParser$CaptionColor;IZIIIIII)V

    invoke-direct {v2, v4, v3}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_16b

    .line 436
    :pswitch_fb
    aget-byte v1, p1, p2

    and-int/2addr v1, v4

    add-int/lit8 v2, p2, 0x1

    .line 437
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, p2, 0x2

    .line 439
    new-instance v4, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    const/16 v5, 0xe

    new-instance v6, Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v6, v1, v2}, Landroidx/media2/widget/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    invoke-direct {v4, v5, v6}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    :goto_115
    move v2, v3

    goto/16 :goto_24c

    .line 405
    :pswitch_118
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    .line 406
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    .line 407
    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    .line 408
    aget-byte v4, p1, p2

    and-int/2addr v4, v11

    .line 409
    new-instance v5, Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    invoke-direct {v5, v1, v2, v3, v4}, Landroidx/media2/widget/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    .line 411
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xc0

    shr-int/2addr v2, v7

    .line 412
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x30

    shr-int/2addr v3, v10

    .line 413
    aget-byte v4, p1, v1

    and-int/2addr v4, v9

    shr-int/lit8 v4, v4, 0x2

    .line 414
    aget-byte v6, p1, v1

    and-int/2addr v6, v11

    .line 415
    new-instance v7, Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    invoke-direct {v7, v2, v3, v4, v6}, Landroidx/media2/widget/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v1, v12

    .line 417
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    .line 418
    aget-byte v3, p1, v1

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    .line 419
    aget-byte v4, p1, v1

    and-int/2addr v4, v11

    .line 420
    new-instance v6, Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    invoke-direct {v6, v8, v2, v3, v4}, Landroidx/media2/widget/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v1, v12

    .line 423
    new-instance v2, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xd

    new-instance v4, Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;

    invoke-direct {v4, v5, v7, v6}, Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;-><init>(Landroidx/media2/widget/Cea708CCParser$CaptionColor;Landroidx/media2/widget/Cea708CCParser$CaptionColor;Landroidx/media2/widget/Cea708CCParser$CaptionColor;)V

    invoke-direct {v2, v3, v4}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    :goto_16b
    move v2, v1

    goto/16 :goto_24c

    .line 383
    :pswitch_16e
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v16, v1, 0x4

    .line 384
    aget-byte v1, p1, p2

    and-int/lit8 v14, v1, 0x3

    .line 385
    aget-byte v1, p1, p2

    and-int/2addr v1, v9

    shr-int/lit8 v15, v1, 0x2

    add-int/lit8 v1, p2, 0x1

    .line 386
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_188

    const/16 v20, 0x1

    goto :goto_18a

    :cond_188
    const/16 v20, 0x0

    .line 387
    :goto_18a
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_193

    const/16 v19, 0x1

    goto :goto_195

    :cond_193
    const/16 v19, 0x0

    .line 388
    :goto_195
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x38

    shr-int/lit8 v18, v2, 0x3

    .line 389
    aget-byte v1, p1, v1

    and-int/lit8 v17, v1, 0x7

    add-int/lit8 v1, p2, 0x2

    .line 391
    new-instance v2, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    new-instance v3, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v2, v9, v3}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_16b

    .line 374
    :pswitch_1b0
    new-instance v1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_24a

    .line 365
    :pswitch_1bc
    new-instance v1, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_24a

    .line 354
    :pswitch_1c8
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 356
    new-instance v3, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_24c

    .line 343
    :pswitch_1dd
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 345
    new-instance v4, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_24c

    .line 332
    :pswitch_1f0
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 334
    new-instance v3, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v6, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_24c

    .line 321
    :pswitch_203
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 323
    new-instance v3, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v7, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_24c

    .line 310
    :pswitch_216
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 312
    new-instance v3, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_24c

    .line 299
    :pswitch_229
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    .line 301
    new-instance v3, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v10, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    goto :goto_24c

    :pswitch_23c
    add-int/lit8 v1, v1, -0x80

    .line 290
    new-instance v2, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v11, v1}, Landroidx/media2/widget/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionEvent(Landroidx/media2/widget/Cea708CCParser$CaptionEvent;)V

    :goto_24a
    move/from16 v2, p2

    :goto_24c
    return v2

    nop

    :pswitch_data_24e
    .packed-switch 0x80
        :pswitch_23c
        :pswitch_23c
        :pswitch_23c
        :pswitch_23c
        :pswitch_23c
        :pswitch_23c
        :pswitch_23c
        :pswitch_23c
        :pswitch_229
        :pswitch_216
        :pswitch_203
        :pswitch_1f0
        :pswitch_1dd
        :pswitch_1c8
        :pswitch_1bc
        :pswitch_1b0
        :pswitch_16e
        :pswitch_118
        :pswitch_fb
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_85
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private parseC2([BI)I
    .registers 4

    .line 578
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    if-ltz p1, :cond_8

    const/4 v0, 0x7

    if-gt p1, v0, :cond_8

    goto :goto_2e

    .line 581
    :cond_8
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_15

    const/16 v0, 0xf

    if-gt p1, v0, :cond_15

    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    .line 584
    :cond_15
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_22

    const/16 v0, 0x17

    if-gt p1, v0, :cond_22

    add-int/lit8 p2, p2, 0x2

    goto :goto_2e

    .line 587
    :cond_22
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2e

    add-int/lit8 p2, p2, 0x3

    :cond_2e
    :goto_2e
    return p2
.end method

.method private parseC3([BI)I
    .registers 4

    .line 598
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v0, 0x80

    if-lt p1, v0, :cond_d

    const/16 v0, 0x87

    if-gt p1, v0, :cond_d

    add-int/lit8 p2, p2, 0x4

    goto :goto_19

    .line 601
    :cond_d
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v0, 0x88

    if-lt p1, v0, :cond_19

    const/16 v0, 0x8f

    if-gt p1, v0, :cond_19

    add-int/lit8 p2, p2, 0x5

    :cond_19
    :goto_19
    return p2
.end method

.method private parseExt1([BI)I
    .registers 6

    .line 556
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    if-ltz v0, :cond_14

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_14

    .line 560
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseC2([BI)I

    move-result p2

    goto :goto_3e

    .line 561
    :cond_14
    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_23

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_23

    .line 563
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_3e

    .line 564
    :cond_23
    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_32

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_32

    .line 566
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_3e

    .line 567
    :cond_32
    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3e

    if-gt v0, v1, :cond_3e

    .line 569
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseG3([BI)I

    move-result p2

    :cond_3e
    :goto_3e
    return p2
.end method

.method private parseG0([BI)I
    .registers 4

    .line 535
    iget p1, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_e

    .line 537
    iget-object p1, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/media2/widget/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 540
    :cond_e
    iget-object v0, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_14
    return p2
.end method

.method private parseG1([BI)I
    .registers 4

    .line 549
    iget-object p1, p0, Landroidx/media2/widget/Cea708CCParser;->mBuilder:Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p2
.end method

.method private parseG2([BI)I
    .registers 3

    return p2
.end method

.method private parseG3([BI)I
    .registers 3

    return p2
.end method

.method private parseServiceBlockData([BI)I
    .registers 6

    .line 187
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_12

    .line 193
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    goto :goto_47

    :cond_12
    if-ltz v0, :cond_1d

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1d

    .line 199
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_47

    .line 200
    :cond_1d
    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2c

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2c

    .line 205
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_47

    .line 206
    :cond_2c
    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3b

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3b

    .line 211
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_47

    .line 212
    :cond_3b
    iget v0, p0, Landroidx/media2/widget/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_47

    if-gt v0, v1, :cond_47

    .line 217
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CCParser;->parseG1([BI)I

    move-result p2

    :cond_47
    :goto_47
    return p2
.end method


# virtual methods
.method public parse([B)V
    .registers 4

    const/4 v0, 0x0

    .line 176
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_9

    .line 177
    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_1

    .line 181
    :cond_9
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CCParser;->emitCaptionBuffer()V

    return-void
.end method
