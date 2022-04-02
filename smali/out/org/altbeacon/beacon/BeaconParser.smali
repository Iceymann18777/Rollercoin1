.class public Lorg/altbeacon/beacon/BeaconParser;
.super Ljava/lang/Object;
.source "BeaconParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;
    }
.end annotation


# static fields
.field private static final D_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_ARRAY:[C

.field private static final I_PATTERN:Ljava/util/regex/Pattern;

.field private static final M_PATTERN:Ljava/util/regex/Pattern;

.field private static final P_PATTERN:Ljava/util/regex/Pattern;

.field private static final S_PATTERN:Ljava/util/regex/Pattern;

.field private static final X_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected extraParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllowPduOverflow:Ljava/lang/Boolean;

.field protected mBeaconLayout:Ljava/lang/String;

.field protected mDBmCorrection:Ljava/lang/Integer;

.field protected final mDataEndOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDataLittleEndianFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDataStartOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtraFrame:Ljava/lang/Boolean;

.field protected mHardwareAssistManufacturers:[I

.field protected mIdentifier:Ljava/lang/String;

.field protected final mIdentifierEndOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIdentifierLittleEndianFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIdentifierStartOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIdentifierVariableLengthFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutSize:Ljava/lang/Integer;

.field private mMatchingBeaconTypeCode:Ljava/lang/Long;

.field protected mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

.field protected mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

.field protected mPowerEndOffset:Ljava/lang/Integer;

.field protected mPowerStartOffset:Ljava/lang/Integer;

.field protected mServiceUuid:Ljava/lang/Long;

.field protected mServiceUuidEndOffset:Ljava/lang/Integer;

.field protected mServiceUuidStartOffset:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "i\\:(\\d+)\\-(\\d+)([blv]*)?"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->I_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "m\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->M_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "s\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->S_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "d\\:(\\d+)\\-(\\d+)([bl]*)?"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->D_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "p\\:(\\d+)\\-(\\d+)\\:?([\\-\\d]+)?"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->P_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "x"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->X_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 53
    fill-array-data v0, :array_3a

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    return-void

    :array_3a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    const/4 v0, 0x1

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4c

    aput v2, v0, v1

    .line 79
    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    return-void
.end method

.method private byteArrayToFormattedString([BIIZ)Ljava/lang/String;
    .registers 14

    sub-int/2addr p3, p2

    add-int/lit8 v0, p3, 0x1

    .line 854
    new-array v1, v0, [B

    const/4 v2, 0x0

    if-eqz p4, :cond_17

    const/4 p4, 0x0

    :goto_9
    if-gt p4, p3, :cond_23

    add-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p4

    .line 857
    aget-byte v3, p1, v3

    aput-byte v3, v1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_9

    :cond_17
    const/4 p4, 0x0

    :goto_18
    if-gt p4, p3, :cond_23

    add-int v3, p2, p4

    .line 862
    aget-byte v3, p1, v3

    aput-byte v3, v1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_18

    :cond_23
    const/4 p1, 0x5

    if-ge v0, p1, :cond_4d

    const-wide/16 p1, 0x0

    :goto_28
    if-ge v2, v0, :cond_48

    sub-int p3, v0, v2

    add-int/lit8 p3, p3, -0x1

    .line 872
    aget-byte p3, v1, p3

    and-int/lit16 p3, p3, 0xff

    int-to-long p3, p3

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    int-to-double v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 873
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long p3, p3, v3

    add-long/2addr p1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 877
    :cond_48
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 881
    :cond_4d
    invoke-static {v1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    if-ne v0, p2, :cond_98

    .line 885
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x8

    .line 886
    invoke-virtual {p1, v2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    .line 887
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 888
    invoke-virtual {p1, p4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x14

    .line 892
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    .line 894
    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 897
    :cond_98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .registers 7

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 846
    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 847
    aget-byte v4, p1, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 848
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 850
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private byteArraysMatch([BI[B)Z
    .registers 9

    .line 832
    array-length v0, p3

    .line 833
    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_7

    return v2

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    add-int v3, p2, v1

    .line 837
    aget-byte v3, p1, v3

    aget-byte v4, p3, v1

    if-eq v3, v4, :cond_13

    return v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method protected static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 775
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 777
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 778
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 779
    sget-object v4, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 780
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 782
    :cond_22
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private calculateLayoutSize()I
    .registers 4

    .line 808
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 809
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_9

    move v1, v2

    goto :goto_9

    .line 815
    :cond_1d
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 816
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_25

    move v1, v2

    goto :goto_25

    .line 822
    :cond_39
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_49

    .line 823
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 825
    :cond_49
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_59

    .line 826
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_59
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private ensureMaxSize([BI)[B
    .registers 4

    .line 902
    array-length v0, p1

    if-lt v0, p2, :cond_4

    return-object p1

    .line 905
    :cond_4
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public static longToByteArray(JI)[B
    .registers 4

    const/4 v0, 0x1

    .line 792
    invoke-static {p0, p1, p2, v0}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static longToByteArray(JIZ)[B
    .registers 11

    .line 796
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_22

    if-eqz p3, :cond_9

    move v2, v1

    goto :goto_d

    :cond_9
    sub-int v2, p2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_d
    const-wide/16 v3, 0xff

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    shl-long/2addr v3, v2

    int-to-long v5, v2

    and-long/2addr v3, p0

    long-to-int v2, v5

    shr-long v2, v3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 802
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_22
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 941
    :try_start_0
    check-cast p1, Lorg/altbeacon/beacon/BeaconParser;

    .line 942
    iget-object v0, p1, Lorg/altbeacon/beacon/BeaconParser;->mBeaconLayout:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lorg/altbeacon/beacon/BeaconParser;->mBeaconLayout:Ljava/lang/String;

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mBeaconLayout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 943
    iget-object v0, p1, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object p1, p1, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_1c} :catch_20

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :catch_20
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public fromScanData([BILandroid/bluetooth/BluetoothDevice;)Lorg/altbeacon/beacon/Beacon;
    .registers 5

    .line 418
    new-instance v0, Lorg/altbeacon/beacon/Beacon;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/altbeacon/beacon/BeaconParser;->fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;

    move-result-object p1

    return-object p1
.end method

.method protected fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 422
    new-instance v2, Lorg/altbeacon/bluetooth/BleAdvertisement;

    invoke-direct {v2, v1}, Lorg/altbeacon/bluetooth/BleAdvertisement;-><init>([B)V

    .line 426
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-virtual {v2}, Lorg/altbeacon/bluetooth/BleAdvertisement;->getPdus()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x2

    const-string v11, "BeaconParser"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v5, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/altbeacon/bluetooth/Pdu;

    .line 430
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v14

    const/16 v15, 0x16

    if-eq v14, v15, :cond_56

    .line 431
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v14

    if-ne v14, v8, :cond_3e

    goto :goto_56

    .line 439
    :cond_3e
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1b

    new-array v6, v12, [Ljava/lang/Object;

    .line 440
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v13

    const-string v5, "Ignoring pdu type %02X"

    invoke-static {v11, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    .line 433
    :cond_56
    :goto_56
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_89

    new-array v2, v7, [Ljava/lang/Object;

    .line 434
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getType()B

    move-result v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v2, v13

    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v12

    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v9

    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v6

    const-string v14, "Processing pdu type %02X: %s with startIndex: %d, endIndex: %d"

    invoke-static {v11, v14, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_89

    :cond_88
    const/4 v5, 0x0

    :cond_89
    :goto_89
    if-nez v5, :cond_9e

    .line 445
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_98

    new-array v2, v13, [Ljava/lang/Object;

    const-string v5, "No PDUs to process in this packet."

    .line 446
    invoke-static {v11, v5, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_98
    move-object/from16 v2, p4

    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3b1

    .line 452
    :cond_9e
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v2, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v10, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v2, v10

    add-int/2addr v2, v12

    invoke-static {v14, v15, v2}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JI)[B

    move-result-object v2

    .line 453
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_d9

    .line 454
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v10, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v10, v8

    add-int/2addr v10, v12

    invoke-static {v14, v15, v10, v13}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JIZ)[B

    move-result-object v8

    goto :goto_da

    :cond_d9
    const/4 v8, 0x0

    .line 456
    :goto_da
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getStartIndex()I

    move-result v10

    .line 459
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v14

    if-nez v14, :cond_f3

    .line 460
    iget-object v14, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v10

    invoke-direct {v0, v1, v14, v2}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[B)Z

    move-result v14

    if-eqz v14, :cond_10e

    :goto_f1
    const/4 v14, 0x1

    goto :goto_10f

    .line 464
    :cond_f3
    iget-object v14, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v10

    invoke-direct {v0, v1, v14, v8}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[B)Z

    move-result v14

    if-eqz v14, :cond_10e

    iget-object v14, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    .line 465
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v10

    invoke-direct {v0, v1, v14, v2}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[B)Z

    move-result v14

    if-eqz v14, :cond_10e

    goto :goto_f1

    :cond_10e
    const/4 v14, 0x0

    :goto_10f
    if-nez v14, :cond_16e

    .line 472
    invoke-virtual/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v15

    if-nez v15, :cond_131

    .line 473
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_16b

    new-array v6, v9, [Ljava/lang/Object;

    .line 475
    invoke-direct {v0, v2}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v13

    .line 476
    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v12

    const-string v2, "This is not a matching Beacon advertisement. (Was expecting %s.  The bytes I see are: %s"

    .line 474
    invoke-static {v11, v2, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16b

    .line 480
    :cond_131
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_16b

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    .line 483
    invoke-direct {v0, v8}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v13

    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    .line 484
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v12

    .line 485
    invoke-direct {v0, v2}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v9

    iget-object v2, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    .line 486
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v6

    .line 487
    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v7

    const-string v2, "This is not a matching Beacon advertisement. Was expecting %s at offset %d and %s at offset %d.  The bytes I see are: %s"

    .line 481
    invoke-static {v11, v2, v15}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16b
    :goto_16b
    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_191

    .line 493
    :cond_16e
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_18e

    new-array v6, v12, [Ljava/lang/Object;

    .line 495
    invoke-direct {v0, v2}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v13

    const-string v2, "This is a recognized beacon advertisement -- %s seen"

    .line 494
    invoke-static {v11, v2, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v12, [Ljava/lang/Object;

    .line 496
    invoke-static/range {p1 .. p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v13

    const-string v6, "Bytes are: %s"

    invoke-static {v11, v6, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18e
    move-object/from16 v2, p4

    const/4 v6, 0x0

    :goto_191
    if-eqz v14, :cond_3b1

    .line 501
    array-length v7, v1

    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v10

    if-gt v7, v8, :cond_1dc

    iget-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1dc

    .line 505
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d1

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expanding buffer because it is too short to parse: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", needed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v11, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :cond_1d1
    iget-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v10

    invoke-direct {v0, v1, v7}, Lorg/altbeacon/beacon/BeaconParser;->ensureMaxSize([BI)[B

    move-result-object v1

    :cond_1dc
    const/4 v7, 0x0

    .line 510
    :goto_1dd
    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, " because PDU is too short.  endIndex: "

    const-string v14, " PDU endIndex: "

    if-ge v7, v8, :cond_2b3

    .line 511
    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v10

    .line 513
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v15

    if-le v8, v15, :cond_251

    iget-object v15, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_251

    .line 514
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_22b

    .line 515
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Need to truncate identifier by "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v14

    sub-int/2addr v8, v14

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v11, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    :cond_22b
    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v9

    add-int/2addr v9, v12

    iget-object v14, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {v1, v8, v9, v14}, Lorg/altbeacon/beacon/Identifier;->fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;

    move-result-object v8

    .line 520
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2af

    .line 522
    :cond_251
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v15

    if-le v8, v15, :cond_28d

    iget-object v15, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_28d

    .line 524
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_28b

    .line 525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot parse identifier "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v11, v6, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28b
    const/4 v6, 0x1

    goto :goto_2af

    .line 529
    :cond_28d
    iget-object v9, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    iget-object v14, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {v1, v9, v8, v14}, Lorg/altbeacon/beacon/Identifier;->fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;

    move-result-object v8

    .line 530
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2af
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1dd

    :cond_2b3
    const/4 v7, 0x0

    .line 533
    :goto_2b4
    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_343

    .line 534
    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v10

    .line 535
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v15

    if-le v8, v15, :cond_315

    iget-object v15, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_315

    .line 536
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_308

    .line 537
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse data field "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".  Setting value to 0"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v11, v8, v12}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :cond_308
    new-instance v8, Ljava/lang/Long;

    move-object/from16 p1, v14

    const-wide/16 v13, 0x0

    invoke-direct {v8, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33b

    :cond_315
    move-object/from16 p1, v14

    .line 542
    iget-object v13, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v10

    iget-object v14, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-direct {v0, v1, v13, v8, v14}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v8

    .line 543
    invoke-static {v8}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_33b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, p1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_2b4

    :cond_343
    move-object/from16 p1, v14

    .line 547
    iget-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    if-eqz v7, :cond_3b1

    .line 548
    iget-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v10

    .line 551
    :try_start_350
    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v8

    if-le v7, v8, :cond_389

    iget-object v8, v0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_35c
    .catch Ljava/lang/NumberFormatException; {:try_start_350 .. :try_end_35c} :catch_3b0
    .catch Ljava/lang/NullPointerException; {:try_start_350 .. :try_end_35c} :catch_3b0

    if-nez v8, :cond_389

    .line 553
    :try_start_35e
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_387

    .line 554
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse power field because PDU is too short.  endIndex: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/altbeacon/bluetooth/Pdu;->getEndIndex()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v11, v5, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_387
    .catch Ljava/lang/NumberFormatException; {:try_start_35e .. :try_end_387} :catch_387
    .catch Ljava/lang/NullPointerException; {:try_start_35e .. :try_end_387} :catch_387

    :catch_387
    :cond_387
    const/4 v6, 0x1

    goto :goto_3b1

    .line 558
    :cond_389
    :try_start_389
    iget-object v5, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    iget-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v10

    const/4 v8, 0x0

    invoke-direct {v0, v1, v5, v7, v8}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v5

    .line 559
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mDBmCorrection:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v5, v7

    const/16 v7, 0x7f

    if-le v5, v7, :cond_3ad

    add-int/lit16 v5, v5, -0x100

    .line 564
    :cond_3ad
    iput v5, v2, Lorg/altbeacon/beacon/Beacon;->mTxPower:I
    :try_end_3af
    .catch Ljava/lang/NumberFormatException; {:try_start_389 .. :try_end_3af} :catch_3b0
    .catch Ljava/lang/NullPointerException; {:try_start_389 .. :try_end_3af} :catch_3b0

    goto :goto_3b1

    :catch_3b0
    nop

    :cond_3b1
    :goto_3b1
    if-eqz v6, :cond_3b5

    const/4 v10, 0x0

    goto :goto_41e

    .line 582
    :cond_3b5
    iget-object v5, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    iget-object v6, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v10

    const/4 v7, 0x0

    invoke-direct {v0, v1, v5, v6, v7}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v5

    .line 583
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v10, 0x1

    const/4 v8, 0x1

    .line 587
    invoke-direct {v0, v1, v10, v6, v8}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_3e2

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3e4

    :cond_3e2
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 597
    :goto_3e4
    iput-object v3, v2, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 598
    iput-object v4, v2, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    move/from16 v3, p2

    .line 599
    iput v3, v2, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 600
    iput v5, v2, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 601
    iget-object v3, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    if-eqz v3, :cond_3fa

    .line 602
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    iput v4, v2, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    goto :goto_3fd

    :cond_3fa
    const/4 v3, -0x1

    .line 605
    iput v3, v2, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 608
    :goto_3fd
    iput-object v10, v2, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 609
    iput-object v6, v2, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 610
    iput v1, v2, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 611
    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    iput-object v1, v2, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    .line 612
    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_41a

    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_418

    goto :goto_41a

    :cond_418
    const/4 v12, 0x0

    goto :goto_41b

    :cond_41a
    :goto_41a
    const/4 v12, 0x1

    :goto_41b
    iput-boolean v12, v2, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    move-object v10, v2

    :goto_41e
    return-object v10
.end method

.method public getExtraDataParsers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHardwareAssistManufacturers()[I
    .registers 2

    .line 333
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .registers 2

    .line 765
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mBeaconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchingBeaconTypeCode()Ljava/lang/Long;
    .registers 2

    .line 363
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;

    return-object v0
.end method

.method public getMatchingBeaconTypeCodeEndOffset()I
    .registers 2

    .line 379
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatchingBeaconTypeCodeStartOffset()I
    .registers 2

    .line 371
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getServiceUuid()Ljava/lang/Long;
    .registers 2

    .line 388
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    .line 910
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mDBmCorrection:Ljava/lang/Integer;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mAllowPduOverflow:Ljava/lang/Boolean;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifier:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->extraParsers:Ljava/util/List;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 170
    iput-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mBeaconLayout:Ljava/lang/String;

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing beacon layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BeaconParser"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ","

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 174
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    .line 176
    array-length v4, v1

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v4, :cond_278

    aget-object v6, v1, v5

    .line 179
    sget-object v7, Lorg/altbeacon/beacon/BeaconParser;->I_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 180
    :goto_37
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const-string v11, "l"

    const-string v12, "Cannot parse integer byte offset in term: "

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-eqz v10, :cond_a0

    .line 183
    :try_start_43
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 184
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 185
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 186
    iget-object v13, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "v"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 188
    iget-object v13, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierVariableLengthFlags:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v11, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v9, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_89} :catch_8b

    const/4 v9, 0x1

    goto :goto_37

    .line 192
    :catch_8b
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_a0
    sget-object v7, Lorg/altbeacon/beacon/BeaconParser;->D_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 196
    :goto_a6
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 199
    :try_start_ac
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 200
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 201
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 202
    iget-object v2, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v2, v0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_df} :catch_e2

    const/4 v2, 0x0

    const/4 v9, 0x1

    goto :goto_a6

    .line 206
    :catch_e2
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_f7
    sget-object v2, Lorg/altbeacon/beacon/BeaconParser;->P_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 210
    :goto_fd
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_14e

    .line 213
    :try_start_103
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 214
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 216
    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_122

    .line 217
    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_123

    :cond_122
    const/4 v10, 0x0

    .line 219
    :goto_123
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v0, Lorg/altbeacon/beacon/BeaconParser;->mDBmCorrection:Ljava/lang/Integer;

    .line 220
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    .line 221
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;
    :try_end_135
    .catch Ljava/lang/NumberFormatException; {:try_start_103 .. :try_end_135} :catch_137

    const/4 v9, 0x1

    goto :goto_fd

    .line 223
    :catch_137
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse integer power byte offset in term: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_14e
    sget-object v2, Lorg/altbeacon/beacon/BeaconParser;->M_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 227
    :goto_154
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    const-string v10, "0x"

    const-string v11, " in term: "

    if-eqz v7, :cond_1c7

    .line 230
    :try_start_15e
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 231
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 232
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    .line 233
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;
    :try_end_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_15e .. :try_end_17a} :catch_1b2

    .line 237
    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    :try_start_17e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;
    :try_end_193
    .catch Ljava/lang/NumberFormatException; {:try_start_17e .. :try_end_193} :catch_195

    const/4 v9, 0x1

    goto :goto_154

    .line 242
    :catch_195
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse beacon type code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :catch_1b2
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_1c7
    sget-object v2, Lorg/altbeacon/beacon/BeaconParser;->S_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 246
    :goto_1cd
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_23c

    .line 249
    :try_start_1d3
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 250
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 251
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    .line 252
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;
    :try_end_1ef
    .catch Ljava/lang/NumberFormatException; {:try_start_1d3 .. :try_end_1ef} :catch_227

    .line 256
    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 258
    :try_start_1f3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;
    :try_end_208
    .catch Ljava/lang/NumberFormatException; {:try_start_1f3 .. :try_end_208} :catch_20a

    const/4 v9, 0x1

    goto :goto_1cd

    .line 261
    :catch_20a
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse serviceUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :catch_227
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_23c
    sget-object v2, Lorg/altbeacon/beacon/BeaconParser;->X_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 265
    :goto_242
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_250

    .line 267
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    const/4 v9, 0x1

    goto :goto_242

    :cond_250
    if-eqz v9, :cond_257

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2b

    :cond_257
    new-array v1, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const-string v2, "cannot parse term %s"

    .line 271
    invoke-static {v3, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse beacon layout term: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_278
    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mExtraFrame:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2a9

    .line 277
    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2a1

    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2a1

    .line 280
    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_299

    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_299

    goto :goto_2a9

    .line 281
    :cond_299
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string v2, "You must supply a power byte offset with a prefix of \'p\'"

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_2a1
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string v2, "You must supply at least one identifier offset with a prefix of \'i\'"

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_2a9
    :goto_2a9
    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_2bc

    iget-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_2bc

    .line 287
    invoke-direct/range {p0 .. p0}, Lorg/altbeacon/beacon/BeaconParser;->calculateLayoutSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/altbeacon/beacon/BeaconParser;->mLayoutSize:Ljava/lang/Integer;

    return-object v0

    .line 285
    :cond_2bc
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string v2, "You must supply a matching beacon type expression with a prefix of \'m\'"

    invoke-direct {v1, v2}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    goto :goto_2c5

    :goto_2c4
    throw v1

    :goto_2c5
    goto :goto_2c4
.end method
