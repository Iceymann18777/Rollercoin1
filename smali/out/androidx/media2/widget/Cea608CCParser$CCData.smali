.class Landroidx/media2/widget/Cea608CCParser$CCData;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCData"
.end annotation


# static fields
.field private static final sCtrlCodeMap:[Ljava/lang/String;

.field private static final sProtugueseCharMap:[Ljava/lang/String;

.field private static final sSpanishCharMap:[Ljava/lang/String;

.field private static final sSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static constructor <clinit>()V
    .registers 33

    const-string v0, "RCL"

    const-string v1, "BS"

    const-string v2, "AOF"

    const-string v3, "AON"

    const-string v4, "DER"

    const-string v5, "RU2"

    const-string v6, "RU3"

    const-string v7, "RU4"

    const-string v8, "FON"

    const-string v9, "RDC"

    const-string v10, "TR"

    const-string v11, "RTD"

    const-string v12, "EDM"

    const-string v13, "CR"

    const-string v14, "ENM"

    const-string v15, "EOC"

    .line 708
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/widget/Cea608CCParser$CCData;->sCtrlCodeMap:[Ljava/lang/String;

    const-string v1, "\u00ae"

    const-string v2, "\u00b0"

    const-string v3, "\u00bd"

    const-string v4, "\u00bf"

    const-string v5, "\u2122"

    const-string v6, "\u00a2"

    const-string v7, "\u00a3"

    const-string v8, "\u266a"

    const-string v9, "\u00e0"

    const-string v10, "\u00a0"

    const-string v11, "\u00e8"

    const-string v12, "\u00e2"

    const-string v13, "\u00ea"

    const-string v14, "\u00ee"

    const-string v15, "\u00f4"

    const-string v16, "\u00fb"

    .line 715
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/widget/Cea608CCParser$CCData;->sSpecialCharMap:[Ljava/lang/String;

    const-string v1, "\u00c1"

    const-string v2, "\u00c9"

    const-string v3, "\u00d3"

    const-string v4, "\u00da"

    const-string v5, "\u00dc"

    const-string v6, "\u00fc"

    const-string v7, "\u2018"

    const-string v8, "\u00a1"

    const-string v9, "*"

    const-string v10, "\'"

    const-string v11, "\u2014"

    const-string v12, "\u00a9"

    const-string v13, "\u2120"

    const-string v14, "\u2022"

    const-string v15, "\u201c"

    const-string v16, "\u201d"

    const-string v17, "\u00c0"

    const-string v18, "\u00c2"

    const-string v19, "\u00c7"

    const-string v20, "\u00c8"

    const-string v21, "\u00ca"

    const-string v22, "\u00cb"

    const-string v23, "\u00eb"

    const-string v24, "\u00ce"

    const-string v25, "\u00cf"

    const-string v26, "\u00ef"

    const-string v27, "\u00d4"

    const-string v28, "\u00d9"

    const-string v29, "\u00f9"

    const-string v30, "\u00db"

    const-string v31, "\u00ab"

    const-string v32, "\u00bb"

    .line 734
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/widget/Cea608CCParser$CCData;->sSpanishCharMap:[Ljava/lang/String;

    const-string v1, "\u00c3"

    const-string v2, "\u00e3"

    const-string v3, "\u00cd"

    const-string v4, "\u00cc"

    const-string v5, "\u00ec"

    const-string v6, "\u00d2"

    const-string v7, "\u00f2"

    const-string v8, "\u00d5"

    const-string v9, "\u00f5"

    const-string v10, "{"

    const-string v11, "}"

    const-string v12, "\\"

    const-string v13, "^"

    const-string v14, "_"

    const-string v15, "|"

    const-string v16, "~"

    const-string v17, "\u00c4"

    const-string v18, "\u00e4"

    const-string v19, "\u00d6"

    const-string v20, "\u00f6"

    const-string v21, "\u00df"

    const-string v22, "\u00a5"

    const-string v23, "\u00a4"

    const-string v24, "\u2502"

    const-string v25, "\u00c5"

    const-string v26, "\u00e5"

    const-string v27, "\u00d8"

    const-string v28, "\u00f8"

    const-string v29, "\u250c"

    const-string v30, "\u2510"

    const-string v31, "\u2514"

    const-string v32, "\u2518"

    .line 771
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/widget/Cea608CCParser$CCData;->sProtugueseCharMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(BBB)V
    .registers 4

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-byte p1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    .line 823
    iput-byte p2, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    .line 824
    iput-byte p3, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    return-void
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .registers 3

    .line 881
    sget-object v0, Landroidx/media2/widget/Cea608CCParser$CCData;->sCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x20

    aget-object p1, v0, p1

    return-object p1
.end method

.method static fromByteArray([B)[Landroidx/media2/widget/Cea608CCParser$CCData;
    .registers 8

    .line 809
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [Landroidx/media2/widget/Cea608CCParser$CCData;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1e

    .line 812
    new-instance v3, Landroidx/media2/widget/Cea608CCParser$CCData;

    mul-int/lit8 v4, v2, 0x3

    aget-byte v5, p0, v4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p0, v4

    invoke-direct {v3, v5, v6, v4}, Landroidx/media2/widget/Cea608CCParser$CCData;-><init>(BBB)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    return-object v1
.end method

.method private getBasicChar(B)C
    .registers 3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_28

    packed-switch p1, :pswitch_data_2e

    packed-switch p1, :pswitch_data_38

    int-to-char p1, p1

    goto :goto_2d

    :pswitch_10
    const/16 p1, 0x2588

    goto :goto_2d

    :pswitch_13
    const/16 p1, 0xf1

    goto :goto_2d

    :pswitch_16
    const/16 p1, 0xd1

    goto :goto_2d

    :pswitch_19
    const/16 p1, 0xf7

    goto :goto_2d

    :pswitch_1c
    const/16 p1, 0xe7

    goto :goto_2d

    :pswitch_1f
    const/16 p1, 0xfa

    goto :goto_2d

    :pswitch_22
    const/16 p1, 0xf3

    goto :goto_2d

    :pswitch_25
    const/16 p1, 0xed

    goto :goto_2d

    :cond_28
    const/16 p1, 0xe9

    goto :goto_2d

    :cond_2b
    const/16 p1, 0xe1

    :goto_2d
    return p1

    :pswitch_data_2e
    .packed-switch 0x5e
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x7b
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .registers 5

    .line 919
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2b

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2b

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 921
    iget-byte v3, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    invoke-direct {p0, v3}, Landroidx/media2/widget/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 922
    iget-byte v3, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    if-lt v3, v1, :cond_26

    if-gt v3, v2, :cond_26

    .line 923
    invoke-direct {p0, v3}, Landroidx/media2/widget/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 925
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method private getExtendedChar()Ljava/lang/String;
    .registers 5

    .line 941
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x3f

    const/16 v2, 0x20

    const/16 v3, 0x12

    if-eq v0, v3, :cond_e

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_1a

    :cond_e
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_1a

    if-gt v0, v1, :cond_1a

    .line 943
    sget-object v1, Landroidx/media2/widget/Cea608CCParser$CCData;->sSpanishCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0

    .line 944
    :cond_1a
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v3, 0x13

    if-eq v0, v3, :cond_24

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_30

    :cond_24
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_30

    if-gt v0, v1, :cond_30

    .line 946
    sget-object v1, Landroidx/media2/widget/Cea608CCParser$CCData;->sProtugueseCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .registers 4

    .line 932
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1a

    :cond_a
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1a

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1a

    .line 934
    sget-object v2, Landroidx/media2/widget/Cea608CCParser$CCData;->sSpecialCharMap:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBasicChar()Z
    .registers 3

    .line 885
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isSpecialChar()Z
    .registers 3

    .line 889
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19

    if-ne v0, v1, :cond_16

    :cond_a
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_16

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method getCtrlCode()I
    .registers 3

    .line 828
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_15

    :cond_a
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_15

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_15

    return v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method getDisplayText()Ljava/lang/String;
    .registers 2

    .line 867
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getBasicChars()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 870
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 873
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method getMidRow()Landroidx/media2/widget/Cea608CCParser$StyleCode;
    .registers 3

    .line 838
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19

    if-ne v0, v1, :cond_19

    :cond_a
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_19

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_19

    .line 840
    invoke-static {v0}, Landroidx/media2/widget/Cea608CCParser$StyleCode;->fromByte(B)Landroidx/media2/widget/Cea608CCParser$StyleCode;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method getPAC()Landroidx/media2/widget/Cea608CCParser$PAC;
    .registers 5

    .line 846
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_21

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_21

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_18

    and-int/lit8 v0, v1, 0x20

    if-nez v0, :cond_21

    .line 849
    :cond_18
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    invoke-static {v0, v1}, Landroidx/media2/widget/Cea608CCParser$PAC;->fromBytes(BB)Landroidx/media2/widget/Cea608CCParser$PAC;

    move-result-object v0

    return-object v0

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method getTabOffset()I
    .registers 3

    .line 855
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_17

    :cond_a
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_17

    const/16 v1, 0x23

    if-gt v0, v1, :cond_17

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method isDisplayableChar()Z
    .registers 2

    .line 863
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method isExtendedChar()Z
    .registers 3

    .line 894
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_12

    const/16 v1, 0x13

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1e

    :cond_12
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 956
    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v1, :cond_2f

    iget-byte v0, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    if-ge v0, v1, :cond_2f

    new-array v0, v2, [Ljava/lang/Object;

    .line 958
    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "[%d]Null: %02x %02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 961
    :cond_2f
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    new-array v1, v5, [Ljava/lang/Object;

    .line 963
    iget-byte v2, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "[%d]%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 966
    :cond_4d
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getTabOffset()I

    move-result v0

    if-lez v0, :cond_6a

    new-array v1, v5, [Ljava/lang/Object;

    .line 968
    iget-byte v2, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "[%d]Tab%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 971
    :cond_6a
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getPAC()Landroidx/media2/widget/Cea608CCParser$PAC;

    move-result-object v0

    if-eqz v0, :cond_87

    new-array v1, v5, [Ljava/lang/Object;

    .line 973
    iget-byte v2, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$PAC;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "[%d]PAC: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 976
    :cond_87
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getMidRow()Landroidx/media2/widget/Cea608CCParser$StyleCode;

    move-result-object v0

    if-eqz v0, :cond_a4

    new-array v1, v5, [Ljava/lang/Object;

    .line 978
    iget-byte v2, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "[%d]Mid-row: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 981
    :cond_a4
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-eqz v0, :cond_d2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 982
    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    .line 983
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "[%d]Displayable: %s (%02x %02x)"

    .line 982
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d2
    new-array v0, v2, [Ljava/lang/Object;

    .line 986
    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData1:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Landroidx/media2/widget/Cea608CCParser$CCData;->mData2:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "[%d]Invalid: %02x %02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
